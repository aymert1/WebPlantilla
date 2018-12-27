<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WedConsultaEstudiante.aspx.cs" Inherits="WebPlantilla.WedConsultaEstudiante" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="X-Large" Text="Buscar Estudiante"></asp:Label>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Digitar Apellido Paterno:"></asp:Label>
    <asp:TextBox ID="txtapellido" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Buscar" />
    <br />
    <br />
    <br />
        <asp:GridView ID="gvconsutaestudiante" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="Lista de Carreras">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "WebMantenimientoCarerraXestudiante.aspx?codcarrera="+DataBinder.Eval(Container.DataItem,"codigo_carrera") %>'>ModificarCarrera</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    <br />
    </asp:Content>
