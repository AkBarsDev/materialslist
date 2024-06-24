using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations
{
    /// <inheritdoc />
    public partial class MaterialsAddListIntImageFixfour : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Images_Materials_MaterialId",
                table: "Images");

            migrationBuilder.DropIndex(
                name: "IX_Materials_ImagesIds",
                table: "Materials");

            migrationBuilder.DropIndex(
                name: "IX_Images_MaterialId",
                table: "Images");

            migrationBuilder.DropColumn(
                name: "ImagesIds",
                table: "Materials");

            migrationBuilder.DropColumn(
                name: "MaterialId",
                table: "Images");

            migrationBuilder.AddColumn<string>(
                name: "MaterialImagesIds",
                table: "Materials",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "MaterialImage",
                columns: table => new
                {
                    MaterialImageId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ImageId = table.Column<int>(type: "int", nullable: false),
                    MaterialId = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_MaterialImage", x => x.MaterialImageId);
                    table.ForeignKey(
                        name: "FK_MaterialImage_Images_ImageId",
                        column: x => x.ImageId,
                        principalTable: "Images",
                        principalColumn: "ImageId",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_MaterialImage_Materials_MaterialId",
                        column: x => x.MaterialId,
                        principalTable: "Materials",
                        principalColumn: "MaterialId");
                });

            migrationBuilder.CreateIndex(
                name: "IX_MaterialImage_ImageId",
                table: "MaterialImage",
                column: "ImageId");

            migrationBuilder.CreateIndex(
                name: "IX_MaterialImage_MaterialId",
                table: "MaterialImage",
                column: "MaterialId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "MaterialImage");

            migrationBuilder.DropColumn(
                name: "MaterialImagesIds",
                table: "Materials");

            migrationBuilder.AddColumn<string>(
                name: "ImagesIds",
                table: "Materials",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "MaterialId",
                table: "Images",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Materials_ImagesIds",
                table: "Materials",
                column: "ImagesIds");

            migrationBuilder.CreateIndex(
                name: "IX_Images_MaterialId",
                table: "Images",
                column: "MaterialId");

            migrationBuilder.AddForeignKey(
                name: "FK_Images_Materials_MaterialId",
                table: "Images",
                column: "MaterialId",
                principalTable: "Materials",
                principalColumn: "MaterialId");
        }
    }
}
