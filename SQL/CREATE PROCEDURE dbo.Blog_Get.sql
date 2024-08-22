CREATE PROCEDURE dbo.Blog_Get
	@BlogId INT
AS
SELECT [BlogId]
      ,[ApplicationUserId]
      ,[UserName]
      ,[Title]
      ,[Content]
      ,[PhotoId]
      ,[PublishDate]
      ,[UpdateDate]
      ,[ActiveInd]
FROM [dbo].[vBlog]
WHERE BlogId = @BlogId
	AND ActiveInd = CONVERT(BIT,1)