<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WedListaestudiantesxcarrera.aspx.cs" Inherits="WebPlantilla.WedListaestudiantesxcarrera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="30px" ForeColor="#3399FF" Text="La Lista  de Estudiantes es:"></asp:Label>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</asp:Content>
