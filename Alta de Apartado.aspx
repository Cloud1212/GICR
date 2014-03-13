<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="Alta de Apartado.aspx.vb" Inherits="Alta_de_Apartado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
        width: 226px;
    }
    .auto-style3 {
        width: 135px;
    }
        .auto-style4 {
            width: 175px;
        }
        .auto-style5 {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td colspan="3"><center>Alta de Apartados</center></td>
            <td>
                <asp:Label ID="lblFecha" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Datos del cliente:</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">Nombre:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtNombre" runat="server" Width="204px" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate ="txtNombre" ErrorMessage="Capture el nombre del cliente">*</asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">Teléfono:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtTelefono" runat="server" Width="141px" MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvTelefono" ControlToValidate ="txtTelefono" runat="server" ErrorMessage="Capture un teléfono de cliente">*</asp:RequiredFieldValidator>
                <asp:CustomValidator ID="csvTelefono" ControlToValidate ="txtTelefono" runat="server" ErrorMessage="CustomValidator">*</asp:CustomValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">Mail:</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtMail" runat="server" MaxLength ="50" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMail" ControlToValidate ="txtMail" runat="server" ErrorMessage="Capture la dirección de correo">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revMail" ControlToValidate ="txtMail" runat="server" ErrorMessage="EL formato de correo no es valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Persona que lo atiende:</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style3">Vendedor:</td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlVendedor" runat="server">
                    <asp:ListItem Value="0">Seleccione un vendedor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <table style="width: 100%;">
        <tr>
            <td class="auto-style5">Apartado:</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:DropDownList ID="ddlModelo" runat="server" AutoPostBack ="true" >
                    <asp:ListItem Value="0">Seleccione un modelo</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="ddlAnio" runat="server" AutoPostBack ="true" >
                    <asp:ListItem Value="0">Elije año</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="ddlColor" runat="server" AutoPostBack ="true" >
                    <asp:ListItem Value="0">Seleccione color</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="ddlPaquete" runat="server" AutoPostBack ="true" >
                    <asp:ListItem Value="0">Seleccione paquete</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:DropDownList ID="ddlOrden" runat="server" AutoPostBack ="true" >
                    <asp:ListItem Value="0">Seleccione orden</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Button ID="btnPrevia" runat="server" Text="Vista" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="5">
                <asp:GridView ID="grdVista" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="748px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="gpo_asig" HeaderText="Modelo" />
                        <asp:BoundField DataField="anio_modelo" HeaderText="Año" />
                        <asp:BoundField DataField="descr_color" HeaderText="Color" />
                        <asp:BoundField DataField="paquete" HeaderText="Paquete" />
                        <asp:BoundField DataField="ord_num" HeaderText="Orden" />
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
        </tr>
        <tr>
            <td class="auto-style5" colspan="5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="5">
                <asp:Button ID="btnAparta" runat="server" Text="Genera apartado" />
            </td>
        </tr>
    </table>
    </asp:Content>

