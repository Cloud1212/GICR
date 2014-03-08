<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="EditaUsuario.aspx.vb" Inherits="EditaUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td>&nbsp;</td>
            <td>Edita Usuarios</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Busca usuario:</td>
            <td>
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                <asp:Button ID="btnUsuario" runat="server" Text="Busca usuario" />
                <asp:RequiredFieldValidator ID="rfvBusca" ControlToValidate ="txtUsuario" runat="server" ErrorMessage="Debe teclear un usuario">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="gvEdita" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="545px" DataSourceID="SqlDataSource1" DataKeyNames="cdgo_Usuarios">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="cdgo_Usuarios" HeaderText="cdgo_Usuarios" InsertVisible="False" ReadOnly="True" SortExpression="cdgo_Usuarios" />
                        <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" ReadOnly="True" />
                        <asp:BoundField DataField="nom_Usuario" HeaderText="nom_Usuario" SortExpression="nom_Usuario" />
                        <asp:BoundField DataField="correo_Usuario" HeaderText="correo_Usuario" SortExpression="correo_Usuario" />
                        <asp:BoundField DataField="perfil_Usuario" HeaderText="perfil_Usuario" SortExpression="perfil_Usuario" />
                        <asp:BoundField DataField="status_Usuario" HeaderText="status_Usuario" SortExpression="status_Usuario" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion1 %>" SelectCommand="SELECT [Usuario], [nom_Usuario], [correo_Usuario], [perfil_Usuario], [status_Usuario], [cdgo_Usuarios] FROM [cr_Usuarios] WHERE ([Usuario] LIKE '%' + @Usuario + '%')" DeleteCommand="DELETE FROM [cr_Usuarios] WHERE [cdgo_Usuarios] = @cdgo_Usuarios" InsertCommand="INSERT INTO [cr_Usuarios] ([Usuario], [nom_Usuario], [correo_Usuario], [perfil_Usuario], [status_Usuario]) VALUES (@Usuario, @nom_Usuario, @correo_Usuario, @perfil_Usuario, @status_Usuario)" UpdateCommand="UPDATE [cr_Usuarios] SET [Usuario] = [Usuario], [nom_Usuario] = @nom_Usuario, [correo_Usuario] = @correo_Usuario, [perfil_Usuario] = @perfil_Usuario, [status_Usuario] = @status_Usuario WHERE [cdgo_Usuarios] = @cdgo_Usuarios">
                    <DeleteParameters>
                        <asp:Parameter Name="cdgo_Usuarios" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Usuario" Type="String" />
                        <asp:Parameter Name="nom_Usuario" Type="String" />
                        <asp:Parameter Name="correo_Usuario" Type="String" />
                        <asp:Parameter Name="perfil_Usuario" Type="String" />
                        <asp:Parameter Name="status_Usuario" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtUsuario" Name="Usuario" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Usuario" Type="String" />
                        <asp:Parameter Name="nom_Usuario" Type="String" />
                        <asp:Parameter Name="correo_Usuario" Type="String" />
                        <asp:Parameter Name="perfil_Usuario" Type="String" />
                        <asp:Parameter Name="status_Usuario" Type="String" />
                        <asp:Parameter Name="cdgo_Usuarios" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

