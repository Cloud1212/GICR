﻿
Partial Class logon
    Inherits System.Web.UI.Page

    Protected Sub btn_entrar_Click(sender As Object, e As EventArgs) Handles btn_entrar.Click
        Dim con As New Conexion
        Dim ds As New Data.DataSet
        Dim query As String = "SELECT * FROM cr_Usuarios WHERE Usuario='{0}' AND contra_Usuario = '{1}' AND status_Usuario = 'activo'"

        query = String.Format(query, txt_usuario.Text.Trim, txt_contraenia.Text.Trim)
        ds = con.retrieve(query)

        If (ds.Tables(0).Rows.Count > 0) Then
            Session("Activo_GICR") = ds.Tables(0).Rows(0)("cdgo_Usuarios").ToString
            Session("GICR") = ds.Tables(0).Rows(0)
            Session.Timeout = 30
            Response.Redirect("~/Inicio.aspx")
        Else
            'Cordigo de Error
        End If
        txt_contraenia.Text = ""
        txt_usuario.Text = ""
    End Sub
End Class
