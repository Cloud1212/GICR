<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="Color.aspx.vb" Inherits="Color" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 169px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">Gestion de colores</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">Clave de color</td>
            <td>
                <asp:TextBox ID="txtColor" runat="server" MaxLength="3"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate ="txtColor" runat="server" ErrorMessage="Capture una clave de color">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="csvClave" ControlToValidate ="txtColor" runat="server" ErrorMessage="CustomValidator">*</asp:CustomValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">Descripcion de color</td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate ="txtDesc" runat="server" ErrorMessage="Capture una descripción para el color">*</asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">Vista de Color</td>
            <td>
                <asp:FileUpload ID="fulColor" runat="server" />
                
                <asp:CustomValidator ID="csvColor" runat="server" ErrorMessage="CustomValidator">*</asp:CustomValidator>
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            
            <td class="auto-style1">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="btnGuarda" runat="server" Text="Guardar" />
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

