using Microsoft.EntityFrameworkCore;
using MaterialsList.Frontend.Services.IServices;
using MaterialsList.Frontend.Services;
using MaterialsList.Frontend;
using Microsoft.AspNetCore.HttpOverrides;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using System.Text;

namespace B2H.MaterialsList.API
{
    internal static class HostingExtensions
    {
        public static WebApplication ConfigureServices(this WebApplicationBuilder builder)
        {
            const string AuthSchema = "cookie";
            SD.MaterialsAPIBase = Environment.GetEnvironmentVariable("URL_MATERIALSAPI")
                ?? builder.Configuration.GetSection("ServiceUrls")["MaterialsAPI"] ?? string.Empty;
            SD.FilesAPIBase = Environment.GetEnvironmentVariable("URL_FILESAPI")
                ?? builder.Configuration.GetSection("ServiceUrls")["FilesAPI"] ?? string.Empty;
            builder.Services.AddControllersWithViews();
            builder.Services.AddHttpClient<IMaterialService, MaterialService>();

            builder.Services.AddControllersWithViews();

            // Add services to the container.2
            builder.Services.AddRazorPages();
            builder.Services.AddDistributedMemoryCache();   // add IDistributedMemoryCache
            builder.Services.AddSession();                  // add session services

            builder.Services.AddScoped<IMaterialService, MaterialService>();
            builder.Services.AddScoped<IAuthService, AuthService>();
            builder.Services.AddAuthentication(AuthSchema)
            .AddCookie(AuthSchema, (o) =>
            {
                o.LoginPath = "/Account/Login";
                o.LogoutPath = "/Account/Logout";
                o.AccessDeniedPath = "/Error";
            });

            builder.Services.AddAuthorization(builder =>
            {
                builder.AddPolicy("Admin", pb =>
                    {
                        pb.RequireAuthenticatedUser()
                        .AddAuthenticationSchemes(AuthSchema)
                        .RequireClaim("Role", "Admin");
                    });
                builder.AddPolicy("Resource department", pb =>
                {
                    pb.RequireAuthenticatedUser()
                    .AddAuthenticationSchemes(AuthSchema)
                    .RequireClaim("Role", "Resource");
                });
                builder.AddPolicy("Architect", pb =>
                {
                    pb.RequireAuthenticatedUser()
                    .AddAuthenticationSchemes(AuthSchema)
                    .RequireClaim("Role", "Architect");
                });
            });
            return builder.Build();
        }

        public static WebApplication ConfigurePipeline(this WebApplication app)
        {
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Error");
                // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
                app.UseHsts();
            }

            //app.UseHttpsRedirection();
            app.UseStaticFiles();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();

            app.UseForwardedHeaders(new ForwardedHeadersOptions
            {
                ForwardedHeaders = ForwardedHeaders.XForwardedFor | ForwardedHeaders.XForwardedProto
            });
            app.MapControllerRoute(
                name: "default",
                pattern: "{controller=Home}/{action=Main}");

            app.MapRazorPages();

            app.UseSession();

            return app;
        }
    }
    public class AuthOptions
    {
        public const string ISSUER = "MyAuthServer"; // издатель токена
        public const string AUDIENCE = "MyAuthClient"; // потребитель токена
        const string KEY = "8c69a9b04d4448a0aaea32c6a7a5c7d51d52897c0f24a65feeba95a38e9c2a62!123";   // ключ для шифрации
        public static SymmetricSecurityKey GetSymmetricSecurityKey() =>
            new SymmetricSecurityKey(Encoding.UTF8.GetBytes(KEY));
    }
}
