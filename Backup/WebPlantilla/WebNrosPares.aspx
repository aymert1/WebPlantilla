<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebNrosPares.aspx.cs" Inherits="WebPlantilla.WebNrosPares" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label2" runat="server" Text="REgistrar nro pares"></asp:Label>
    </p>
    <p>
        <br />
        <asp:Label ID="Label1" runat="server" Text="Digitar número"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:CustomValidator ID="CustomValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Se espera un numero par" 
            ForeColor="Red" onservervalidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Aceptar" />
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
        ForeColor="Red" />
</asp:Content>
