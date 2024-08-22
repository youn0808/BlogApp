CREATE OR ALTER PROCEDURE dbo.BlogComment_GET
	@BlogCommentId INT
AS

	SELECT 
		BC.[BlogCommentId]
		,BC.[ParentBlogCommentId]
		,BC.[BlogId]
		,BC.[Username]
		,BC.[ApplicationUserId]
		,BC.[Content]
		,BC.[PublishDate]
		,BC.[UpdateDate]
	FROM [dbo].vBlogComment BC
	WHERE
		BC.BlogCommentId = @BlogCommentId
		AND BC.ActiveInd = CONVERT(BIT,1)
