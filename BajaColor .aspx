<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="BajaColor .aspx.vb" Inherits="BajaColor_" Theme="SkinFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 216px;
        }
        .auto-style3 {
            width: 473px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
    <tr>
        <td class="auto-style2">Baja de Color</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">Tipo de Busqueda:</td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlBusqueda" runat="server" AutoPostBack="True">
                <asp:ListItem Value="0">Elije una opcion</asp:ListItem>
<asp:ListItem Value="1">Todos</asp:ListItem>
                <asp:ListItem Value="2">Descripcion</asp:ListItem>
                <asp:ListItem Value="3">TipoClave</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            <asp:HyperLink ID="help1" runat="server" SkinID="helper" NavigateUrl="#" title="" 
                    data-content="<table class='table'><tr><th>Todos</th><td>Muestra todos los registros de Color</td></tr><tr><th>Descripción</th><td>Habilita la busqueda por la descripción</td></tr><tr><th>Tipo Clave</th><td>Habilita la busqueda por el tipo de clave</td></tr></table>"
                    data-original-title="Tipo de Busqueda"></asp:HyperLink>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Width="175px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Label ID="lblBsca" runat="server" Text=""></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:TextBox ID="txtBuscar" runat="server" Visible ="false"  Width="147px" MaxLength="50"></asp:TextBox>
            <asp:Button ID="btnBuscar" runat="server" Visible ="false"   Text="Buscar" />
        </td>
        <td>
             <asp:HyperLink ID="help2" runat="server" SkinID="helper" NavigateUrl="#" title="" 
                    data-content="Busca en los registro lo que empieza por los que se le indica en este recuadro"
                    data-original-title="Busca" Visible="false"></asp:HyperLink>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate ="txtBuscar" ErrorMessage="Capture una descripcion o clave">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            &nbsp;</td>
        <td class="auto-style3">
            <asp:GridView ID="grdColor" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames ="cdgo_color" Width="450px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="cdgo_color" HeaderText="Clave" />
                    <asp:BoundField DataField="cve_color" HeaderText="Clave de color" />
                    <asp:BoundField DataField="descr_color" HeaderText="Descripcion de color" />
                    <asp:CommandField ButtonType="Button" DeleteText="Elimina" ShowDeleteButton="True" />
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
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

