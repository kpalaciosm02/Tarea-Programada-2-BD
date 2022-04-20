CREATE PROCEDURE [dbo].[spVerificarUsuario]
	@inUsuario varchar(64),
	@inPassword varchar(64)
AS
	SELECT @inUsuario, @inPassword FROM dbo.Usuario
RETURN 0
