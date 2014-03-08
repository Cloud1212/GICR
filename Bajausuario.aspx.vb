Imports System.Data
Imports System.Data.SqlClient
Partial Class Bajausuario
    Inherits System.Web.UI.Page

    Protected Sub btnUsuario_Click(sender As Object, e As EventArgs) Handles btnUsuario.Click
        busca()


    End Sub

   
    Protected Sub grdUsuario_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles grdUsuario.RowDeleting
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        Dim renglon As Integer
        Dim llave As String

        renglon = e.RowIndex
        llave = (grdUsuario.DataKeys(renglon).Values)(0).ToString
        query = String.Format("update cr_Usuarios set status_Usuario='Inactivo' where cdgo_Usuarios={0}", llave)
        ds = cl.retrieve(query, CommandType.Text)
        busca()


    End Sub

    Public Sub busca()
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        If txtUsuario.Text = "" Then
            query = "select cdgo_Usuarios,Usuario,nom_Usuario,correo_Usuario,perfil_Usuario,status_Usuario from cr_Usuarios "
        Else
            query = "select  cdgo_Usuarios,Usuario,nom_Usuario,correo_Usuario,perfil_Usuario,status_Usuario from cr_Usuarios where Usuario='{0}'"
            query = String.Format(query, txtUsuario.Text)
        End If
        ds = cl.retrieve(query, CommandType.Text)
        Me.grdUsuario.DataSource = ds
        Me.grdUsuario.DataBind()
    End Sub
End Class
