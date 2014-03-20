Imports System.Data
Partial Class ReporteApartados
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim cl As New Chevrolet
        Dim ds As dataset
        Dim query As String


        query = "select a.folioApartado,a.modeloAuto,a.anioAuto,b.descr_color,a.paqueteAuto,a.ordenAuto from apartados a join color_auto b on a.colorAuto=b.cve_color where a.status='' "
        ds = cl.retrieve(query, CommandType.Text)
        GridView1.DataSource = ds
        GridView1.DataBind()
        query = "select a.folioApartado,a.modeloAuto,a.anioAuto,b.descr_color,a.paqueteAuto,a.ordenAuto, a.status from apartados a join color_auto b on a.colorAuto=b.cve_color where a.status='C' "
        ds = cl.retrieve(query, CommandType.Text)
        GridView2.DataSource = ds
        GridView2.DataBind()

    End Sub
End Class
