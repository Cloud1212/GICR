﻿<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="ConsultaExist.aspx.vb" Inherits="ConsultaExist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style2 {
            width: 191px;
            height: 34px;
        }
        .auto-style3 {
            height: 34px;
        }
        .auto-style1 {
            width: 191px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    
   

<body>
    
    <div>
    
        <br />
        <table style="width:100%;">
        <tr>
            <td class="auto-style2">Consulta Existencias</td>
            <td class="auto-style3"></td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
            <td rowspan="6">
                <asp:Image ID="Image2" runat="server" Height="131px" />
            </td>
            <td rowspan="6">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Modelo</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>Año</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>Color</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList4" runat="server">
                    <asp:ListItem>Transmision</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Button ID="btnConsulta" runat="server" Text="Consultar" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    
    </div>
   
</body>
</html>

</asp:Content>

