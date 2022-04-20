﻿CREATE PROCEDURE [dbo].[CargarXML]
    -- Parametro de entrada
    @inRutaXML NVARCHAR(500)
AS

DECLARE @Datos xml/*Declaramos la variable Datos como un tipo XML*/

DECLARE @outDatos xml -- parametro de salida del sql dinamico

 -- Para cargar el archivo con una variable, CHAR(39) son comillas simples
DECLARE @Comando NVARCHAR(500)= 'SELECT @Datos = D FROM OPENROWSET (BULK '  + CHAR(39) + @inRutaXML + CHAR(39) + ', SINGLE_BLOB) AS Datos(D)' -- comando que va a ejecutar el sql dinamico

DECLARE @Parametros NVARCHAR(500)
SET @Parametros = N'@Datos xml OUTPUT' --parametros del sql dinamico

EXECUTE sp_executesql @Comando, @Parametros, @Datos = @outDatos OUTPUT -- ejecutamos el comando que hicimos dinamicamente

SET @Datos = @outDatos -- le damos el parametro de salida del sql dinamico a la variable para el resto del procedure
    
DECLARE @hdoc int /*Creamos hdoc que va a ser un identificador*/
    
EXEC sp_xml_preparedocument @hdoc OUTPUT, @Datos/*Toma el identificador y a la variable con el documento y las asocia*/


INSERT INTO [dbo].[TipoDocumentoIdentidad]
           ([ID]
           ,[Nombre])/*Inserta en la tabla TipoDocIdent*/
SELECT *
FROM OPENXML (@hdoc, '/Datos/Tipo_Doc/TipoDocuIdentidad' , 1)/*Lee los contenidos del XML y para eso necesita un identificador,el 
PATH del nodo y el 1 que sirve para retornar solo atributos*/
WITH(/*Dentro del WITH se pone el nombre y el tipo de los atributos a retornar*/
	Id int,
    Nombre VARCHAR(20)
    )


INSERT INTO [dbo].[Puesto]
				([Nombre]
			   ,[SalarioXHora])/*Inserta en la tabla Puestos*/
SELECT *
FROM OPENXML (@hdoc, '/Datos/Puestos/Puesto' , 1)/*Lee los contenidos del XML y para eso necesita un identificador,el PATH del nodo y el 1 que sirve 
para retornar solo atributos*/
WITH(/*Dentro del WITH se pone el nombre y el tipo de los atributos a retornar*/
    Nombre VARCHAR(50),
	SalarioXHora money
    )


INSERT INTO [dbo].[Departamento]
           ([ID]
           ,[Nombre])/*Inserta en la tabla Departamentos*/
SELECT *
FROM OPENXML (@hdoc, '/Datos/Departamentos/Departamento' , 1)/*Lee los contenidos del XML y para eso necesita un identificador,el PATH del nodo y el 
1 que sirve para retornar solo atributos*/
WITH(/*Dentro del WITH se pone el nombre y el tipo de los atributos a retornar*/
	Id int,
    Nombre VARCHAR(50)
    )
    
    
DELETE FROM [dbo].[Empleado]/*Limpia la tabla empelados*/
DBCC CHECKIDENT ('Empleados', RESEED, 1)/*Reinicia el identify*/

INSERT INTO [dbo].[Empleado]
           ([Nombre]
           ,[IdTipoIdentificacion]
           ,[ValorDocumentoIdentificacion]
           ,[IdDepartamento]
           ,[Puesto]
           ,[FechaNacimiento])/*Inserta en la tabla Empleados*/
SELECT *
FROM OPENXML (@hdoc, '/Datos/Empleados/Empleado' , 1)/*Lee los contenidos del XML y para eso necesita un identificador,el PATH del nodo y el 1 que sirve
para retornar solo atributos*/
WITH(/*Dentro del WITH se pone el nombre y el tipo de los atributos a retornar*/
    Nombre VARCHAR(100),
	idTipoDocumentacionIdentidad int,
	ValorDocumentoIdentidad VARCHAR(10),
	IdDepartamento int,
	Puesto VARCHAR(50),
	FechaNacimiento date
    )


 

INSERT INTO [dbo].[Usuario]
           ([Nombre]
           ,[Password])/*Inserta en la tabla Administradores*/
SELECT *
FROM OPENXML (@hdoc, '/Datos/Usuarios/Usuario' , 1)/*Lee los contenidos del XML y para eso necesita un identificador,el PATH del nodo y el 1 que sirve
para retornar solo atributos*/
WITH(/*Dentro del WITH se pone el nombre y el tipo de los atributos a retornar*/
    nombre VARCHAR(50),
	pwd VARCHAR(50)
    )

INSERT INTO [dbo].[Feriado]
				([Id]
			   ,[Nombre]
               ,[Fecha])/*Inserta en la tabla Feriados*/
SELECT *
FROM OPENXML (@hdoc, '/Datos/Puestos/Puesto' , 1)/*Lee los contenidos del XML y para eso necesita un identificador,el PATH del nodo y el 1 que sirve 
para retornar solo atributos*/
WITH(/*Dentro del WITH se pone el nombre y el tipo de los atributos a retornar*/
    Id int,
	Nombre varchar(50),
    Fecha date
    )
    
EXEC sp_xml_removedocument @hdoc/*Remueve el documento XML de la memoria*/

