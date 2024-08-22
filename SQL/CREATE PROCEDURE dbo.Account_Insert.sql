CREATE PROCEDURE dbo.Account_Insert 
	@Account AccountType READONLY
AS
	INSERT INTO dbo.ApplicationUser
	(
	 [UserName]
      ,[NormalizedUsername]
      ,[Email]
      ,[NormalizedEmail]
      ,[Fullname]
      ,[PasswordHash]
	)
	SELECT 
       [UserName]
      ,[NormalizedUsername]
      ,[Email]
      ,[NormalizedEmail]
      ,[Fullname]
      ,[PasswordHash]
	FROM
		@Account;

		SELECT CAST(SCOPE_IDENTITY() AS INT);
