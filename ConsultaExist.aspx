<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="ConsultaExist.aspx.vb" Inherits="ConsultaExist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style3 {
            height: 34px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <table style="width:100%;">
        <tr>
            <td class="auto-style10">Consulta Existencia</td>
            <td class="auto-style4"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td rowspan="6" class="auto-style5">
                <table style="width: 99%; height: 240px;">
                    <tr>
                        <td class="auto-style8"></td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                <asp:DropDownList ID="ddlModelo" runat="server">
                    <asp:ListItem>Modelo</asp:ListItem>
                </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style7">
                <asp:DropDownList ID="ddlAno" runat="server">
                    <asp:ListItem>Año</asp:ListItem>
                </asp:DropDownList>
                        </td>

                    </tr>
                        <tr>
                        <td class="auto-style7">
                <asp:DropDownList ID="ddlColor" runat="server">
                    <asp:ListItem>Color</asp:ListItem>
                </asp:DropDownList>
                            </td>

                    </tr>
                        <tr>
                        <td class="auto-style7">

                            </td>
                    </tr>
                                        </tr>
                        <tr>
                        <td class="auto-style7">

                            </td>
                    </tr>
                </table>
            </td>

            <td rowspan="6">
                <table style="width:100%; height: 234px;">
                    <tr>
                        <td class="auto-style9">
                <asp:Image ID="Image2" runat="server" Height="108px" Width="126px" />
                        </td>
                        <td>
                <asp:GridView ID="grdExistencia" runat="server">
                </asp:GridView>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblModelo" runat="server" Text="Modelo"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblAño" runat="server" Text="Año"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                <asp:Label ID="lblColor" runat="server" Text="Color"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btnConsulta" runat="server" Text="Consultar" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
