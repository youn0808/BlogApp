CREATE TYPE dbo.PhotoType AS TABLE
(
	PublicId NVARCHAR(50) NOT NULL,
	ImageUrl NVARCHAR(250) NOT NULL,
	[Description] NVARCHAR(30) NOT NULL
)