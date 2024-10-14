CREATE TABLE ApplicationUser(
	ApplicationUserId INT NOT NULL IDENTITY(1,1),
	Username VARCHAR(20) NOT NULL,
	NormalizedUsername VARCHAR(20) NOT NULL,
	Email VARCHAR(30) NOT NULL,
	NormalizedEmail VARCHAR(30) NOT NULL,
	Fullname VARCHAR(30),
	PasswordHash NVARCHAR(MAX) NOT NULL,
	PRIMARY KEY(ApplicationUserId)
)

CREATE INDEX[IX_ApplicationUser_NormalizedUsername] on [dbo].[ApplicationUser] ([NormalizedUsername])
CREATE INDEX[IX_ApplicationUser_NormalizedEmail] on [dbo].[ApplicationUser] ([NormalizedEmail])

