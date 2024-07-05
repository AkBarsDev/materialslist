using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations.B2HMaterialsIdentity
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
                type: "integer",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "Approvals",
                columns: table => new
                {
                    ApprovalId = table.Column<Guid>(type: "uuid", nullable: false),
                    MaterialId = table.Column<Guid>(type: "uuid", nullable: false),
                    CurrentStageId = table.Column<Guid>(type: "uuid", nullable: true),
                    Status = table.Column<int>(type: "integer", nullable: false)
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
                    ApprovalHistoryId = table.Column<Guid>(type: "uuid", nullable: false),
                    ApprovalId = table.Column<Guid>(type: "uuid", nullable: false),
                    ActionType = table.Column<int>(type: "integer", nullable: false),
                    UserId = table.Column<Guid>(type: "uuid", nullable: false),
                    Reason = table.Column<string>(type: "text", nullable: false),
                    Timestamp = table.Column<DateTime>(type: "timestamp with time zone", nullable: false)
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
                    Id = table.Column<Guid>(type: "uuid", nullable: false),
                    ApprovalId = table.Column<Guid>(type: "uuid", nullable: false),
                    StageNumber = table.Column<int>(type: "integer", nullable: false),
                    Status = table.Column<int>(type: "integer", nullable: false),
                    UserId = table.Column<Guid>(type: "uuid", nullable: true),
                    PreviousStageId = table.Column<Guid>(type: "uuid", nullable: true),
                    NextStageId = table.Column<Guid>(type: "uuid", nullable: true)
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

            migrationBuilder.AddColumn<int[]>(
                name: "MaterialImagesIds",
                table: "Materials",
                type: "integer[]",
                nullable: true);
        }
    }
}
