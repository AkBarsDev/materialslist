using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace B2H.MaterialsList.Core.Migrations.B2HMaterialsIdentity
{
    /// <inheritdoc />
    public partial class newIntegrationIn1CandNewGradeAndCorrectUserIdType : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<string>(
                name: "UserId",
                table: "Materials",
                type: "text",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uuid",
                oldNullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Grade",
                table: "Materials",
                type: "text",
                nullable: true);

            migrationBuilder.AddColumn<Guid>(
                name: "IntegrationId",
                table: "Materials",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<Guid>(
                name: "IntegrationCategoryId",
                table: "CategoriesMaterial",
                type: "uuid",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.AddColumn<string>(
                name: "FirstName",
                table: "B2HUsers",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<bool>(
                name: "IsActived",
                table: "B2HUsers",
                type: "boolean",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<string>(
                name: "LastName",
                table: "B2HUsers",
                type: "text",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<string>(
                name: "MiddleName",
                table: "B2HUsers",
                type: "text",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "UserId",
                table: "ApprovalStages",
                type: "text",
                nullable: true,
                oldClrType: typeof(Guid),
                oldType: "uuid",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "UserId",
                table: "ApprovalsHistory",
                type: "text",
                nullable: false,
                oldClrType: typeof(Guid),
                oldType: "uuid");

            migrationBuilder.CreateIndex(
                name: "IX_Materials_UserId",
                table: "Materials",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_ApprovalStages_UserId",
                table: "ApprovalStages",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_ApprovalsHistory_UserId",
                table: "ApprovalsHistory",
                column: "UserId");

            migrationBuilder.AddForeignKey(
                name: "FK_ApprovalsHistory_B2HUsers_UserId",
                table: "ApprovalsHistory",
                column: "UserId",
                principalTable: "B2HUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_ApprovalStages_B2HUsers_UserId",
                table: "ApprovalStages",
                column: "UserId",
                principalTable: "B2HUsers",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_Materials_B2HUsers_UserId",
                table: "Materials",
                column: "UserId",
                principalTable: "B2HUsers",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ApprovalsHistory_B2HUsers_UserId",
                table: "ApprovalsHistory");

            migrationBuilder.DropForeignKey(
                name: "FK_ApprovalStages_B2HUsers_UserId",
                table: "ApprovalStages");

            migrationBuilder.DropForeignKey(
                name: "FK_Materials_B2HUsers_UserId",
                table: "Materials");

            migrationBuilder.DropIndex(
                name: "IX_Materials_UserId",
                table: "Materials");

            migrationBuilder.DropIndex(
                name: "IX_ApprovalStages_UserId",
                table: "ApprovalStages");

            migrationBuilder.DropIndex(
                name: "IX_ApprovalsHistory_UserId",
                table: "ApprovalsHistory");

            migrationBuilder.DropColumn(
                name: "Grade",
                table: "Materials");

            migrationBuilder.DropColumn(
                name: "IntegrationId",
                table: "Materials");

            migrationBuilder.DropColumn(
                name: "IntegrationCategoryId",
                table: "CategoriesMaterial");

            migrationBuilder.DropColumn(
                name: "FirstName",
                table: "B2HUsers");

            migrationBuilder.DropColumn(
                name: "IsActived",
                table: "B2HUsers");

            migrationBuilder.DropColumn(
                name: "LastName",
                table: "B2HUsers");

            migrationBuilder.DropColumn(
                name: "MiddleName",
                table: "B2HUsers");

            migrationBuilder.AlterColumn<Guid>(
                name: "UserId",
                table: "Materials",
                type: "uuid",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "text",
                oldNullable: true);

            migrationBuilder.AlterColumn<Guid>(
                name: "UserId",
                table: "ApprovalStages",
                type: "uuid",
                nullable: true,
                oldClrType: typeof(string),
                oldType: "text",
                oldNullable: true);

            migrationBuilder.AlterColumn<Guid>(
                name: "UserId",
                table: "ApprovalsHistory",
                type: "uuid",
                nullable: false,
                oldClrType: typeof(string),
                oldType: "text");
        }
    }
}
