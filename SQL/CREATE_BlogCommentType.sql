CREATE TYPE dbo.BlogCommentType AS TABLE
(
	BlogCommentId INT NOT NULL,
	ParentBlogCommentId INT NOT NULL,
	BlogId INT NOT NULL,
	Content NVARCHAR(MAX) NOT NULL
)