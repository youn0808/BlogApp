CREATE TABLE BlogComment (
	BlogCommentId INT NOT NULL IDENTITY(1,1),
	ParentBlogCommentId INT NULL,
	BlogId INT NOT NULL,
	ApplicationUserId INT NOT NULL,
	Content NVARCHAR(MAX) NOT NULL,
	PublishDate DATETIME NOT NULL DEFAULT GETDATE(),
	UpdateDate DATETIME NOT NULL DEFAULT GETDATE(),
	ActiveInd BIT NOT NULL DEFAULT CONVERT(BIT,1),
	PRIMARY KEY(BlogCommentId),
	FOREIGN KEY(BlogId) REFERENCES Blog(BlogId),
	FOREIGN KEY(ApplicationUserId) REFERENCES ApplicationUser(ApplicationUserId)
)