<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebComprobar.aspx.cs" Inherits="WebPlantilla.AccesoSistema.WebComprobar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lbmensaje" runat="server" Font-Bold="true" Font-Size="20pt"
            Text="El  Usuario sigue siendo"></asp:Label>
        <br />
        <asp:Button ID="btnCerrar" runat="server" Text="Cerrar Sesion" Font-Bold="True" />
        <br />
        <a href="WebMenu.aspx">Ir al Menu</a>

    </form>
</body>
</html>
