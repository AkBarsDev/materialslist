using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations
{
    /// <inheritdoc />
    public partial class updatematerialsimages : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MaterialImage_Images_ImageId",
                table: "MaterialImage");

            migrationBuilder.DropForeignKey(
                name: "FK_MaterialImage_Materials_MaterialId",
                table: "MaterialImage");

            migrationBuilder.DropPrimaryKey(
                name: "PK_MaterialImage",
                table: "MaterialImage");

            migrationBuilder.RenameTable(
                name: "MaterialImage",
                newName: "MaterialImages");

            migrationBuilder.RenameIndex(
                name: "IX_MaterialImage_MaterialId",
                table: "MaterialImages",
                newName: "IX_MaterialImages_MaterialId");

            migrationBuilder.RenameIndex(
                name: "IX_MaterialImage_ImageId",
                table: "MaterialImages",
                newName: "IX_MaterialImages_ImageId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_MaterialImages",
                table: "MaterialImages",
                column: "MaterialImageId");

            migrationBuilder.AddForeignKey(
                name: "FK_MaterialImages_Images_ImageId",
                table: "MaterialImages",
                column: "ImageId",
                principalTable: "Images",
                principalColumn: "ImageId",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_MaterialImages_Materials_MaterialId",
                table: "MaterialImages",
                column: "MaterialId",
                principalTable: "Materials",
                principalColumn: "MaterialId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MaterialImages_Images_ImageId",
                table: "MaterialImages");

            migrationBuilder.DropForeignKey(
                name: "FK_MaterialImages_Materials_MaterialId",
                table: "MaterialImages");

            migrationBuilder.DropPrimaryKey(
                name: "PK_MaterialImages",
                table: "MaterialImages");

            migrationBuilder.RenameTable(
                name: "MaterialImages",
                newName: "MaterialImage");

            migrationBuilder.RenameIndex(
                name: "IX_MaterialImages_MaterialId",
                table: "MaterialImage",
                newName: "IX_MaterialImage_MaterialId");

            migrationBuilder.RenameIndex(
                name: "IX_MaterialImages_ImageId",
                table: "MaterialImage",
                newName: "IX_MaterialImage_ImageId");

            migrationBuilder.AddPrimaryKey(
                name: "PK_MaterialImage",
                table: "MaterialImage",
                column: "MaterialImageId");

            migrationBuilder.AddForeignKey(
                name: "FK_MaterialImage_Images_ImageId",
                table: "MaterialImage",
                column: "ImageId",
                principalTable: "Images",
                principalColumn: "ImageId",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_MaterialImage_Materials_MaterialId",
                table: "MaterialImage",
                column: "MaterialId",
                principalTable: "Materials",
                principalColumn: "MaterialId");
        }
    }
}
