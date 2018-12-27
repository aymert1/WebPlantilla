<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebMantenimientoCarerraXestudiante.aspx.cs" Inherits="WebPlantilla.WebMantenimientoCarerraXestudiante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Mantenimientode Carrera por Estudiante"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="CodigoCarrera"></asp:Label>
    <asp:TextBox ID="txtcodigocarrera" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Nombre"></asp:Label>
    <asp:TextBox ID="txtnombrecarrera" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Facultad"></asp:Label>
    <asp:TextBox ID="txtfacultadcarrera" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="lbmensaje" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <asp:Button ID="btnmodificar" runat="server" OnClick="btnmodificar_Click" Text="Modificar" />
    <asp:Button ID="btneliminar" runat="server" Text="Eliminar" />
    <br />
</asp:Content>
