<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="EstudiantesSexo.aspx.cs" Inherits="WebPlantilla.EstudiantesSexo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Estudiantes por Sexo"></asp:Label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem Value="M">Masculino</asp:ListItem>
        <asp:ListItem Value="F">Femenino</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" />
    <asp:GridView ID="gvbuscarsexo" runat="server">
    </asp:GridView>
</asp:Content>
