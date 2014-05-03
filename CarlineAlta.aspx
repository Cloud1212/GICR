<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="CarlineAlta.aspx.vb" Inherits="CarlineAlta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            width: 312px;
        }
        .auto-style3 {
            height: 20px;
            width: 312px;
        }
        .auto-style5 {
            height: 20px;
            width: 389px;
        }
        .auto-style6 {
            width: 389px;
        }
        .auto-style7 {
            width: 359px;
        }
        .auto-style8 {
            height: 20px;
            width: 359px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%; height: 156px;">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblCod" runat="server" Text="Codigo Carline"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="txtCod" runat="server" Width="351px" MaxLength="10"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="rfvcdg" runat="server" ErrorMessage="Por favor ingrese un codigo para el Carline" ControlToValidate="txtCod"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="lblNom" runat="server" Text="Nombre del nuevo Carline"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TxtNom" runat="server" Width="351px" MaxLength="20"></asp:TextBox>
            </td>
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="Por favor ingrese un nombre para el Carline" ControlToValidate="txtNom" ></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
        </tr>
                <tr>
            <td class="auto-style3">
                <asp:Label ID="lblAno" runat="server" Text="Año de Carline"></asp:Label>
                    </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtAno" runat="server" Width="351px" MaxLength="4"></asp:TextBox>
                    </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="rfvano" runat="server" ErrorMessage="Por favor ingrese el año del carline" ControlToValidate="txtAno"></asp:RequiredFieldValidator>
                    </td>
            <td class="auto-style1"></td>
        </tr>
                <tr>
            <td class="auto-style3"></td>
            <td class="auto-style5">
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" Width="214px" />
                    </td>
            <td class="auto-style8">
                <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Width="214px" CausesValidation="False" PostBackUrl="~/CarlineAlta.aspx" />
                    </td>
            <td class="auto-style1"></td>
        </tr>
                <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

