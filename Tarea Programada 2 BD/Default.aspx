    <%@ Page Title="Tarea" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tarea_Programada_2_BD._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Registrarse</h1>
        <p class="lead">Por favor ingresar usuario y contraseña.</p>
        <p><a href="WebPages/Registro.aspx" class="btn btn-primary btn-lg">Registrarse &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Puestos</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="WebPages/Puestos.aspx" aria-disabled="False">Avanzado &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Empleados</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="WebPages/Empleado.aspx" aria-disabled="True">Avanzado &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Asistencia</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950" aria-disabled="True">Avanzado »</a>
            </p>
        </div>
    </div>

</asp:Content>
