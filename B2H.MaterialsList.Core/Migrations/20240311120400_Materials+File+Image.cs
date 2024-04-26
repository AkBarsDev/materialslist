using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations
{
    /// <inheritdoc />
    public partial class MaterialsFileImage : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "DownloadUrl",
                table: "Materials");

            migrationBuilder.DropColumn(
                name: "ImageUrl",
                table: "Materials");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "Images",
                newName: "ImageId");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "Filebases",
                newName: "FileId");

            migrationBuilder.AddColumn<int>(
                name: "FileId",
                table: "Materials",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "MaterialId",
                table: "Images",
                type: "uniqueidentifier",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Path",
                table: "Filebases",
                type: "nvarchar(max)",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "nvarchar(max)");

            migrationBuilder.AlterColumn<Guid>(
                name: "Material",
                table: "Filebases",
                type: "uniqueidentifier",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier");

            migrationBuilder.AddColumn<DateTime>(
                name: "CreatedAt",
                table: "Filebases",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "UpdatedAt",
                table: "Filebases",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.CreateIndex(
                name: "IX_Materials_FileId",
                table: "Materials",
                column: "FileId");

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

            migrationBuilder.AddForeignKey(
                name: "FK_Materials_Filebases_FileId",
                table: "Materials",
                column: "FileId",
                principalTable: "Filebases",
                principalColumn: "FileId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Images_Materials_MaterialId",
                table: "Images");

            migrationBuilder.DropForeignKey(
                name: "FK_Materials_Filebases_FileId",
                table: "Materials");

            migrationBuilder.DropIndex(
                name: "IX_Materials_FileId",
                table: "Materials");

            migrationBuilder.DropIndex(
                name: "IX_Images_MaterialId",
                table: "Images");

            migrationBuilder.DropColumn(
                name: "FileId",
                table: "Materials");

            migrationBuilder.DropColumn(
                name: "MaterialId",
                table: "Images");

            migrationBuilder.DropColumn(
                name: "CreatedAt",
                table: "Filebases");

            migrationBuilder.DropColumn(
                name: "UpdatedAt",
                table: "Filebases");

            migrationBuilder.RenameColumn(
                name: "ImageId",
                table: "Images",
                newName: "Id");

            migrationBuilder.RenameColumn(
                name: "FileId",
                table: "Filebases",
                newName: "Id");

            migrationBuilder.AddColumn<string>(
                name: "DownloadUrl",
                table: "Materials",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "ImageUrl",
                table: "Materials",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "Path",
                table: "Filebases",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "",
                oldClrType: typeof(string),
                oldType: "nvarchar(max)",
                oldNullable: true);

            migrationBuilder.AlterColumn<Guid>(
                name: "Material",
                table: "Filebases",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"),
                oldClrType: typeof(Guid),
                oldType: "uniqueidentifier",
                oldNullable: true);
        }
    }
}
