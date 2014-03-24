Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data
Imports System.Data.OleDb

Public Class Conexion
    Private ruta As String
    Public extencion As New excel_extencion

    Public Structure excel_extencion
        Public ReadOnly Property xls() As Byte
            Get
                Return 0
            End Get
        End Property
        Public ReadOnly Property xlsx() As Byte
            Get
                Return 1
            End Get
        End Property
    End Structure
    Public Property _ruta() As String
        Get
            Return ruta.ToString
        End Get
        Set(value As String)
            ruta = value
        End Set
    End Property
    Private Function getConnection() As SqlConnection
        Dim con As New SqlConnection
        Try
            con.ConnectionString = "Data Source=CLOUD-PC;Initial Catalog=GICR;Integrated Security=True"
            Return con
        Catch ex As Exception
            Throw ex
        End Try
    End Function
    Private Function getConnection(ByRef excel As String) As OleDbConnection
        If excel.Trim.Length Then
            Dim con As New OleDbConnection
            Try
                con.ConnectionString = String.Format("Provider=Microsoft.ACE.OLEDB.12.0;Data Source='{0}';Extended Properties='Excel 12.0 Xml;HDR=YES'", ruta & excel & ".xlsx")
                Return con
            Catch ex As Exception
                Throw ex
            End Try
        Else
            Return Nothing
        End If
    End Function
    Public Function retrieve(ByRef query As String, Optional ByRef type As CommandType = CommandType.Text, Optional ByRef fileExcel As String = "") As DataSet
        Dim result As New DataSet

        If fileExcel.Trim.Length Then
            Dim conn As New OleDbConnection
            Dim cmd As New OleDbCommand

            conn = getConnection(fileExcel.Trim)
            conn.Open()

            cmd = conn.CreateCommand
            cmd.CommandType = type
            cmd.CommandText = query

            Dim dataAdapter As New OleDbDataAdapter(query, conn)
            dataAdapter.Fill(result)
            dataAdapter.Dispose()
            conn.Close()
        Else
            Dim conn As New SqlConnection
            Dim cmd As New SqlCommand

            conn = getConnection()
            conn.Open()

            cmd = conn.CreateCommand
            cmd.CommandType = type
            cmd.CommandText = query

            Dim dataAdapter As New SqlDataAdapter(cmd)
            dataAdapter.Fill(result)
            conn.Close()
        End If


        Return result
    End Function
End Class
