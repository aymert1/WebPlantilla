<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="AlumnosGmail.aspx.cs" Inherits="WebPlantilla.Consultas.AlumnosGmail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Blue" Text="Alumnos Correos Gmail"></asp:Label>
    <asp:GridView ID="gvAlumnosGmail" runat="server">
    </asp:GridView>
</asp:Content>
