<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="ModificarCarline.aspx.vb" Inherits="ModificarCarline" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 20px;
            width: 239px;
        }
        .auto-style3 {
            width: 239px;
        }
        .auto-style4 {
            height: 20px;
            width: 233px;
        }
        .auto-style5 {
            width: 233px;
        }
        .auto-style6 {
            height: 20px;
            width: 247px;
        }
        .auto-style7 {
            width: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style4"></td>
            <td class="auto-style6"></td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblNombre" runat="server" Text="Nombre Carline"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtNombre" runat="server" Width="188px"></asp:TextBox>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblano" runat="server" Text="Año Carline"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtano" runat="server" Width="188px"></asp:TextBox>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblCodigo" runat="server" Text="Codigo Carline"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtCodigo" runat="server" Width="188px"></asp:TextBox>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
                <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="lblStatus" runat="server" Text="Status Carline"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtStatus" runat="server" Width="188px"></asp:TextBox>
            </td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="122px" />
            </td>
            <td>
                <asp:Button ID="btnCAncelar" runat="server" Text="Cancelar" Width="122px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:GridView ID="grdCarline" runat="server" AutoGenerateColumns="False" Width="328px">
        <Columns>
            <asp:BoundField DataField="CodigoCarline" FooterText="Codigo Carline" ReadOnly="True" />
            <asp:BoundField DataField="NombreCarline" FooterText="Nombre Carline" />
            <asp:BoundField DataField="AnoProd" FooterText="Año" />
            <asp:BoundField DataField="StatusCarline" FooterText="Status" />
            <asp:CommandField ShowEditButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>

