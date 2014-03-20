<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="ConsultaSug.aspx.vb" Inherits="ConsultaSug" Theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 479px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td>Sugerencia de inventario</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>Modelo</asp:ListItem>
                </asp:DropDownList>
                <asp:HyperLink ID="help1" runat="server" SkinID="helper" NavigateUrl="#" title="" 
                    data-content="Modelo que se desa hacer la consulta"
                    data-original-title="Modelo"></asp:HyperLink>
            </td>
            <td class="auto-style1">
                <asp:Button ID="btnConsulta" runat="server" Text="Consultar" style="margin-left: 0px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
<asp:GridView ID="GridView2" runat="server" Width="267px">
</asp:GridView>
</asp:Content>

