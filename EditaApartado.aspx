<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="EditaApartado.aspx.vb" Inherits="EditaApartado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
        }
    .auto-style2 {
        width: 193px;
        height: 27px;
    }
    .auto-style3 {
        height: 27px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">Edita Apartados</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Folio:</td>
            <td class="auto-style3">
                <asp:TextBox ID="txtFolio" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FolioApartado" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="535px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="FolioApartado" HeaderText="Folio" ReadOnly="True" SortExpression="FolioApartado" />
                        <asp:BoundField DataField="nombreCliente" HeaderText="Nombre Cliente" SortExpression="nombreCliente" />
                        <asp:BoundField DataField="telCliente" HeaderText="Teléfono Cliente" SortExpression="telCliente" />
                        <asp:BoundField DataField="mailCliente" HeaderText="Mail" SortExpression="mailCliente" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:conexion1 %>" DeleteCommand="DELETE FROM [apartados] WHERE [FolioApartado] = @FolioApartado" InsertCommand="INSERT INTO [apartados] ([FolioApartado], [nombreCliente], [telCliente], [mailCliente]) VALUES (@FolioApartado, @nombreCliente, @telCliente, @mailCliente)" SelectCommand="SELECT [FolioApartado], [nombreCliente], [telCliente], [mailCliente] FROM [apartados] WHERE ([FolioApartado] LIKE '%' + @FolioApartado + '%')" UpdateCommand="UPDATE [apartados] SET [nombreCliente] = @nombreCliente, [telCliente] = @telCliente, [mailCliente] = @mailCliente WHERE [FolioApartado] = @FolioApartado">
                    <DeleteParameters>
                        <asp:Parameter Name="FolioApartado" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FolioApartado" Type="String" />
                        <asp:Parameter Name="nombreCliente" Type="String" />
                        <asp:Parameter Name="telCliente" Type="String" />
                        <asp:Parameter Name="mailCliente" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtFolio" Name="FolioApartado" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="nombreCliente" Type="String" />
                        <asp:Parameter Name="telCliente" Type="String" />
                        <asp:Parameter Name="mailCliente" Type="String" />
                        <asp:Parameter Name="FolioApartado" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="FolioApartado" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="707px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="FolioApartado" HeaderText="Folio" ReadOnly="True" SortExpression="FolioApartado" />
                        <asp:BoundField DataField="modeloAuto" HeaderText="Modelo" SortExpression="modeloAuto" />
                        <asp:BoundField DataField="usuario" HeaderText="Usuario" SortExpression="usuario" />
                        <asp:BoundField DataField="anioAuto" HeaderText="Año" SortExpression="anioAuto" />
                        <asp:BoundField DataField="colorAuto" HeaderText="Clave color" SortExpression="colorAuto" />
                        <asp:BoundField DataField="paqueteAuto" HeaderText="Paquete" SortExpression="paqueteAuto" />
                        <asp:BoundField DataField="ordenAuto" HeaderText="Orden" SortExpression="ordenAuto" />
                        <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:conexion1 %>" SelectCommand="SELECT [FolioApartado], [usuario], [modeloAuto], [anioAuto], [colorAuto], [paqueteAuto], [ordenAuto], [status] FROM [apartados] WHERE ([FolioApartado] LIKE '%' + @FolioApartado + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtFolio" Name="FolioApartado" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

