<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="baja_accesorios.aspx.vb" Inherits="baja_accesorios" Theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 170px;
        }
        .auto-style2 {
            width: 428px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblcveAccesorio" runat="server" Text="Clave Accesorio"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtCveAccesorio" runat="server" Width="180px" MaxLength="3"></asp:TextBox>
                <asp:HyperLink ID="help1" runat="server" data-content="Ingresa la clave de algún accesorio que desea ver" data-original-title="Cave Accesorio" NavigateUrl="#" SkinID="helper" title=""></asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="lblAccesorioLike" runat="server" Text="Palabra Clave"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="txtPalabraClave" runat="server" Width="180px" MaxLength="200"></asp:TextBox>
                <asp:HyperLink ID="help2" runat="server" SkinID="helper" NavigateUrl="#" title="" 
                    data-content="Busca por medio de alguna palabra clave"
                    data-original-title="Palabra clave"></asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnBuscarSeleccionado" runat="server" Text="Buscar por seleccion" Width="191px" />
            </td>
            <td class="auto-style2">
                <asp:Button ID="btnBuscarTodos" runat="server" Text="Buscar Todos" Width="191px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style2">
                <asp:GridView ID="grdbajaAccesorios" runat="server" DataKeyNames ="cve_accesorio" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="cve_accesorio" HeaderText="Clave Accesorio" />
                        <asp:BoundField DataField="descr_accesorio" HeaderText="Descripcion Accesorio" />
                        <asp:CommandField ShowDeleteButton="True" DeleteText="Borrar Registro" />
                    </Columns>
                </asp:GridView>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

