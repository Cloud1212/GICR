<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="Accesorios.aspx.vb" Inherits="Accesorios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 157px;
        }
        .auto-style2 {
            width: 75px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width:100%;">
        <tr>
            <td >&nbsp;</td>
            <td colspan="2" >Gestion de Accesorios</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="2">&nbsp;</td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="16px" Width="213px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">Clave de Accesorio</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtClave" runat="server" Width="113px"></asp:TextBox>
            </td>
            <td>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtClave" runat="server" ErrorMessage="Debe  capturar una clave">*</asp:RequiredFieldValidator>
               
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">Descripcion de accesorio</td>
            <td class="auto-style2">
                <asp:TextBox ID="txtDesc" runat="server" Width="184px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDesc" ErrorMessage="Capture una descripcion del accesorio">*</asp:RequiredFieldValidator>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">Foto de accesorio</td>
            <td class="auto-style2">
                <asp:FileUpload ID="fULFoto" runat="server" />
            </td>
            <td>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style2">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

