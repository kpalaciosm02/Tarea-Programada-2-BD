CREATE PROCEDURE [dbo].[spModPuesto]
	@inPuesto varchar(64),
	@inSalario varchar(64),
	@inPuestoOriginal varchar(64),
	@inSalarioOriginal varchar(64),
	@outNewPuesto varchar(64) OUTPUT,
	@outNewSalario varchar(64) OUTPUT
AS

	UPDATE [dbo].[Puesto]
	SET Nombre = @inPuesto, SalarioXHora = @inSalario
	WHERE Nombre = @inPuestoOriginal 
	or SalarioXHora = @inSalarioOriginal;

Return;