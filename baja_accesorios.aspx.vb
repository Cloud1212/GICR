Imports System.Data
Imports System.Data.SqlClient
Partial Class baja_accesorios
    Inherits System.Web.UI.Page

    Protected Sub btnBuscarSeleccionado_Click(sender As Object, e As EventArgs) Handles btnBuscarSeleccionado.Click

        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        Dim clave, palabra As String

        clave = txtCveAccesorio.Text
        palabra = txtPalabraClave.Text
        If clave.Length < 3 Then
            Response.Write("<script languaje=javascript> alert('La clave del accesorio debe de contener 3 caracteres');</script>")
            Response.Redirect(Request.Url.AbsoluteUri)
        End If

        If clave = "" And palabra = "" Then
            Response.Write("<script languaje=javascript> alert('Debe de ingresar al menos uno de los 2 campos');</script>")
            Response.Redirect(Request.Url.AbsoluteUri)
        End If


        If clave.Length > 0 Then
            query = "select * from accesorios where cve_accesorio = '{0}'"
            query = String.Format(query, clave)
            ds = cl.retrieve(query, CommandType.Text)
            Me.grdbajaAccesorios.DataSource = ds
            Me.grdbajaAccesorios.DataBind()
        ElseIf palabra.Length > 0 Then
            query = "select * from accesorios where descr_accesorio like '{0}' + '%'"
            query = String.Format(query, palabra)
            ds = cl.retrieve(query, CommandType.Text)
            Me.grdbajaAccesorios.DataSource = ds
            Me.grdbajaAccesorios.DataBind()
        End If



    End Sub
    Protected Sub btnBuscarTodos_Click(sender As Object, e As EventArgs) Handles btnBuscarTodos.Click
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String

        query = "select * from accesorios"
        ds = cl.retrieve(query, CommandType.Text)
        Me.grdbajaAccesorios.DataSource = ds
        Me.grdbajaAccesorios.DataBind()

    End Sub
    Protected Sub grdbajaAccesoriosRowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles grdbajaAccesorios.RowDeleting

        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        Dim reng As Integer
        Dim llave As String



        reng = e.RowIndex
        llave = (grdbajaAccesorios.DataKeys(reng).Values)(0).ToString
        query = String.Format("delete accesorios where cve_accesorio= '{0}'", llave)
        ds = cl.retrieve(query, CommandType.Text)

        MsgBox("El registro " + llave + " ha sido eliminado exitosamente del sistema", MsgBoxStyle.Information, "Mensaje del sistema")

        Response.Redirect(Request.Url.AbsoluteUri)


    End Sub
End Class
