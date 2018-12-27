<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="MantenimientoEstudiante.aspx.cs" Inherits="WebPlantilla.WedMantenimiento.MantenimientoEstudiante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#3399FF" Text="Mantenimiento de Estudiantes"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Codigo:"></asp:Label>
    <asp:TextBox ID="txtcodigo" runat="server" Width="212px"></asp:TextBox>
    <asp:Button ID="btnbuscar" runat="server" OnClick="btnbuscar_Click" Text="Buscar" />
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Nombre:"></asp:Label>
    <asp:TextBox ID="txtnombre" runat="server" Width="206px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="A Paterno:"></asp:Label>
    <asp:TextBox ID="txtAPaterno" runat="server" Width="186px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="A Materno:"></asp:Label>
    <asp:TextBox ID="txtAMaterno" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label6" runat="server" Text="Carrera:"></asp:Label>
    <asp:DropDownList ID="ddlcarreras" runat="server" Height="16px" Width="181px" DataSourceID="SqlDataSource2" DataTextField="codigo_carrera" DataValueField="codigo_carrera">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [codigo_carrera] FROM [tcarrera]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label7" runat="server" Text="Sexo:"></asp:Label>
    <asp:RadioButtonList ID="rblsexo" runat="server">
        <asp:ListItem Value="M">Masculino</asp:ListItem>
        <asp:ListItem Value="F">Femenino</asp:ListItem>
    </asp:RadioButtonList>
    <asp:Label ID="Label8" runat="server" Text="Correro:"></asp:Label>
    <asp:TextBox ID="txtcorreo" runat="server" Width="200px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label9" runat="server" Text="Foto:"></asp:Label>
    <asp:TextBox ID="txtfoto" runat="server" Width="174px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lbmensaje" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <asp:Button ID="btnnuevo" runat="server" Text="Nuevo" OnClick="btnnuevo_Click" />
    <asp:Button ID="btninsertar" runat="server" Text="Insertar" OnClick="btninsertar_Click" />
    <asp:Button ID="btnmodificar" runat="server" Text="Modificar" OnClick="btnmodificar_Click" />
    <asp:Button ID="btneliminar" runat="server" Text="Eliminar" OnClick="btneliminar_Click" />
</asp:Content>
