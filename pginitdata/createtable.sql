-- CREATE EXTENSION postgres_fdw

CREATE SERVER postgres-jdbc_srv
	FOREIGN DATA WRAPPER postgres_fdw
	OPTIONS(host 'localhost', dbname 'B2HMaterials', port '1434');
CREATE USER MAPPING FOR CURRENT_USER SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."ApprovalStages" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"Id" uuid NULL,
	"ApprovalId" uuid NULL,
	"StageNumber" int4 NULL,
	"Status" int4 NULL,
	"UserId" uuid NULL,
	"PreviousStageId" uuid NULL,
	"NextStageId" uuid NULL,
	"Description" text NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."Approvals" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"ApprovalId" uuid NULL,
	"MaterialId" uuid NULL,
	"CurrentStageId" uuid NULL,
	"Status" int4 NULL,
	"CreatedAt" timestamptz(0) NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."ApprovalsHistory" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"ApprovalHistoryId" uuid NULL,
	"ApprovalId" uuid NULL,
	"ActionType" int4 NULL,
	"UserId" uuid NULL,
	"Reason" text NULL,
	"Timestamp" timestamptz(0) NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."B2HRoleClaims" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"Id" int4 NULL,
	"RoleId" text NULL,
	"ClaimType" text NULL,
	"ClaimValue" text NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."B2HRoles" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"Id" text NULL,
	"Name" varchar NULL,
	"NormalizedName" varchar NULL,
	"ConcurrencyStamp" text NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."B2HUserClaims" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"Id" int4 NULL,
	"UserId" text NULL,
	"ClaimType" text NULL,
	"ClaimValue" text NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."B2HUserLogins" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"LoginProvider" text NULL,
	"ProviderKey" text NULL,
	"ProviderDisplayName" text NULL,
	"UserId" text NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."B2HUserRoles" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"UserId" text NULL,
	"RoleId" text NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."B2HUserTokens" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"UserId" text NULL,
	"LoginProvider" text NULL,
	"Name" text NULL,
	"Value" text NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."B2HUsers" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"Id" text NULL,
	"UserName" varchar NULL,
	"NormalizedUserName" varchar NULL,
	"Email" varchar NULL,
	"NormalizedEmail" varchar NULL,
	"EmailConfirmed" bool NULL,
	"PasswordHash" text NULL,
	"SecurityStamp" text NULL,
	"ConcurrencyStamp" text NULL,
	"PhoneNumber" text NULL,
	"PhoneNumberConfirmed" bool NULL,
	"TwoFactorEnabled" bool NULL,
	"LockoutEnd" timestamptz(0) NULL,
	"LockoutEnabled" bool NULL,
	"AccessFailedCount" int4 NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."CategoriesMaterial" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"CategoryId" uuid NULL,
	"Name" text NULL,
	"ParentId" uuid NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."Filebase" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"FileId" int4 NULL,
	"Name" text NULL,
	"Path" text NULL,
	"CreatedAt" timestamptz(0) NULL,
	"UpdatedAt" timestamptz(0) NULL,
	"Type" text NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."HistoryUpdate" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"HistoryId" uuid NULL,
	"DataUpdate" timestamptz(0) NULL,
	"MaterialId" uuid NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."Images" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"ImageId" int4 NULL,
	"Name" text NULL,
	"Path" text NULL,
	"CreatedAt" timestamptz(0) NULL,
	"UpdatedAt" timestamptz(0) NULL,
	"Type" text NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."MaterialImages" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"MaterialImageId" int4 NULL,
	"ImageId" int4 NULL,
	"MaterialId" uuid NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."Materials" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"MaterialId" uuid NULL,
	"Name" text NULL,
	"Gost" text NULL,
	"CategoryId" uuid NULL,
	"UserId" uuid NULL,
	"Specifications" text NULL,
	"UpdateAt" timestamptz(0) NULL,
	"CreateAt" timestamptz(0) NULL,
	"FileId" int4 NULL,
	"Status" int4 NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."__EFMigrationsHistory" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"MigrationId" varchar NULL,
	"ProductVersion" varchar NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."B2HRoleClaims_Id_seq" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"last_value" int8 NULL,
	log_cnt int8 NULL,
	is_called bool NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."B2HUserClaims_Id_seq" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"last_value" int8 NULL,
	log_cnt int8 NULL,
	is_called bool NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."Filebase_FileId_seq" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"last_value" int8 NULL,
	log_cnt int8 NULL,
	is_called bool NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."Images_ImageId_seq" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"last_value" int8 NULL,
	log_cnt int8 NULL,
	is_called bool NULL
)
SERVER postgres-jdbc_srv;
CREATE FOREIGN TABLE public."MaterialImages_MaterialImageId_seq" (
	tableoid oid NULL,
	cmax cid NULL,
	xmax xid NULL,
	cmin cid NULL,
	xmin xid NULL,
	ctid tid NULL,
	"last_value" int8 NULL,
	log_cnt int8 NULL,
	is_called bool NULL
)
SERVER postgres-jdbc_srv;
