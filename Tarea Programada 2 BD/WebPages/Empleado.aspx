<%@ Page Title="Empleados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleado.aspx.cs" Inherits="Tarea_Programada_2_BD.WebPages.Empleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <br />
        <asp:Button ID="Button1" runat="server" Text="Insertar"/>
        &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Confirmar Cambios" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Borrar" />
    <br />
    <br />   
    <table style="width:100%;">
        <tr>
            <td class="modal-sm" style="width: 109px">Nombre</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px">Tipo ID</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px; height: 22px;">Valor ID</td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px">Fecha Nacimiento</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px">Puesto</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px; height: 22px;">Departamento</td>
            <td style="height: 22px">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <div _designerregion="0">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TareaDosConexionPuesto %>" SelectCommand="spInsertarPuesto" SelectCommandType="StoredProcedure">
            <SelectParameters>
                
                <asp:ControlParameter Name="Nombre" Type="String" ControlID="TextBox1" />
                <asp:ControlParameter Name="SalarioXHora" Type="Int32" ControlID="TextBox2" />

            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
