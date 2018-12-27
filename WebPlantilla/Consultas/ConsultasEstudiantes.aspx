<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="ConsultasEstudiantes.aspx.cs" Inherits="WebPlantilla.Consultas.ConsultasEstudiantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="Blue" Text="Estudiantes con respectivas Carreras"></asp:Label>
    <asp:GridView ID="gvEstudiantesCarrera" runat="server">
    </asp:GridView>
</asp:Content>
