using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations
{
    /// <inheritdoc />
    public partial class AddApprovel : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "MaterialImagesIds",
                table: "Materials");

            migrationBuilder.RenameColumn(
                name: "ModeratorId",
                table: "Materials",
                newName: "UserId");

            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "Materials",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "Approvals",
                columns: table => new
                {
                    ApprovalId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    MaterialId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CurrentStageId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    Status = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Approvals", x => x.ApprovalId);
                    table.ForeignKey(
                        name: "FK_Approvals_Materials_MaterialId",
                        column: x => x.MaterialId,
                        principalTable: "Materials",
                        principalColumn: "MaterialId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ApprovalsHistory",
                columns: table => new
                {
                    ApprovalHistoryId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ApprovalId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ActionType = table.Column<int>(type: "int", nullable: false),
                    UserId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    Reason = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Timestamp = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ApprovalsHistory", x => x.ApprovalHistoryId);
                    table.ForeignKey(
                        name: "FK_ApprovalsHistory_Approvals_ApprovalId",
                        column: x => x.ApprovalId,
                        principalTable: "Approvals",
                        principalColumn: "ApprovalId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "ApprovalStages",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    ApprovalId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    StageNumber = table.Column<int>(type: "int", nullable: false),
                    Status = table.Column<int>(type: "int", nullable: false),
                    UserId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    PreviousStageId = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    NextStageId = table.Column<Guid>(type: "uniqueidentifier", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ApprovalStages", x => x.Id);
                    table.ForeignKey(
                        name: "FK_ApprovalStages_Approvals_ApprovalId",
                        column: x => x.ApprovalId,
                        principalTable: "Approvals",
                        principalColumn: "ApprovalId",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Approvals_MaterialId",
                table: "Approvals",
                column: "MaterialId");

            migrationBuilder.CreateIndex(
                name: "IX_ApprovalsHistory_ApprovalId",
                table: "ApprovalsHistory",
                column: "ApprovalId");

            migrationBuilder.CreateIndex(
                name: "IX_ApprovalStages_ApprovalId",
                table: "ApprovalStages",
                column: "ApprovalId");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "ApprovalsHistory");

            migrationBuilder.DropTable(
                name: "ApprovalStages");

            migrationBuilder.DropTable(
                name: "Approvals");

            migrationBuilder.DropColumn(
                name: "Status",
                table: "Materials");

            migrationBuilder.RenameColumn(
                name: "UserId",
                table: "Materials",
                newName: "ModeratorId");

            migrationBuilder.AddColumn<string>(
                name: "MaterialImagesIds",
                table: "Materials",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
