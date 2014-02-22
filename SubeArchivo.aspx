<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SubeArchivo.aspx.vb" Inherits="SubeArchivo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="margin-left: 160px">
    
    
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    
    
        <asp:Image ID="imgArchivo" runat="server" Height="57px" Width="82px" ImageUrl="~/Imagenes/excel.jpg"  />
        <br />
        <br />
        <asp:FileUpload ID="fuArchivo" runat="server" />
        <br />
        <br />
        <br />
        <asp:Button ID="btnSubir" runat="server" Text="Subir Archivo" />
    
    
    
    </div>
    </form>
</body>
</html>
