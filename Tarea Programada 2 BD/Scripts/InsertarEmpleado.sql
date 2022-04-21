-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE procedure spInsertarEmpleado
@Nombre varchar(16),
@TipoID int, 
@ValorID int, 
@Fecha varchar(64),
@Puesto varchar(64),
@Departamento int
as

BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    Insert into dbo.Empleado(Nombre
			,IdTipoIdentificacion
			,ValorDocumentoIdentificacion
			,FechaNacimiento
			,Puesto
			,IdDepartamento) 
		values(@Nombre,
			@TipoID, 
			@ValorID,
			@Fecha,
			@Puesto,
			@Departamento )
END