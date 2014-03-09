
Partial Class logon
    Inherits System.Web.UI.Page

    Protected Sub btn_entrar_Click(sender As Object, e As EventArgs) Handles btn_entrar.Click
        Dim cls_user As New Usuario
        If txt_usuario.Text.Trim.Length And txt_contraenia.Text.Trim.Length Then
            If cls_user.login(txt_usuario.Text.Trim, txt_contraenia.Text.Trim) Then
                Response.Redirect("~/Inicio.aspx")
            Else
                'Codigo para error de logeo
            End If
            txt_contraenia.Text = ""
            txt_usuario.Text = ""
            MsgBox("error:" & IIf(txt_usuario.Text.Trim.Length And txt_contraenia.Text.Trim.Length, "true", "false"))
        End If
    End Sub
End Class
