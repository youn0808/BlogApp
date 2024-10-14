CREATE VIEW dbo.vBlogComment
AS
	SELECT
		BC.BlogCommentId,
		BC.ParentBlogCommentId,
		BC.BlogId,
		BC.Content,
		AU.Username,
		BC.ApplicationUserId,
		BC.PublishDate,
		BC.UpdateDate,
		BC.ActiveInd
	FROM dbo.BlogComment BC
	INNER JOIN
		dbo.ApplicationUser AU ON AU.ApplicationUserId = BC.ApplicationUserId
