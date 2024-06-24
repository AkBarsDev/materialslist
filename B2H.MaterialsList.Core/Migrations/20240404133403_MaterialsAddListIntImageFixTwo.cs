using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations
{
    /// <inheritdoc />
    public partial class MaterialsAddListIntImageFixTwo : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "ImagesId",
                table: "Materials",
                newName: "ImagesIds");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "ImagesIds",
                table: "Materials",
                newName: "ImagesId");
        }
    }
}
