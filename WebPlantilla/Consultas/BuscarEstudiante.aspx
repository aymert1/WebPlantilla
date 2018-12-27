<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="BuscarEstudiante.aspx.cs" Inherits="WebPlantilla.Consultas.BuscarEstudiante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Black" Text="Buscar Estudiantes"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem Value="1">Codigo</asp:ListItem>
        <asp:ListItem Value="2">Nombre</asp:ListItem>
        <asp:ListItem Value="3">Ap Paterno</asp:ListItem>
        <asp:ListItem Value="4">Ap Materno</asp:ListItem>
    </asp:RadioButtonList>
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="1">ADMINISTRACION</asp:ListItem>
        <asp:ListItem Value="2">AGROINDUSTRIAL</asp:ListItem>
        <asp:ListItem Value="3">MINAS</asp:ListItem>
        <asp:ListItem Value="4">INFORMATICA Y SISTEMAS</asp:ListItem>
        <asp:ListItem Value="5">MEDECINA VETERINARIA</asp:ListItem>
        <asp:ListItem Value="6">EDUCACION INICIAL</asp:ListItem>
    </asp:DropDownList>
    <asp:Label ID="Label2" runat="server" Text="Digitar :"></asp:Label>
    <asp:TextBox ID="txtbuscador" runat="server"></asp:TextBox>
    <asp:Button ID="btnbuscar" runat="server" OnClick="btnbuscar_Click" Text="Buscar" />
    <asp:GridView ID="gvEstudiantes" runat="server">
    </asp:GridView>
</asp:Content>
