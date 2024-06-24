using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations
{
    /// <inheritdoc />
    public partial class MaterialsAddListIntImageFixthree : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameIndex(
                name: "IX_Materials_ImagesId",
                table: "Materials",
                newName: "IX_Materials_ImagesIds");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameIndex(
                name: "IX_Materials_ImagesIds",
                table: "Materials",
                newName: "IX_Materials_ImagesId");
        }
    }
}
