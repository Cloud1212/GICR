
Partial Class logon
    Inherits System.Web.UI.Page

    Protected Sub btn_entrar_Click(sender As Object, e As EventArgs) Handles btn_entrar.Click
        Dim cls_user As New Usuario
        If txt_usuario.Text.Trim.Length And txt_contraenia.Text.Trim.Length Then
            txt_usuario.Text = String.Format("Usuario: {0}", txt_usuario.Text)
            txt_contraenia.Text = String.Format("contraseña: {0}", txt_contraenia.Text)

            MsgBox(cls_user.login(txt_usuario.Text, txt_contraenia.Text))
            txt_contraenia.Text = ""
            txt_usuario.Text = ""
        Else
            MsgBox("error:" & IIf(txt_usuario.Text.Trim.Length And txt_contraenia.Text.Trim.Length, "true", "false"))
        End If
    End Sub

    Protected Sub btn_entrar_Load(sender As Object, e As EventArgs) Handles btn_entrar.Load
        Dim excel As New Conexion

        With excel
            ._ruta = "C:\Users\Emmanuel\Desktop\Puro Mugrero\"
            Dim query As String = "SELECT [Orden #] AS order_num, [#] as num, [DAN ] AS dan, [F3] as f3 FROM [Ordenfir$]"
            Dim rs As Data.DataSet = .retrieve(query, fileExcel:="Inventario Enero 25 2014")
            Dim dc As New Dictionary(Of String, String())
            Dim colArray As New List(Of String)

            For Each col As Data.DataColumn In rs.Tables(0).Columns
                For Each reg As Data.DataRow In rs.Tables(0).Rows
                    colArray.Add(reg.Item(col.Ordinal).ToString)
                Next
                dc.Add(col.ColumnName, colArray.ToArray)
                colArray.Clear()
            Next

        End With
    End Sub
End Class
