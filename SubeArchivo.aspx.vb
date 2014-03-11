Partial Class SubeArchivo
    Inherits System.Web.UI.Page

    Protected Sub btnSubir_Click(sender As Object, e As EventArgs) Handles btnSubir.Click
        If fuArchivo.HasFile Then
            Dim func As New Ayudante
            With func
                Select Case .extraeExtencion(fuArchivo.FileName)
                    Case ".xls" : Case ".xlsx"
                        If .byte_a(fuArchivo.PostedFile.ContentLength) < 5 Then
                            excel_to_DB(fuArchivo)
                        End If
                End Select
            End With
        End If
    End Sub

    Private Function excel_to_DB(ByRef file As FileUpload) As Boolean
        excel_to_DB = False

        Dim func As New Ayudante
        Dim ruta As String = HttpContext.Current.Server.MapPath("~/excel/")
        Dim file_ext As String = func.extraeExtencion(file.PostedFile.FileName)

        file.SaveAs(ruta & "Chevrolet" & file_ext)

        Dim con As New Conexion

        con._ruta = ruta

        Dim query As String = "SELECT * FROM [Ordenfir$]"
        Dim ds As New Data.DataSet

        ds = con.retrieve(query, fileExcel:="Chevrolet")

        GridView1.DataSource = ds
        GridView1.DataBind()

        Dim queryInsert As String = "INSERT INTO excel VALUES "
        Dim queryIns As String = ""
        Dim coma_values As Char = ""
        Dim cont As Integer = 0

        For Each col As Data.DataRow In ds.Tables(0).Rows
            Dim vacio As Boolean = True
            cont = 0
            queryIns = coma_values & " (getdate()"
            For Each reg As Object In col.ItemArray
                cont += 1
                Dim text As String = ""
                If (cont = 6 Or cont = 7 Or cont = 25) And IsNumeric(reg.ToString) Then
                    text = Date.FromOADate(reg.ToString)
                Else
                    text = reg.ToString
                End If
                queryIns &= ", '" & text & "'"
                If Not reg.ToString.Trim = String.Empty Then vacio = False
            Next
            queryIns &= ")"
            coma_values = ","
            If Not vacio Then queryInsert &= queryIns
        Next

        queryInsert &= ";"
        con.retrieve(queryInsert)

        query = "exec actualizar_separados"
        con.retrieve(query)
    End Function
End Class
