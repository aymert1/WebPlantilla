<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebListaEstudiantesXCarreraTipado.aspx.cs" Inherits="WebPlantilla.WebListaEstudiantesXCarreraTipado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="20pt" ForeColor="#0066FF" Text="Lista de  Estudiantes por  Carrera Profesional"></asp:Label>
    <br />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Seleccionar Carrera:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nombre_carrera" DataValueField="codigo_carrera">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [codigo_carrera], [nombre_carrera] FROM [tcarrera]"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_estudiante" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="codigo_estudiante" HeaderText="codigo_estudiante" ReadOnly="True" SortExpression="codigo_estudiante" />
            <asp:BoundField DataField="nombre_estudiante" HeaderText="nombre_estudiante" SortExpression="nombre_estudiante" />
            <asp:BoundField DataField="ap_estudiante" HeaderText="ap_estudiante" SortExpression="ap_estudiante" />
            <asp:BoundField DataField="am_estudiante" HeaderText="am_estudiante" SortExpression="am_estudiante" />
            <asp:BoundField DataField="codigo_carrera" HeaderText="codigo_carrera" SortExpression="codigo_carrera" />
            <asp:BoundField DataField="sexo_estudiante" HeaderText="sexo_estudiante" SortExpression="sexo_estudiante" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT codigo_estudiante, nombre_estudiante, ap_estudiante,am_estudiante,codigo_carrera, sexo_estudiante FROM testudiante WHERE (codigo_carrera = @codcarrera)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="codcarrera" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
