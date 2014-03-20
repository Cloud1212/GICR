<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="Bajausuario.aspx.vb" Inherits="Bajausuario" Theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>&nbsp;</td>
            <td>Consulta y baja de usuarios</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Busca usuario:</td>
            <td>
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                <asp:HyperLink ID="help1" runat="server" SkinID="helper" NavigateUrl="#" title="" 
                    data-content="Permite buscar a un usario que comienze con el texto del cuado"
                    data-original-title="Busca Usuario"></asp:HyperLink>
                <asp:Button ID="btnUsuario" runat="server" Text="Buscar usuario" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="grdUsuario" runat="server" AutoGenerateColumns="False"  Width="588px" DataKeyNames ="cdgo_Usuarios" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="cdgo_Usuarios" HeaderText="Clave" Visible="False" />
                        <asp:BoundField DataField="usuario" HeaderText="Usuario" />
                        <asp:BoundField DataField="nom_Usuario" HeaderText="Nombre" />
                        <asp:BoundField DataField="correo_Usuario" HeaderText="Correo" />
                        <asp:BoundField DataField="perfil_Usuario" HeaderText="Perfil" />
                        <asp:BoundField DataField="status_Usuario" HeaderText="Status" />
                        <asp:CommandField ButtonType="Button" DeleteText="Baja Usuario" ShowDeleteButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

