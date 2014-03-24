Imports Microsoft.VisualBasic
Imports System.Data
Imports System.Data.SqlClient


Public Class Chevrolet

    Private Function GetConnection() As SqlConnection

        Try
            Dim conexion As New SqlConnection("Data Source=CLOUD-PC;Initial Catalog=GICR;Integrated Security=True")

            GetConnection = conexion

        Catch ex As Exception
            Throw ex
        End Try
    End Function



    Public Function retrieve(query As String, type As CommandType) As DataSet
        Dim conn As New SqlConnection
        Dim result As DataSet
        Dim cmd As New SqlCommand
        conn = GetConnection()
        conn.Open()
        cmd = conn.CreateCommand
        cmd.CommandText = query
        Dim dataAdapter As New SqlDataAdapter(cmd)
        result = New DataSet
        dataAdapter.Fill(result)
        conn.Close()
        Return result


    End Function


End Class
