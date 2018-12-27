<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="WedListaCarreras.aspx.cs" Inherits="WebPlantilla.WedListaCarreras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Font-Size="25px" ForeColor="#3333FF" Text="Lista de carreras profecionales"></asp:Label>
        <br />
        <asp:GridView ID="gvescuelas" runat="server">
            <Columns>
                <asp:TemplateField HeaderText="Lista de Estudiantes">
                    <ItemTemplate>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "WedListaestudiantesxcarrera.aspx?codcarrera="+DataBinder.Eval(Container.DataItem,"codigo_carrera")+"&nomcarrera="+DataBinder.Eval(Container.DataItem,"nombre_carrera") %>'>ListarEstudiantes</asp:HyperLink>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="#0066FF" Text="Lista de estudiantes"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="gvestudiantes" runat="server">
            <EmptyDataTemplate>
                <asp:HyperLink ID="HyperLink2" runat="server">ListarCarrera</asp:HyperLink>
            </EmptyDataTemplate>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
