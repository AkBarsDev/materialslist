using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations
{
    /// <inheritdoc />
    public partial class InitialCreate : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "CategoriesMaterial",
                columns: table => new
                {
                    CategoryId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    ParentId = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_CategoriesMaterial", x => x.CategoryId);
                    table.ForeignKey(
                        name: "FK_CategoriesMaterial_CategoriesMaterial_ParentId",
                        column: x => x.ParentId,
                        principalTable: "CategoriesMaterial",
                        principalColumn: "CategoryId");
                });

            migrationBuilder.CreateTable(
                name: "Materials",
                columns: table => new
                {
                    MaterialId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Gost = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ImageUrl = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DownloadUrl = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    CategoryId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    ModeratorId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    Specifications = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Materials", x => x.MaterialId);
                    table.ForeignKey(
                        name: "FK_Materials_CategoriesMaterial_CategoryId",
                        column: x => x.CategoryId,
                        principalTable: "CategoriesMaterial",
                        principalColumn: "CategoryId");
                });

            migrationBuilder.CreateTable(
                name: "HistoryUpdate",
                columns: table => new
                {
                    HistoryId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    DataUpdate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    MaterialId = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_HistoryUpdate", x => x.HistoryId);
                    table.ForeignKey(
                        name: "FK_HistoryUpdate_Materials_MaterialId",
                        column: x => x.MaterialId,
                        principalTable: "Materials",
                        principalColumn: "MaterialId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_CategoriesMaterial_ParentId",
                table: "CategoriesMaterial",
                column: "ParentId");

            migrationBuilder.CreateIndex(
                name: "IX_HistoryUpdate_MaterialId",
                table: "HistoryUpdate",
                column: "MaterialId");

            migrationBuilder.CreateIndex(
                name: "IX_Materials_CategoryId",
                table: "Materials",
                column: "CategoryId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "HistoryUpdate");

            migrationBuilder.DropTable(
                name: "Materials");

            migrationBuilder.DropTable(
                name: "CategoriesMaterial");
        }
    }
}
