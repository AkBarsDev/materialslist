using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations
{
    /// <inheritdoc />
    public partial class AddStageArgDescription : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Description",
                table: "ApprovalStages",
                type: "nvarchar(max)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Description",
                table: "ApprovalStages");
        }
    }
}
