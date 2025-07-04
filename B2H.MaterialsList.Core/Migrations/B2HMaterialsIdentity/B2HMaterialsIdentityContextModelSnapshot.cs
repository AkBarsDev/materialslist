﻿// <auto-generated />
using System;
using B2H.MaterialsList.Core.Service;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations.B2HMaterialsIdentity
{
    [DbContext(typeof(B2HMaterialsIdentityContext))]
    partial class B2HMaterialsIdentityContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "8.0.6")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            NpgsqlModelBuilderExtensions.UseIdentityByDefaultColumns(modelBuilder);

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HRole", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("text");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("text");

                    b.Property<string>("Name")
                        .HasMaxLength(256)
                        .HasColumnType("character varying(256)");

                    b.Property<string>("NormalizedName")
                        .HasMaxLength(256)
                        .HasColumnType("character varying(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedName")
                        .IsUnique()
                        .HasDatabaseName("RoleNameIndex");

                    b.ToTable("B2HRoles", (string)null);
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HRoleClaim", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("ClaimType")
                        .HasColumnType("text");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("text");

                    b.Property<string>("RoleId")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("Id");

                    b.HasIndex("RoleId");

                    b.ToTable("B2HRoleClaims", (string)null);
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HUser", b =>
                {
                    b.Property<string>("Id")
                        .HasColumnType("text");

                    b.Property<int>("AccessFailedCount")
                        .HasColumnType("integer");

                    b.Property<string>("ConcurrencyStamp")
                        .IsConcurrencyToken()
                        .HasColumnType("text");

                    b.Property<string>("Email")
                        .HasMaxLength(256)
                        .HasColumnType("character varying(256)");

                    b.Property<bool>("EmailConfirmed")
                        .HasColumnType("boolean");

                    b.Property<bool>("LockoutEnabled")
                        .HasColumnType("boolean");

                    b.Property<DateTimeOffset?>("LockoutEnd")
                        .HasColumnType("timestamp with time zone");

                    b.Property<string>("NormalizedEmail")
                        .HasMaxLength(256)
                        .HasColumnType("character varying(256)");

                    b.Property<string>("NormalizedUserName")
                        .HasMaxLength(256)
                        .HasColumnType("character varying(256)");

                    b.Property<string>("PasswordHash")
                        .HasColumnType("text");

                    b.Property<string>("PhoneNumber")
                        .HasColumnType("text");

                    b.Property<bool>("PhoneNumberConfirmed")
                        .HasColumnType("boolean");

                    b.Property<string>("SecurityStamp")
                        .HasColumnType("text");

                    b.Property<bool>("TwoFactorEnabled")
                        .HasColumnType("boolean");

                    b.Property<string>("UserName")
                        .HasMaxLength(256)
                        .HasColumnType("character varying(256)");

                    b.HasKey("Id");

                    b.HasIndex("NormalizedEmail")
                        .HasDatabaseName("EmailIndex");

                    b.HasIndex("NormalizedUserName")
                        .IsUnique()
                        .HasDatabaseName("UserNameIndex");

                    b.ToTable("B2HUsers", (string)null);
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HUserClaim", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("Id"));

                    b.Property<string>("ClaimType")
                        .HasColumnType("text");

                    b.Property<string>("ClaimValue")
                        .HasColumnType("text");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("B2HUserClaims", (string)null);
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HUserLogin", b =>
                {
                    b.Property<string>("LoginProvider")
                        .HasColumnType("text");

                    b.Property<string>("ProviderKey")
                        .HasColumnType("text");

                    b.Property<string>("ProviderDisplayName")
                        .HasColumnType("text");

                    b.Property<string>("UserId")
                        .IsRequired()
                        .HasColumnType("text");

                    b.HasKey("LoginProvider", "ProviderKey");

                    b.HasIndex("UserId");

                    b.ToTable("B2HUserLogins", (string)null);
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HUserRole", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("text");

                    b.Property<string>("RoleId")
                        .HasColumnType("text");

                    b.HasKey("UserId", "RoleId");

                    b.HasIndex("RoleId");

                    b.ToTable("B2HUserRoles", (string)null);
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HUserToken", b =>
                {
                    b.Property<string>("UserId")
                        .HasColumnType("text");

                    b.Property<string>("LoginProvider")
                        .HasColumnType("text");

                    b.Property<string>("Name")
                        .HasColumnType("text");

                    b.Property<string>("Value")
                        .HasColumnType("text");

                    b.HasKey("UserId", "LoginProvider", "Name");

                    b.ToTable("B2HUserTokens", (string)null);
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.Category", b =>
                {
                    b.Property<Guid>("CategoryId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<Guid?>("ParentId")
                        .HasColumnType("uuid");

                    b.HasKey("CategoryId");

                    b.HasIndex(new[] { "ParentId" }, "IX_CategoriesMaterial_ParentId");

                    b.ToTable("CategoriesMaterial", (string)null);
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.Filebase", b =>
                {
                    b.Property<int>("FileId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("FileId"));

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("timestamp with time zone");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Path")
                        .IsRequired()
                        .ValueGeneratedOnAdd()
                        .HasColumnType("text")
                        .HasDefaultValue("");

                    b.Property<string>("Type")
                        .IsRequired()
                        .ValueGeneratedOnAdd()
                        .HasColumnType("text")
                        .HasDefaultValue("");

                    b.Property<DateTime>("UpdatedAt")
                        .HasColumnType("timestamp with time zone");

                    b.HasKey("FileId");

                    b.ToTable("Filebase");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.HistoryUpdate", b =>
                {
                    b.Property<Guid>("HistoryId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<DateTime>("DataUpdate")
                        .HasColumnType("timestamp with time zone");

                    b.Property<Guid>("MaterialId")
                        .HasColumnType("uuid");

                    b.HasKey("HistoryId");

                    b.HasIndex(new[] { "MaterialId" }, "IX_HistoryUpdate_MaterialId");

                    b.ToTable("HistoryUpdate", (string)null);
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.Image", b =>
                {
                    b.Property<int>("ImageId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("ImageId"));

                    b.Property<DateTime>("CreatedAt")
                        .HasColumnType("timestamp with time zone");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Path")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Type")
                        .IsRequired()
                        .ValueGeneratedOnAdd()
                        .HasColumnType("text")
                        .HasDefaultValue("");

                    b.Property<DateTime>("UpdatedAt")
                        .HasColumnType("timestamp with time zone");

                    b.HasKey("ImageId");

                    b.ToTable("Images");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.Material", b =>
                {
                    b.Property<Guid>("MaterialId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("uuid");

                    b.Property<Guid?>("CategoryId")
                        .HasColumnType("uuid");

                    b.Property<DateTime>("CreateAt")
                        .HasColumnType("timestamp with time zone");

                    b.Property<int?>("FileId")
                        .HasColumnType("integer");

                    b.Property<string>("Gost")
                        .HasColumnType("text");

                    b.Property<int[]>("MaterialImagesIds")
                        .HasColumnType("integer[]");

                    b.Property<Guid?>("ModeratorId")
                        .HasColumnType("uuid");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasColumnType("text");

                    b.Property<string>("Specifications")
                        .HasColumnType("text");

                    b.Property<DateTime>("UpdateAt")
                        .HasColumnType("timestamp with time zone");

                    b.HasKey("MaterialId");

                    b.HasIndex(new[] { "CategoryId" }, "IX_Materials_CategoryId");

                    b.HasIndex(new[] { "FileId" }, "IX_Materials_FileId");

                    b.ToTable("Materials");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.MaterialImage", b =>
                {
                    b.Property<int>("MaterialImageId")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("integer");

                    NpgsqlPropertyBuilderExtensions.UseIdentityByDefaultColumn(b.Property<int>("MaterialImageId"));

                    b.Property<int>("ImageId")
                        .HasColumnType("integer");

                    b.Property<Guid?>("MaterialId")
                        .HasColumnType("uuid");

                    b.HasKey("MaterialImageId");

                    b.HasIndex("ImageId");

                    b.HasIndex("MaterialId");

                    b.ToTable("MaterialImages");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HRoleClaim", b =>
                {
                    b.HasOne("B2H.MaterialsList.Core.Models.B2HRole", "Role")
                        .WithMany("RoleClaims")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Role");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HUserClaim", b =>
                {
                    b.HasOne("B2H.MaterialsList.Core.Models.B2HUser", "User")
                        .WithMany("Claims")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("User");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HUserLogin", b =>
                {
                    b.HasOne("B2H.MaterialsList.Core.Models.B2HUser", "User")
                        .WithMany("Logins")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("User");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HUserRole", b =>
                {
                    b.HasOne("B2H.MaterialsList.Core.Models.B2HRole", "Role")
                        .WithMany("UserRoles")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("B2H.MaterialsList.Core.Models.B2HUser", "User")
                        .WithMany("UserRoles")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Role");

                    b.Navigation("User");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HUserToken", b =>
                {
                    b.HasOne("B2H.MaterialsList.Core.Models.B2HUser", "User")
                        .WithMany("Tokens")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("User");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.Category", b =>
                {
                    b.HasOne("B2H.MaterialsList.Core.Models.Category", "Parent")
                        .WithMany("InverseParent")
                        .HasForeignKey("ParentId");

                    b.Navigation("Parent");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.HistoryUpdate", b =>
                {
                    b.HasOne("B2H.MaterialsList.Core.Models.Material", "Material")
                        .WithMany("HistoryUpdates")
                        .HasForeignKey("MaterialId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.Navigation("Material");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.Material", b =>
                {
                    b.HasOne("B2H.MaterialsList.Core.Models.Category", "Category")
                        .WithMany("Materials")
                        .HasForeignKey("CategoryId");

                    b.HasOne("B2H.MaterialsList.Core.Models.Filebase", "File")
                        .WithMany("Materials")
                        .HasForeignKey("FileId");

                    b.Navigation("Category");

                    b.Navigation("File");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.MaterialImage", b =>
                {
                    b.HasOne("B2H.MaterialsList.Core.Models.Image", "Image")
                        .WithMany("MaterialImages")
                        .HasForeignKey("ImageId")
                        .OnDelete(DeleteBehavior.Cascade)
                        .IsRequired();

                    b.HasOne("B2H.MaterialsList.Core.Models.Material", "Material")
                        .WithMany("MaterialImages")
                        .HasForeignKey("MaterialId")
                        .OnDelete(DeleteBehavior.Restrict);

                    b.Navigation("Image");

                    b.Navigation("Material");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HRole", b =>
                {
                    b.Navigation("RoleClaims");

                    b.Navigation("UserRoles");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.B2HUser", b =>
                {
                    b.Navigation("Claims");

                    b.Navigation("Logins");

                    b.Navigation("Tokens");

                    b.Navigation("UserRoles");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.Category", b =>
                {
                    b.Navigation("InverseParent");

                    b.Navigation("Materials");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.Filebase", b =>
                {
                    b.Navigation("Materials");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.Image", b =>
                {
                    b.Navigation("MaterialImages");
                });

            modelBuilder.Entity("B2H.MaterialsList.Core.Models.Material", b =>
                {
                    b.Navigation("HistoryUpdates");

                    b.Navigation("MaterialImages");
                });
#pragma warning restore 612, 618
        }
    }
}
