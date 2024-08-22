CREATE VIEW dbo.vBlogComment
AS
	SELECT
		BC.*,
		AU.UserName
	FROM dbo.BlogComment BC
	INNER JOIN
		dbo.ApplicationUser AU ON AU.ApplicationUserId = BC.ApplicationUserId