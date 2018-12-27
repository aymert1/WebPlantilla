<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebListaEstudiantexSexoCarrera.aspx.cs" Inherits="WebPlantilla.WebListaEstudiantexSexoCarrera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="X-Large" ForeColor="#0066FF" Text="Lista de estudiantes por sexo "></asp:Label>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Lista de Carreras:"></asp:Label>
    <asp:DropDownList ID="DDlistaCarrera" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="nombre_carrera" DataValueField="codigo_carrera">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [codigo_carrera], [nombre_carrera] FROM [tcarrera]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Masculino"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_estudiante" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="codigo_estudiante" HeaderText="codigo_estudiante" ReadOnly="True" SortExpression="codigo_estudiante" />
            <asp:BoundField DataField="nombre_estudiante" HeaderText="nombre_estudiante" SortExpression="nombre_estudiante" />
            <asp:BoundField DataField="ap_estudiante" HeaderText="ap_estudiante" SortExpression="ap_estudiante" />
            <asp:BoundField DataField="am_estudiante" HeaderText="am_estudiante" SortExpression="am_estudiante" />
            <asp:BoundField DataField="nombre_carrera" HeaderText="nombre_carrera" SortExpression="nombre_carrera" />
            <asp:BoundField DataField="sexo_estudiante" HeaderText="sexo_estudiante" SortExpression="sexo_estudiante" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT testudiante.codigo_estudiante, testudiante.nombre_estudiante, testudiante.ap_estudiante, testudiante.am_estudiante, tcarrera.nombre_carrera, testudiante.sexo_estudiante FROM tcarrera INNER JOIN testudiante ON tcarrera.codigo_carrera = testudiante.codigo_carrera WHERE (testudiante.sexo_estudiante = 'M') AND (testudiante.codigo_carrera = @codcarrera)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DDlistaCarrera" Name="codcarrera" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Femenino "></asp:Label>
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_estudiante" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="codigo_estudiante" HeaderText="codigo_estudiante" ReadOnly="True" SortExpression="codigo_estudiante" />
            <asp:BoundField DataField="nombre_estudiante" HeaderText="nombre_estudiante" SortExpression="nombre_estudiante" />
            <asp:BoundField DataField="ap_estudiante" HeaderText="ap_estudiante" SortExpression="ap_estudiante" />
            <asp:BoundField DataField="am_estudiante" HeaderText="am_estudiante" SortExpression="am_estudiante" />
            <asp:BoundField DataField="nombre_carrera" HeaderText="nombre_carrera" SortExpression="nombre_carrera" />
            <asp:BoundField DataField="sexo_estudiante" HeaderText="sexo_estudiante" SortExpression="sexo_estudiante" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT testudiante.codigo_estudiante, testudiante.nombre_estudiante, testudiante.ap_estudiante, testudiante.am_estudiante, tcarrera.nombre_carrera, testudiante.sexo_estudiante FROM tcarrera INNER JOIN testudiante ON tcarrera.codigo_carrera = testudiante.codigo_carrera WHERE (testudiante.sexo_estudiante = 'F') AND (testudiante.codigo_carrera = @codcarrera)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DDlistaCarrera" Name="codcarrera" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
