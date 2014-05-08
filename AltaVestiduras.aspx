<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="AltaVestiduras.aspx.vb" Inherits="AltaVestiduras" %>
<%@ Register TagPrefix="asp" Namespace ="AjaxControlToolkit" Assembly ="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 111px;
        }
        .auto-style2 {
            width: 170px;
        }
        .auto-style3 {
            width: 132px;
        }
        .auto-style4 {
            width: 111px;
            height: 20px;
        }
        .auto-style5 {
            height: 20px;
        }
        .auto-style6 {
            width: 104px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table style="width:100%;">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>Vestiduras</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>ALTA</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>
    <p>
        &nbsp;</p>
    <table style="width:100%;">
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Label ID="lblCLave" runat="server" Text="Clave"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtClave" runat="server" Width="58px" MaxLength="3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvClave" ControlToValidate ="txtCLave" runat="server" ErrorMessage="Debe capturar una clave de Vestidura">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="csvCLave" ControlToValidate ="txtClave" runat="server" ErrorMessage="Longitud no permitida">*</asp:CustomValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td>
                <asp:Label ID="lblDesc" runat="server" Text="Descripción"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" Width="319px" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDesc" ControlToValidate ="txtDesc" runat="server" ErrorMessage="Capture una descripción">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="csvDesc" ControlToValidate ="txtDesc" runat="server" ErrorMessage="Longitud no permitida">*</asp:CustomValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnGuarda" runat="server" Text="Guardar" />
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
    </p>


</asp:Content>

