CREATE VIEW [dbo].[vBlog]
AS
	SELECT
		B.BlogId,
		B.ApplicationUserId,
		AU.UserName,
		B.Title,
		B.Content,
		B.PhotoId,
		B.PublishDate,
		B.UpdateDate,
		B.ActiveInd
	FROM
		dbo.Blog B
	INNER JOIN
		dbo.ApplicationUser AU ON B.ApplicationUserId = AU.ApplicationUserId

	