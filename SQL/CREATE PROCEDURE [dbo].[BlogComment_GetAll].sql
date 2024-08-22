CREATE OR ALTER PROCEDURE [dbo].[BlogComment_GetAll]
	@BlogId INT
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
		BC.BlogId = @BlogId
		AND BC.ActiveInd = CONVERT(BIT,1)
	ORDER BY
		BC.UpdateDate DESC