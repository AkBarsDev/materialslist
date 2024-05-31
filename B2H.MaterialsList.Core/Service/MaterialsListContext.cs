using System;
using System.Collections.Generic;
using B2H.MaterialsList.Core.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.VisualBasic;

namespace B2H.MaterialsList.Core.Service;

public partial class MaterialsListContext : DbContext
{
	public MaterialsListContext()
	{
	}

	public MaterialsListContext(DbContextOptions<MaterialsListContext> options)
		: base(options)
	{
		Database.Migrate();
	}

	public virtual DbSet<Category> CategoriesMaterials { get; set; }

	public virtual DbSet<Filebase> Filebases { get; set; }

	public virtual DbSet<HistoryUpdate> HistoryUpdates { get; set; }

	public virtual DbSet<Image> Images { get; set; }

	public virtual DbSet<Material> Materials { get; set; }
	public virtual DbSet<MaterialImage> MaterialImages { get; set; }

	protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
		=> optionsBuilder.UseSqlServer("Name=ConnectionStrings:MSServerConnection");

	protected override void OnModelCreating(ModelBuilder modelBuilder)
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
		});

		modelBuilder.Entity<HistoryUpdate>(entity =>
		{
			entity.HasKey(e => e.HistoryId);

			entity.ToTable("HistoryUpdate");

			entity.HasIndex(e => e.MaterialId, "IX_HistoryUpdate_MaterialId");

			entity.HasOne(d => d.Material).WithMany(p => p.HistoryUpdates).HasForeignKey(d => d.MaterialId);
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
		});

		modelBuilder.Entity((Action<Microsoft.EntityFrameworkCore.Metadata.Builders.EntityTypeBuilder<Material>>)(entity =>
		{
			entity.HasIndex(e => e.CategoryId, "IX_Materials_CategoryId");

			entity.HasIndex(e => e.FileId, "IX_Materials_FileId");

			entity.HasOne(d => d.Category).WithMany(p => p.Materials).HasForeignKey(d => d.CategoryId);

			entity.HasOne(d => d.File).WithMany(p => p.Materials).HasForeignKey(d => d.FileId);
		}));

		OnModelCreatingPartial(modelBuilder);
	}

	partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
