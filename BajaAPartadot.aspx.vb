Imports System.Data
Partial Class BajaAPartadot
    Inherits System.Web.UI.Page

    
    Protected Sub GridView1_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles GridView1.RowDeleting
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        Dim renglon As Integer
        Dim llave As String

        renglon = e.RowIndex
        llave = (GridView1.DataKeys(renglon).Values)(0).ToString
        query = String.Format("update apartados set status='C' where folioApartado='{0}'", llave)
        ds = cl.retrieve(query, CommandType.Text)
        'busca()
        query = String.Format("update excel set nombre_cliente='' where nombre_cliente='{0}'", llave)
        ds = cl.retrieve(query, CommandType.Text)
        busca()

    End Sub

    Protected Sub btnCancela_Click(sender As Object, e As EventArgs) Handles btnCancela.Click
        busca()
    End Sub
    Public Sub busca()
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        
        query = "select  folioApartado,nombreCliente,usuario,modeloAuto,anioAuto,paqueteAuto,ordenAuto,status from apartados where (folioApartado like '{0}'+'%' or Usuario like '{0}'+'%') and status=''"
        query = String.Format(query, txtFolio.Text)

        ds = cl.retrieve(query, CommandType.Text)
        Me.GridView1.DataSource = ds
        Me.GridView1.DataBind()
    End Sub
End Class
