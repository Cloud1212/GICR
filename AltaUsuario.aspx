<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="AltaUsuario.aspx.vb" Inherits="AltaUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table style="width:100%;">
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style3">Usuarios</td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style2">Usuario</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUsuario" runat="server" Width="138px" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate ="txtUsuario" runat="server" ErrorMessage="Elija un nombre de usuario">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" ControlToValidate ="txtUsuario" runat="server" ErrorMessage="CustomValidator">*</asp:CustomValidator>
                </td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td>Nombre</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtNombre" runat="server" Width="240px" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="Capture un nombre">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvNombre" ControlToValidate ="txtNombre" runat="server" ErrorMessage="CustomValidator">*</asp:CustomValidator>
                </td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="18px" />
                </td>
            </tr>
            <tr>
                <td>Contraseña</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtContra" runat="server" Width="146px" TextMode="Password" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvContra" ControlToValidate ="txtContra" runat="server" ErrorMessage="Debe capturar una contraseña">*</asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvContra" ControlToValidate ="txtContra" runat="server" ErrorMessage="CustomValidator">*</asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Confirma contraseña</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCContra" runat="server" TextMode="Password"  Width="142px" MaxLength="20"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCContra" ControlToValidate ="txtCContra" runat="server" ErrorMessage="Confirme su contraseña">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvCContra" ControlToCompare="txtContra" ControlToValidate="txtCContra" runat="server" ErrorMessage="Contraseñas diferentes, verifique sus contraseñas">*</asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Correo</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCorreo" runat="server" Width="192px" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCorreo" ControlToValidate="txtCorreo" runat="server" ErrorMessage="Por favor ingrese un correo">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revCorreo" ControlToValidate="txtCorreo" runat="server" ErrorMessage="Debe ser formato de correo valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Confirma correo</td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtCCorreo" runat="server" style="margin-right: 2px" Width="197px" MaxLength="50"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvCCorreo" ControlToValidate="txtCCorreo" runat="server" ErrorMessage="Favor de confirmar el correo">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvCCorreo" runat="server" ControlToValidate="txtCCorreo" ControlToCompare="txtCorreo" ErrorMessage="Las direcciones de correo deben ser iguales">*</asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Perfil</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="ddlPerfil" runat="server" AppendDataBoundItems ="true" >
                        <asp:ListItem Value="Elija perfil">Elija perfil</asp:ListItem>
                        <asp:ListItem>prueba</asp:ListItem>
                    </asp:DropDownList>
                    <asp:CustomValidator ID="cvPerfil" runat="server" ControlToValidate="ddlPerfil" ErrorMessage="Elija una opcion de perfil">*</asp:CustomValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1"></td>
                <td class="auto-style1">
                    <asp:Button ID="btnGuarda" runat="server" Text="Guardar usuario" />
                </td>
                <td class="auto-style1"></td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
</asp:Content>

