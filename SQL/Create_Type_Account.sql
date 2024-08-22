CREATE TYPE dbo.AccountType AS TABLE
(
	[Username] NVARCHAR(20) NOT NULL,
	[NormalizedUsername] NVARCHAR(20) NOT NULL,
	[Email] NVARCHAR(30) NOT NULL,
	[NormalizedEmail] NVARCHAR(30) NOT NULL,
	[Fullname] NVARCHAR(30) NULL,
	[PasswordHash] NVARCHAR(MAX) NULL
)