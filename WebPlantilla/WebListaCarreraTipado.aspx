<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WebListaCarreraTipado.aspx.cs" Inherits="WebPlantilla.WebListaCarreraTipado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#0066FF" Text="Lista de carreras Profesionales"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo_carrera" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="codigo_carrera" HeaderText="codigo_carrera" ReadOnly="True" SortExpression="codigo_carrera" />
            <asp:BoundField DataField="nombre_carrera" HeaderText="nombre_carrera" SortExpression="nombre_carrera" />
            <asp:BoundField DataField="facultad_carrera" HeaderText="facultad_carrera" SortExpression="facultad_carrera" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [tcarrera] WHERE [codigo_carrera] = @original_codigo_carrera AND (([nombre_carrera] = @original_nombre_carrera) OR ([nombre_carrera] IS NULL AND @original_nombre_carrera IS NULL)) AND (([facultad_carrera] = @original_facultad_carrera) OR ([facultad_carrera] IS NULL AND @original_facultad_carrera IS NULL))" InsertCommand="INSERT INTO [tcarrera] ([codigo_carrera], [nombre_carrera], [facultad_carrera]) VALUES (@codigo_carrera, @nombre_carrera, @facultad_carrera)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [codigo_carrera], [nombre_carrera], [facultad_carrera] FROM [tcarrera]" UpdateCommand="UPDATE [tcarrera] SET [nombre_carrera] = @nombre_carrera, [facultad_carrera] = @facultad_carrera WHERE [codigo_carrera] = @original_codigo_carrera AND (([nombre_carrera] = @original_nombre_carrera) OR ([nombre_carrera] IS NULL AND @original_nombre_carrera IS NULL)) AND (([facultad_carrera] = @original_facultad_carrera) OR ([facultad_carrera] IS NULL AND @original_facultad_carrera IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_codigo_carrera" Type="String" />
            <asp:Parameter Name="original_nombre_carrera" Type="String" />
            <asp:Parameter Name="original_facultad_carrera" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="codigo_carrera" Type="String" />
            <asp:Parameter Name="nombre_carrera" Type="String" />
            <asp:Parameter Name="facultad_carrera" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nombre_carrera" Type="String" />
            <asp:Parameter Name="facultad_carrera" Type="String" />
            <asp:Parameter Name="original_codigo_carrera" Type="String" />
            <asp:Parameter Name="original_nombre_carrera" Type="String" />
            <asp:Parameter Name="original_facultad_carrera" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</asp:Content>
