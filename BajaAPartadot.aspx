<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="BajaAPartadot.aspx.vb" Inherits="BajaAPartadot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td style="height: 20px"></td>
            <td class="modal-sm" style="width: 263px; height: 20px;">Baja de APartado</td>
            <td style="height: 20px">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="modal-sm" style="width: 263px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Folio:</td>
            <td class="modal-sm" style="width: 263px">
                <asp:TextBox ID="txtFolio" runat="server" Width="175px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFolio" ControlToValidate ="txtFolio" runat="server" ErrorMessage="Capture un folio o nombre de usuario">*</asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="btnCancela" runat="server" Text="Cancelar" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="modal-sm" style="width: 263px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="modal-sm" style="width: 263px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames ="folioApartado"  CellPadding="4" ForeColor="#333333" GridLines="None" Width="663px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="folioapartado" HeaderText="Folio" />
                        <asp:BoundField DataField="nombreCliente" HeaderText="Nombre" />
                        <asp:BoundField DataField="usuario" HeaderText="Usuario" />
                        <asp:BoundField DataField="modeloAuto" HeaderText="Modelo" />
                        <asp:BoundField DataField="anioAuto" HeaderText="Año" />
                        <asp:BoundField DataField="paqueteAuto" HeaderText="Paquete" />
                        <asp:BoundField DataField="status" HeaderText="Status" />
                        <asp:CommandField ButtonType="Button" DeleteText="Cancelar" ShowDeleteButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:conexion1 %>" SelectCommand="SELECT FolioApartado, nombreCliente, telCliente, mailCliente, usuario, modeloAuto, anioAuto, colorAuto, paqueteAuto, ordenAuto, status FROM apartados WHERE (FolioApartado LIKE '%' + @FolioApartado + '%') OR (usuario LIKE '%' + @usuario + '%')">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtFolio" Name="FolioApartado" PropertyName="Text" />
                        <asp:ControlParameter ControlID="txtFolio" Name="usuario" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

