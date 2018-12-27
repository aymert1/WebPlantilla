<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebCambio.aspx.cs" Inherits="WebPlantilla.WebCambio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Blue" Text="Cambio de contraseña"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Digite nueva contraseña"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Digite de nuevo nueva contraseña"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtCotrasenia" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Digitar nueva contrasenia" Font-Bold="True" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="txtReContrasenia" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtCotrasenia" ControlToValidate="txtReContrasenia" 
                        ErrorMessage="Contraseña es diferente al anterior" Font-Bold="True" 
                        ForeColor="Red">*</asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Se espera datos en ReDigitar contraseña">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Aceptar" />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Bold="True" 
                        ForeColor="Red" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
