CREATE OR ALTER PROCEDURE dbo.Blog_GetAll
	@Offset INT,
	@PageSize INT
AS
	SELECT
		[BlogId]
      ,[ApplicationUserId]
      ,[UserName]
      ,[Title]
      ,[Content]
      ,[PhotoId]
      ,[PublishDate]
      ,[UpdateDate]
	FROM [dbo].[vBlog]
	WHERE 
		ActiveInd = CONVERT(BIT,1)
	ORDER BY
		BlogId
		OFFSET @Offset ROWS
		FETCH NEXT @PageSize ROWS ONLY;
	SELECT COUNT(*) 
	FROM dbo.Blog B
