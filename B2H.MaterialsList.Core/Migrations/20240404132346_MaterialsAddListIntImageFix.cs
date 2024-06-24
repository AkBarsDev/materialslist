using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations
{
	/// <inheritdoc />
	public partial class MaterialsAddListIntImageFix : Migration
	{
		/// <inheritdoc />
		protected override void Up(MigrationBuilder migrationBuilder)
		{
			migrationBuilder.AlterColumn<string>(
				name: "ImagesId",
				table: "Materials",
				type: "nvarchar(450)",
				nullable: true,
				oldClrType: typeof(string),
				oldType: "nvarchar(450)");
		}

		/// <inheritdoc />
		protected override void Down(MigrationBuilder migrationBuilder)
		{
			migrationBuilder.AlterColumn<string>(
				name: "ImagesId",
				table: "Materials",
				type: "nvarchar(450)",
				nullable: false,
				defaultValue: "",
				oldClrType: typeof(string),
				oldType: "nvarchar(450)",
				oldNullable: true);
		}
	}
}
