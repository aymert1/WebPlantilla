<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebDatos.aspx.cs" Inherits="WebPlantilla.WebDatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Digitar notas"></asp:Label>
        <asp:TextBox ID="txtNotas" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" 
            ControlToValidate="txtNotas" ErrorMessage="Se espera dato de 0 a 20" 
            ForeColor="Red" MaximumValue="20" MinimumValue="0" Type="Integer">*</asp:RangeValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Aceptar" />
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
