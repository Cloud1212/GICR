Imports System.Web.Services.WebService


Partial Class Columna
    Inherits System.Web.UI.Page


    <System.Web.Services.WebMethod()>
    Public Shared Function prueba(cad As String) As String
        cad = "BGR test"
        Return cad
    End Function



End Class
