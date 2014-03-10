<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="RepAnti.aspx.vb" Inherits="RepAnti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 209px;
    }
    .auto-style2 {
        width: 319px;
    }
    .auto-style3 {
        width: 229px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">Genera reporte de Antiguedad </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:DropDownList ID="ddlModelos" runat="server" >
                    <asp:ListItem Value="0">Modelo</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1" colspan="2">
                <asp:DropDownList ID="ddlRango" runat="server">
                    <asp:ListItem Value="0">Rango</asp:ListItem>
                    <asp:ListItem Value="1">Todos</asp:ListItem>
                    <asp:ListItem Value="2">Menor a 30 días</asp:ListItem>
                    <asp:ListItem Value="3">Mayor a 29 y menor que 60 días</asp:ListItem>
                    <asp:ListItem Value="4">Mayor a 59 y menor a 90 días</asp:ListItem>
                    <asp:ListItem Value="5">Mayor de 90 días</asp:ListItem>
                </asp:DropDownList>
                <asp:CustomValidator ID="CustomValidator1" ControlToValidate ="ddlRango" runat="server" ErrorMessage="CustomValidator">*</asp:CustomValidator>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <center><asp:Button ID="btnGenera" runat="server"  Text="Genera reporte" /></center>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="533px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="gpo_asig" HeaderText="Modelo" />
                        <asp:BoundField DataField="anio_modelo" HeaderText="Año" />
                        <asp:BoundField DataField="ord_num" HeaderText="Orden" />
                        <asp:BoundField DataField="antiguedad_inventario" HeaderText="Días de antiguedad" />
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
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

