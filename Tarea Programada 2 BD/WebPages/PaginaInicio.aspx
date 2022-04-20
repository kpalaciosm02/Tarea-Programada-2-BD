<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaInicio.aspx.cs" Inherits="Tarea2.WebPages.PaginaInicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Menu Empresarial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server">Cuenta</asp:HyperLink>
            <br />
        </div>
        <asp:HyperLink ID="HyperLink3" runat="server" BackColor="Red" BorderColor="White" BorderStyle="Double" ForeColor="White" NavigateUrl="~/WebPages/Planilla.aspx">Planilla</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" BackColor="Red" BorderColor="White" BorderStyle="Double" ForeColor="White" NavigateUrl="~/WebPages/Asistencia.aspx">Asistencia</asp:HyperLink>
        <br />
        <br />    
        <asp:HyperLink ID="HyperLink2" runat="server" BackColor="Red" BorderColor="White" BorderStyle="Double" ForeColor="White" NavigateUrl="~/WebPages/Vacaciones.aspx">Vacaciones</asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink5" runat="server" BackColor="Red" BorderColor="White" BorderStyle="Double" ForeColor="White" NavigateUrl="~/WebPages/Empleados.aspx">Empleados</asp:HyperLink>

    </form>
</body>
</html>