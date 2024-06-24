using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations
{
    /// <inheritdoc />
    public partial class filebaserename : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MaterialImages_Materials_MaterialId",
                table: "MaterialImages");

            migrationBuilder.AddForeignKey(
                name: "FK_MaterialImages_Materials_MaterialId",
                table: "MaterialImages",
                column: "MaterialId",
                principalTable: "Materials",
                principalColumn: "MaterialId",
                onDelete: ReferentialAction.Restrict);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_MaterialImages_Materials_MaterialId",
                table: "MaterialImages");

            migrationBuilder.AddForeignKey(
                name: "FK_MaterialImages_Materials_MaterialId",
                table: "MaterialImages",
                column: "MaterialId",
                principalTable: "Materials",
                principalColumn: "MaterialId");
        }
    }
}
