CREATE or alter PROCEDURE dbo.Photo_Get
	@PhotoId INT
AS
	SELECT [PhotoId]
		  ,[ApplicationUserId]
		  ,[PublicId]
		  ,[ImageUrl]
		  ,[Description]
		  ,[PublishDate]
		  ,[UpdateDate]
	FROM [dbo].[Photo] p
	WHERE P.PhotoId = @PhotoId

