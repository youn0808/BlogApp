CREATE PROCEDURE dbo.BlogComment_DELETE
	@BlogCommentId INT
AS
	DROP TABLE IF EXISTS #BlogCommentsToBeDeleted;

	WITH CTE_blogComments AS (
		SELECT
			BC1.BlogCommentId,
			BC1.ParentBlogCommentId
		FROM dbo.BlogComment BC1
		WHERE
			BC1.BlogCommentId = @BlogCommentId
		
		UNION ALL

		SELECT
			BC2.BlogCommentId,
			BC2.ParentBlogCommentId
		FROM dbo.BlogComment BC2
			INNER JOIN CTE_blogComments BC3 ON BC2.BlogCommentId = BC3.ParentBlogCommentId 
		/*Its joining itslef unitl it finds everything the exist under it*/
	)
	SELECT
		BlogCommentId,
		ParentBlogCommentId
	INTO
		#BlogCommentsToBeDeleted
	FROM CTE_blogComments

	Update BC1
	SET BC1.ActiveInd = CONVERT(BIT,1),
		BC1.UpdateDate = GETDATE()
	FROM 
		dbo.BlogComment BC
		INNER JOIN #BlogCommentsToBeDeleted BCD ON BC.BlogCommentId = BCD.BlogCommentId