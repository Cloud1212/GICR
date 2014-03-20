<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="Color.aspx.vb" Inherits="Color" Theme="SkinFile" %>

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
                <asp:HyperLink ID="help1" runat="server" SkinID="helper" NavigateUrl="#" title="" 
                    data-content="Clave unica que representa el color que se desea guardar"
                    data-original-title="Clave de Color"></asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td class="auto-style1">Descripcion de color</td>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate ="txtDesc" runat="server" ErrorMessage="Capture una descripción para el color">*</asp:RequiredFieldValidator>
                <asp:HyperLink ID="help2" runat="server" SkinID="helper" NavigateUrl="#" title="" 
                    data-content="Este es la manera en que se describe el color"
                    data-original-title="Descripcion del color"></asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">Vista de Color</td>
            <td>
                <asp:HyperLink ID="help3" runat="server" SkinID="helper" NavigateUrl="#" title="" 
                    data-content="Representa el archivo de imagen que se desea subir"
                    data-original-title="Visa de color"></asp:HyperLink>
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

