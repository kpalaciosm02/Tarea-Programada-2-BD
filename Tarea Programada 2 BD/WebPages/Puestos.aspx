<%@ Page Title="Puestos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Puestos.aspx.cs" Inherits="Tarea_Programada_2_BD.WebPages.Puestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
        <asp:Button ID="Button1" runat="server" Text="Insertar" OnClick="Button1_Click" />
        &nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Confirmar Cambios" />
    <asp:Button ID="Button3" runat="server" Text="Borrar" />
    <br />
    <br />   
    <table style="width:100%;">
        <tr>
            <td class="modal-sm" style="width: 109px">Puesto</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="modal-sm" style="width: 109px">Salario por hora</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
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
        <asp:GridView ID ="GridView1" runat="server" DataKeyNames="IdTipoIdentificacion"
            DataSourceID="SqlDataSource1" CssClass="auto-style1" Width="338px" AllowSorting="True">

            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:DynamicField DataField="IdTipoIdentificacion" HeaderText="IdTipoIdentificacion" />
                <asp:DynamicField DataField="Nombre" HeaderText="Nombre" />
                <asp:DynamicField DataField="Puesto" HeaderText="Puesto" />
                <asp:DynamicField DataField="IdDepartamento" HeaderText="IdDepartamento" />
                <asp:DynamicField DataField="FechaNacimiento" HeaderText="FechaNacimiento" />

            </Columns>

        </asp:GridView>

        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TareaDosConexionEmpleado %>" SelectCommand="SELECT [Nombre], [IdTipoIdentificacion], [ValorDocumentoIdentificacion], [IdDepartamento], [Puesto], [FechaNacimiento] FROM [Empleado]"></asp:SqlDataSource>
        <br />
    </div>
</asp:Content>
