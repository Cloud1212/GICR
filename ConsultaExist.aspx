<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="ConsultaExist.aspx.vb" Inherits="ConsultaExist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            height: 20px;
            width: 238px;
        }
        .auto-style5 {
            width: 238px;
        }
        .auto-style6 {
            height: 20px;
            width: 349px;
        }
        .auto-style7 {
            width: 349px;
        }
        .auto-style8 {
            height: 20px;
            width: 81px;
        }
        .auto-style9 {
            width: 81px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <table style="width:100%;">
              <tr>
                  <td class="auto-style8">&nbsp;</td>
                  <td class="auto-style4">Consulta de existencias</td>
                  <td class="auto-style6"></td>
                  <td class="auto-style3"></td>
              </tr>
              <tr>
                  <td class="auto-style9">&nbsp;</td>
                  <td class="auto-style5">TIpo de consulta:</td>
                  <td class="auto-style7">
                      <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack ="true" >
                          <asp:ListItem Value="0">Elije un tipo</asp:ListItem>
                          <asp:ListItem Value="1">Todos</asp:ListItem>
                          <asp:ListItem Value="2">Modelo</asp:ListItem>
                      </asp:DropDownList>
                  </td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style9">&nbsp;</td>
                  <td class="auto-style5">
                      <asp:DropDownList ID="ddlModelo" runat="server"  
                             Visible ="false" >
                      </asp:DropDownList>
                  </td>
                  <td class="auto-style7">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style9">&nbsp;</td>
                  <td class="auto-style5">&nbsp;</td>
                  <td class="auto-style7">&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
              <tr>
                  <td class="auto-style9">
                      &nbsp;</td>
                  <td class="auto-style1" colspan="3">
                      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="755px">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                              <asp:BoundField DataField="gpo_asig" HeaderText="Modelo" />
                              <asp:BoundField HeaderText="Año" DataField="anio_modelo" />
                              <asp:BoundField HeaderText="Paquete" DataField="paquete" />
                              <asp:BoundField HeaderText="Color" DataField="clave_2" />
                              <asp:BoundField DataField="total" HeaderText="Cantidad" />
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
          </table>
</asp:Content>
