Imports Microsoft.VisualBasic
Public Class Ayudante
    Public Function byte_a(ByRef tamanio As Integer, Optional ByRef escala As String = "M") As Double
        ' escalas pueden ser:
        ' K, M, T
        Dim base As Integer = 1
        Select Case UCase(escala)
            Case "K"
                base = 1024
            Case "M"
                base = 1024 ^ 2
            Case "T"
                base = 1024 ^ 3
            Case Else
                Return tamanio
        End Select
        Return tamanio / base
    End Function
    Public Function extraeExtencion(ByRef nombreArchivo As String) As String
        Dim regExp As New Regex("\.[^\.]+$")
        Return regExp.Match(nombreArchivo).ToString
    End Function
    Public Function unicoID(ByRef texto As String) As String
        Return texto + Guid.NewGuid.ToString + Guid.NewGuid.ToString
    End Function
    Public Function numAletorio(Optional ByRef min As Integer = 1, Optional ByRef max As Integer = 1000000) As Integer
        Return Decimal.Round(Rnd() * (max - 1) + 1)
    End Function
    Public Function sha512(ByRef contra As String, Optional ByRef rep As Integer = 1) As String
        Dim shaM As New System.Security.Cryptography.SHA512Managed()
        Dim enc As String = ""

        For i As Integer = 1 To rep
            enc = Convert.ToBase64String(shaM.ComputeHash(Encoding.UTF8.GetBytes(contra)))
        Next i

        Return enc
    End Function
End Class
