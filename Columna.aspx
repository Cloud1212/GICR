<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="Columna.aspx.vb" Inherits="Columna" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"/>
    <script type="text/javascript">
        $(document).ready(function () {
            alert("Jquery instaldo correctamente");
            $.ajax({
                type: "POST",
                url: "http://localhost:1165/Columna.aspx/prueba",
                data: "{cad:'BGR123'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    // Do something interesting here.
                    var d = msg;
                }
            });
        });
    </script>
</asp:Content>

