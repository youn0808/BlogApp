/*Returns top 6 most popular blog based on number of Blogcomment*/
CREATE OR ALTER PROCEDURE dbo.Blog_GetAllFamous
AS
	SELECT Top 6 
		B.[BlogId]
      ,B.[ApplicationUserId]
	  ,B.[UserName]
      ,B.[PhotoId]
      ,B.[Title]
      ,B.[Content]
      ,B.[PublishDate]
      ,B.[UpdateDate]
      ,B.[ActiveInd]
  FROM [dbo].[vBlog] B
	INNER JOIN dbo.BlogComment BC ON BC.BlogId = B.BlogId
  WHERE B.ActiveInd = CONVERT(BIT,1) 
		AND BC.ActiveInd = CONVERT(BIT,1)
  GROUP BY
  		B.[BlogId]
      ,B.[ApplicationUserId]
	  ,B.[UserName]
      ,B.[PhotoId]
      ,B.[Title]
      ,B.[Content]
      ,B.[PublishDate]
      ,B.[UpdateDate]
      ,B.[ActiveInd]
	ORDER BY COUNT(BC.BlogCommentId) DESC
	