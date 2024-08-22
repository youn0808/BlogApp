CREATE PROCEDURE dbo.Photo_GetByUserId
	@ApplicationUserId INT
AS
	SELECT [PhotoId]
		  ,[ApplicationUserId]
		  ,[PublicId]
		  ,[ImageUrl]
		  ,[Description]
		  ,[PublishDate]
		  ,[UpdateDate]
	FROM [dbo].[Photo] p
	WHERE P.ApplicationUserId = @ApplicationUserId

