CREATE PROCEDURE dbo.Account_GetByUsername
	@NormalizedUsername NVARCHAR(20)
AS
	SELECT 
		AU.ApplicationUserId,
		AU.UserName,
		AU.NormalizedUsername,
		AU.Email,
		AU.NormalizedEmail,
		AU.Fullname,
		AU.PasswordHash
	FROM ApplicationUser AU
	WHERE AU.NormalizedEmail = @NormalizedUsername