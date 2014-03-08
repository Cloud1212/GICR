<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="SubeArchivo.aspx.vb" Inherits="SubeArchivo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!DOCTYPE html>

    <div>
    
    
    
        
    
    
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    
    
        
    
    
    
        Carga de Archivos<br />
        <br />
    
    
    
        
    
    
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    
    
        
    
    
    
        <asp:Image ID="imgArchivo" runat="server" Height="57px" Width="82px" ImageUrl="~/Imagenes/excel.jpg"  />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="fuArchivo" runat="server" />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnSubir" runat="server" Text="Subir Archivo" />
    
    
    
    </div>
    
<html xmlns="http://www.w3.org/1999/xhtml">
<head >
    <title></title>
</head>
<body>
   
</body>
</html>

</asp:Content>

