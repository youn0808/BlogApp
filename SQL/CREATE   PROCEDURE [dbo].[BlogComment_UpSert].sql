CREATE   PROCEDURE [dbo].[BlogComment_UpSert]
	@BlogComment BlogCommentType READONLY,
	@ApplicationUserId INT
AS
	MERGE INTO dbo.BlogComment TARGET
	USING(
		SELECT 
			BlogCommentId
			,ParentBlogCommentId
			,BlogId
			,Content
			,@ApplicationUserId AS ApplicationUserId
		FROM
			@BlogComment
	) AS SOURCE
	ON
	(
		TARGET.BlogCommentId = SOURCE.BlogCommentId AND TARGET.ApplicationUserId = Source.ApplicationUserId
	)
	WHEN MATCHED THEN
		UPDATE SET
			TARGET.Content = SOURCE.Content,
			TARGET.UpdateDate = GETDATE()
	WHEN NOT MATCHED BY TARGET THEN
		INSERT (
			ParentBlogCommentId,
			BlogId,
			ApplicationUserId,
			Content
		)
		Values
		(
			SOURCE.ParentBlogCommentId,
			SOURCE.BlogId,
			SOURCE.ApplicationUserId,
			SOURCE.Content
		);
	SELECT CAST(SCOPE_IDENTITY() AS INT)


		