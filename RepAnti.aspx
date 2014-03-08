<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="RepAnti.aspx.vb" Inherits="RepAnti" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 158px;
    }
    .auto-style2 {
        width: 358px;
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
            <td colspan="3">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Modelo</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style1" colspan="2">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Rango</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <center><asp:Button ID="btnGenera" runat="server"  Text="Genera reporte" /></center>
            </td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

