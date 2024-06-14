using B2H.MaterialsList.Core.Models;
using Microsoft.AspNetCore.DataProtection;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Serilog;

namespace B2H.MaterialsList.Core.Service
{
	public class B2HMaterialsIdentityContext
		: IdentityDbContext<
			B2HUser, B2HRole, string,
			B2HUserClaim, B2HUserRole, B2HUserLogin,
			B2HRoleClaim, B2HUserToken>
	{
		public B2HMaterialsIdentityContext(DbContextOptions<B2HMaterialsIdentityContext> options)
		: base(options)
		{
			try
			{
				//Database.EnsureCreated();
				Database.Migrate();
			}
			catch (Exception ex)
			{
				Log.Write(Serilog.Events.LogEventLevel.Error, ex.Message);
			}
		}
		public virtual DbSet<Category> CategoriesMaterials { get; set; }

		public virtual DbSet<Filebase> Filebase { get; set; }

		public virtual DbSet<HistoryUpdate> HistoryUpdates { get; set; }

		public virtual DbSet<Image> Images { get; set; }

		public virtual DbSet<Material> Materials { get; set; }

		public virtual DbSet<MaterialImage> MaterialImages { get; set; }

		//protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
			//=> optionsBuilder.UseNpgsql(Environment.GetEnvironmentVariable("POSTGRESS_CONNECTINGSTRING")
									//?? "Host=localhost;Port=1434;Database=B2HMaterials;Username=b2h;Password=temppgpwd4");
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

			modelBuilder.Entity<B2HUser>(b =>
			{
				b.ToTable("B2HUsers");
			});

			modelBuilder.Entity<B2HUserClaim>(b =>
			{
				b.ToTable("B2HUserClaims");
			});

			modelBuilder.Entity<B2HUserLogin>(b =>
			{
				b.ToTable("B2HUserLogins");
			});

			modelBuilder.Entity<B2HUserToken>(b =>
			{
				b.ToTable("B2HUserTokens");
			});

			modelBuilder.Entity<B2HRole>(b =>
			{
				b.ToTable("B2HRoles");
			});

			modelBuilder.Entity<B2HRoleClaim>(b =>
			{
				b.ToTable("B2HRoleClaims");
			});

			modelBuilder.Entity<B2HUserRole>(b =>
			{
				b.ToTable("B2HUserRoles");
			});
			OnModelCreatingPartial(modelBuilder);
		}
		
		private void OnModelCreatingPartial(ModelBuilder modelBuilder)
		{
			modelBuilder.Entity<Category>(entity =>
			{
				entity.HasKey(e => e.CategoryId);

				entity.ToTable("CategoriesMaterial");

				entity.HasIndex(e => e.ParentId, "IX_CategoriesMaterial_ParentId");

				entity.HasOne(d => d.Parent).WithMany(p => p.InverseParent).HasForeignKey(d => d.ParentId);
			});

			modelBuilder.Entity<Filebase>(entity =>
			{
				entity.HasKey(e => e.FileId);

				entity.Property(e => e.Path).HasDefaultValue("");
				entity.Property(e => e.Type).HasDefaultValue("");
				entity.Property(e => e.CreatedAt).HasConversion(
					src => src.Kind == DateTimeKind.Utc ? src : DateTime.SpecifyKind(src, DateTimeKind.Utc),
					dst => dst.Kind == DateTimeKind.Utc ? dst : DateTime.SpecifyKind(dst, DateTimeKind.Utc)
				);
				entity.Property(e => e.UpdatedAt).HasConversion(
					src => src.Kind == DateTimeKind.Utc ? src : DateTime.SpecifyKind(src, DateTimeKind.Utc),
					dst => dst.Kind == DateTimeKind.Utc ? dst : DateTime.SpecifyKind(dst, DateTimeKind.Utc)
				);
			});

			modelBuilder.Entity<HistoryUpdate>(entity =>
			{
				entity.HasKey(e => e.HistoryId);

				entity.ToTable("HistoryUpdate");

				entity.HasIndex(e => e.MaterialId, "IX_HistoryUpdate_MaterialId");

				entity.HasOne(d => d.Material).WithMany(p => p.HistoryUpdates).HasForeignKey(d => d.MaterialId);
				entity.Property(e => e.DataUpdate).HasConversion(
					src => src.Kind == DateTimeKind.Utc ? src : DateTime.SpecifyKind(src, DateTimeKind.Utc),
					dst => dst.Kind == DateTimeKind.Utc ? dst : DateTime.SpecifyKind(dst, DateTimeKind.Utc)
				);
			});

			//modelBuilder.Entity<MaterialImage>(entity =>
			//{
			//	entity.HasKey(mi => mi.MaterialImageId);
			//	entity.HasOne(mi => mi.Material)
			//	        .WithMany(m => m.MaterialImages)
			//	        .HasForeignKey(mi => mi.MaterialId);
			//	entity.HasOne(mi => mi.Material)
			//            .WithMany(m => m.MaterialImages)
			//            .HasForeignKey(mi => mi.MaterialId);
			//	entity.HasOne(mi => mi.Image)
			//	        .WithMany(i => i.MaterialImages)
			//	        .HasForeignKey(mi => mi.ImageId);
			//});
			modelBuilder.Entity<Image>(entity =>
			{
				entity.Property(e => e.Type).HasDefaultValue("");
				entity.Property(e => e.UpdatedAt).HasConversion(
					src => src.Kind == DateTimeKind.Utc ? src : DateTime.SpecifyKind(src, DateTimeKind.Utc),
					dst => dst.Kind == DateTimeKind.Utc ? dst : DateTime.SpecifyKind(dst, DateTimeKind.Utc)
				);
				entity.Property(e => e.CreatedAt).HasConversion(
					src => src.Kind == DateTimeKind.Utc ? src : DateTime.SpecifyKind(src, DateTimeKind.Utc),
					dst => dst.Kind == DateTimeKind.Utc ? dst : DateTime.SpecifyKind(dst, DateTimeKind.Utc)
				);
			});

			modelBuilder.Entity((Action<Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder<Material>>)(entity =>
			{
				entity.HasIndex(e => e.CategoryId, "IX_Materials_CategoryId");

				entity.HasIndex(e => e.FileId, "IX_Materials_FileId");

				entity.HasOne(d => d.Category).WithMany(p => p.Materials).HasForeignKey(d => d.CategoryId);

				entity.HasOne(d => d.File).WithMany(p => p.Materials).HasForeignKey(d => d.FileId);
				entity.Property(e => e.CreateAt).HasConversion(
					src => src.Kind == DateTimeKind.Utc ? src : DateTime.SpecifyKind(src, DateTimeKind.Utc),
					dst => dst.Kind == DateTimeKind.Utc ? dst : DateTime.SpecifyKind(dst, DateTimeKind.Utc)
				);
				entity.Property(e => e.UpdateAt).HasConversion(
					src => src.Kind == DateTimeKind.Utc ? src : DateTime.SpecifyKind(src, DateTimeKind.Utc),
					dst => dst.Kind == DateTimeKind.Utc ? dst : DateTime.SpecifyKind(dst, DateTimeKind.Utc)
				);
			}));

		}

	}
}
