Imports Microsoft.VisualBasic

Public Class Usuario
    Private id_usuario As Integer
    Private usuario As String

    Public Function login(ByRef usuario As String, ByVal contrasenia As String) As String
        Dim con As New Conexion
        Dim ds As New Data.DataSet
        Dim query As String = "SELECT * FROM cr_Usuarios WHERE Usuario='{0}' AND contra_Usuario = '{1}' AND status_Usuario = 'activo'"

        query = String.Format(query, usuario, contrasenia)
        ds = con.retrieve(query)

        If (ds.Tables(0).Rows.Count > 0) Then
            Return "Correcto"
        Else
            Return "Error"
        End If
    End Function
    Private Function insert(ByRef data() As String) As String
        Dim ret As String = ""
        For Each valor As String In data
            ret &= valor.ToString
        Next
        Return ret
    End Function
End Class
