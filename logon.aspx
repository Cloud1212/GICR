<%@ Page Language="VB" AutoEventWireup="false" CodeFile="logon.aspx.vb" Inherits="logon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inicio de sesión</title>
    <link href="GICR.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" accept-charset="utf-8" autocomplete="off" method="post" role="form">
        <div role="form">
            <table class="login center">
                <thead>
                    <tr>
                        <th colspan="2" class="auto-style1">Inicio de Sesión</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <label for="txt_usuario">Usuario</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_usuario" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="txt_contraenia">Contraseña</label>
                        </td>
                        <td>
                            <asp:TextBox ID="txt_contraenia" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btn_entrar" runat="server" Text="Entrar" CssClass="btn" />
                        </td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </form>
</body>
</html>
