<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebMenu.aspx.cs" Inherits="WebPlantilla.AccesoSistema.WebMenu1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Bienvenido Usuario"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Cerrar Sesion " />
        <br />
        <br />
        <asp:Label ID="lbmensaje" runat="server" Font-Strikeout="False" Font-Underline="True" ForeColor="Blue" Text="Ir a la pagina de comprobacion"></asp:Label>
    
    </div>
    </form>
</body>
</html>
