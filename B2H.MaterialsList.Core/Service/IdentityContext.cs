using B2H.MaterialsList.Core.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Serilog;

namespace B2H.MaterialsList.Core.Service
{
	public class IdentityContext
		: IdentityDbContext<
			B2HUser, B2HRole, string,
			IdentityUserClaim<string>, ApplicationUserRole, IdentityUserLogin<string>,
			IdentityRoleClaim<string>, IdentityUserToken<string>>
	{
		public IdentityContext(DbContextOptions<IdentityContext> options)
		: base(options)
		{
			try
			{
				Database.EnsureCreated();
				Database.Migrate();
			}
			catch (Exception ex)
			{
				Log.Write(Serilog.Events.LogEventLevel.Error, ex.Message);
			}
		}
		protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
			=> optionsBuilder.UseSqlServer(Environment.GetEnvironmentVariable("CONNECTINGSTRING")
											?? "Name=ConnectionStrings:MSServerConnection");
		protected override void OnModelCreating(ModelBuilder modelBuilder)
		{
			base.OnModelCreating(modelBuilder);

			modelBuilder.Entity<B2HUser>(b =>
			{
				// Each User can have many UserClaims
				b.HasMany(e => e.Claims)
					.WithOne(e => e.User)
					.HasForeignKey(uc => uc.UserId)
					.IsRequired();

				// Each User can have many UserLogins
				b.HasMany(e => e.Logins)
					.WithOne(e => e.User)
					.HasForeignKey(ul => ul.UserId)
					.IsRequired();

				// Each User can have many UserTokens
				b.HasMany(e => e.Tokens)
					.WithOne(e => e.User)
					.HasForeignKey(ut => ut.UserId)
					.IsRequired();

				// Each User can have many entries in the UserRole join table
				b.HasMany(e => e.UserRoles)
					.WithOne(e => e.User)
					.HasForeignKey(ur => ur.UserId)
					.IsRequired();
			});

			modelBuilder.Entity<B2HRole>(b =>
			{
				// Each Role can have many entries in the UserRole join table
				b.HasMany(e => e.UserRoles)
					.WithOne(e => e.Role)
					.HasForeignKey(ur => ur.RoleId)
					.IsRequired();

				// Each Role can have many associated RoleClaims
				b.HasMany(e => e.RoleClaims)
					.WithOne(e => e.Role)
					.HasForeignKey(rc => rc.RoleId)
					.IsRequired();
			});

			modelBuilder.Entity<IdentityUser>(b =>
			{
				b.ToTable("B2HUsers");
			});

			modelBuilder.Entity<IdentityUserClaim<string>>(b =>
			{
				b.ToTable("B2HUserClaims");
			});

			modelBuilder.Entity<IdentityUserLogin<string>>(b =>
			{
				b.ToTable("B2HUserLogins");
			});

			modelBuilder.Entity<IdentityUserToken<string>>(b =>
			{
				b.ToTable("B2HUserTokens");
			});

			modelBuilder.Entity<IdentityRole>(b =>
			{
				b.ToTable("B2HRoles");
			});

			modelBuilder.Entity<IdentityRoleClaim<string>>(b =>
			{
				b.ToTable("B2HRoleClaims");
			});

			modelBuilder.Entity<IdentityUserRole<string>>(b =>
			{
				b.ToTable("B2HUserRoles");
			});
		}
	}
}
