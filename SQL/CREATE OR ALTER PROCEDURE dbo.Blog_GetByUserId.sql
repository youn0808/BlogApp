CREATE OR ALTER PROCEDURE dbo.Blog_GetByUserId
	@ApplicationUserId INT
AS
	SELECT
		[BlogId]
      ,[ApplicationUserId]
	  ,[UserName]
      ,[PhotoId]
      ,[Title]
      ,[Content]
      ,[PublishDate]
      ,[UpdateDate]
      ,[ActiveInd]
	FROM
		dbo.vBlog 
	WHERE ApplicationUserId =@ApplicationUserId
	AND ActiveInd = CONVERT(BIT,1)