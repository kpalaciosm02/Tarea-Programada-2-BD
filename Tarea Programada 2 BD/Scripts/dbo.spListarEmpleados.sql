CREATE PROCEDURE [dbo].[spListarEmpleados]

AS

BEGIN

      SET NOCOUNT ON;

      SELECT Nombre
			,IdTipoIdentificacion
			,ValorDocumentoIdentificacion
			,FechaNacimiento
			,Puesto
			,IdDepartamento

      FROM Empleado

END
