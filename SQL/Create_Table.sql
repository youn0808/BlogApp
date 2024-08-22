CREATE TABLE ApplicationUser(
	ApplicationUserId INT NOT NULL IDENTITY(1,1),
	UserName NVARCHAR(20),
	NormalizedUsername NVARCHAR(20) NOT NULL,
	Email NVARCHAR(30) NOT NULL,
	NormalizedEmail NVARCHAR(30),
	Fullname NVARCHAR(30),
	PasswordHash NVARCHAR(MAX) NOT NULL,
	PRIMARY KEY(ApplicationUserId)
)

CREATE INDEX[IX_ApplicationUser_NormalizedUsername] on [dbo].[ApplicationUser] ([NormalizedUsername])
CREATE INDEX[IX_ApplicationUser_NormalizedEmail] on [dbo].[ApplicationUser] ([NormalizedEmail])
