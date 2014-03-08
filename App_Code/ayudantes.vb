Imports Microsoft.VisualBasic

Public Class Ayudante
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
