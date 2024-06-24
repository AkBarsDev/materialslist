using B2H.MaterialsList.Core.ApprovalManagement.Interface;
using B2H.MaterialsList.Core.ApprovalManagement;
using B2H.MaterialsList.Core.Service;
using B2H.MaterialsList.Infrastructure.Repository.Interfaces;
using B2H.MaterialsList.Infrastructure.Repository;
using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using Serilog;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity;
using B2H.MaterialsList.Core.Models;
using Microsoft.Extensions.Options;

namespace B2H.MaterialsList.API
{
    internal static class HostingExtensions
    {
        public static WebApplication ConfigureServices(this WebApplicationBuilder builder)
        {
            builder.Services.AddCors();
            builder.Services.AddDbContextFactory<MaterialsListContext>(option => option.UseSqlServer(
                                                                        Environment.GetEnvironmentVariable("CONNECTINGSTRING") ??
																	    builder.Configuration.GetConnectionString("MSServerConnection") ??
                                                                        string.Empty));
			builder.Services.AddDbContextFactory<B2HMaterialsIdentityContext>(option => option.UseNpgsql(
                                                                        Environment.GetEnvironmentVariable("POSTGRESS_CONNECTINGSTRING")));

			builder.Services.AddIdentity<B2HUser, B2HRole>(options => options.SignIn.RequireConfirmedAccount = true)
		        .AddEntityFrameworkStores<B2HMaterialsIdentityContext>();
			builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
            .AddJwtBearer(x =>
            {
                x.RequireHttpsMetadata = true;
                x.SaveToken = true;
                x.TokenValidationParameters = new TokenValidationParameters
                {
                    ValidateIssuer = true,
                    ValidIssuer = AuthOptions.ISSUER,
                    ValidateAudience = true,
                    ValidAudience = AuthOptions.AUDIENCE,
                    ValidateIssuerSigningKey = true,
                    RequireExpirationTime = false,
                    ValidateLifetime = true,
                    ClockSkew = TimeSpan.Zero,
                    IssuerSigningKey = AuthOptions.GetSymmetricSecurityKey()
                };
            });

            builder.Services.AddAuthorization();
            builder.Services.AddScoped<IMaterialRepository, MaterialRepository>();
            builder.Services.AddScoped<ICategoryRepository, CategoryRepository>();
            builder.Services.AddScoped<IBreadcrumbAwareRepository, BreadcrumbAwareRepository>();
            builder.Services.AddScoped<IMaterialImageRepository, MaterialImageRepository>();
            builder.Services.AddScoped<IMaterialsService, MaterialsService>();
            builder.Services.AddScoped<ICategoryRepository, CategoryRepository>();
            builder.Services.AddControllers();
            //IMapper mapper = MappingConfig.RegisterMaps().CreateMapper();
            //builder.Services.AddSingleton(mapper);
            //builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
            // Add services to the container.
            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();
            // Serilog
			builder.Services.AddSerilog(Log.Logger);

			return builder.Build();
        }

        public static WebApplication ConfigurePipeline(this WebApplication app)
        {
            app.UseCors(builder => builder.AllowAnyOrigin());
            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
                app.UseSwagger();
                app.UseSwaggerUI();
            }
            app.UseSerilogRequestLogging();
            app.UseHttpsRedirection();

            app.UseAuthorization();
			app.MapControllers();
            return app;
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
}
