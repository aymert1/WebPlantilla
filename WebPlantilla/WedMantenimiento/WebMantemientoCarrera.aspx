<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebMantemientoCarrera.aspx.cs" Inherits="WebPlantilla.WedMantenimiento.WebMantemientoCarrera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#3366FF" Text="Mantenimiento Carrera Profesional"></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Codigo Carrera:"></asp:Label>
    <asp:TextBox ID="txtcarrera" runat="server"></asp:TextBox>
    <asp:Button ID="Button5" runat="server" Text="Buscar" OnClick="Button5_Click" />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Nombre Carrera:"></asp:Label>
    <asp:TextBox ID="txtnombrecarrera" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Facultad:"></asp:Label>
    <asp:TextBox ID="txtnombrefacultad" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lamensaje" runat="server" BackColor="White" BorderColor="Red" ForeColor="Red"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Nuevo" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Insertar" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Modificar" OnClick="Button3_Click" />
    <asp:Button ID="Button4" runat="server" Text="Eliminar" />
    <br />
</asp:Content>
