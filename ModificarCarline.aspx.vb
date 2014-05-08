Imports System.Data
Imports System.Data.SqlClient

Partial Class ModificarCarline
    Inherits System.Web.UI.Page

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click

        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        Dim nombre, año, codigo, status As String

        nombre = txtNombre.Text
        año = txtano.Text
        codigo = txtCodigo.Text
        status = txtStatus.Text


        If nombre.Length > 0 Then
            query = "select * from carline where NombreCarline like '%{0}%'"
            query = String.Format(query, nombre)
            ds = cl.retrieve(query, CommandType.Text)
            Me.grdCarline.DataSource = ds
            Me.grdCarline.DataBind()

        ElseIf año.Length > 0 Then
            query = "select * from carline where AnoProd like '{0}' + '%'"
            query = String.Format(query, año)
            ds = cl.retrieve(query, CommandType.Text)
            Me.grdCarline.DataSource = ds
            Me.grdCarline.DataBind()

        ElseIf codigo.Length > 0 Then
            query = "select * from carline where CodigoCarline like '%{0}%'"
            query = String.Format(query, codigo)
            ds = cl.retrieve(query, CommandType.Text)
            Me.grdCarline.DataSource = ds
            Me.grdCarline.DataBind()

        ElseIf status.Length > 0 Then
            query = "select * from carline where StatusCarline like '%{0}%'"
            query = String.Format(query, status)
            ds = cl.retrieve(query, CommandType.Text)
            Me.grdCarline.DataSource = ds
            Me.grdCarline.DataBind()

        End If
    End Sub


    Protected Sub grdCarlineRowEditing(sender As Object, e As GridViewEditEventArgs)

        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        Dim reng As Integer
        Dim llave As String



        reng = e.RowIndex
        llave = (grdCarline.DataKeys(reng).Values)(0).ToString
        query = String.Format("update Carline where CodigoCarline= '{0}'", llave)
        ds = cl.retrieve(query, CommandType.Text)

        MsgBox("El registro " + llave + " ha sido modificado exitosamente en el sistema", MsgBoxStyle.Information, "Mensaje del sistema")

        Response.Redirect(Request.Url.AbsoluteUri)


    End Sub

    Protected Sub grdCarline_SelectedIndexChanged(sender As Object, e As EventArgs) Handles grdCarline.SelectedIndexChanged

        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        Dim reng As Integer
        Dim llave As String



        reng = e.RowIndex
        llave = (grdCarline.DataKeys(reng).Values)(0).ToString
        query = String.Format("update Carline where CodigoCarline= '{0}'", llave)
        ds = cl.retrieve(query, CommandType.Text)

        MsgBox("El registro " + llave + " ha sido modificado exitosamente en el sistema", MsgBoxStyle.Information, "Mensaje del sistema")

        Response.Redirect(Request.Url.AbsoluteUri)
    End Sub
End Class
