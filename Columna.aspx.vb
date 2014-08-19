Imports System.Web.Services.WebService
Imports System.Data.SqlClient
Imports System.Data

Partial Class Columna
    Inherits System.Web.UI.Page


    <System.Web.Services.WebMethod()>
    Public Shared Function llenaTablaColumnas() As List(Of Array)
        'cad = "BGR test"
        'Dim li As New List(Of Array)
        'For index As Integer = 1 To 5
        '    Dim especificador As String

        '    Dim n() As String = {"bgr", "err"}

        '    li.Add(n)
        'Next

        'Return li

        Dim cadena As String
        cadena = "Data Source=WIN-IBPLMV5IUHM;Initial Catalog=GICR;Integrated Security=True"
        Dim conn As SqlConnection = New SqlConnection(cadena)
        conn.Open()
        Dim testCmd As SqlCommand = New SqlCommand("obtenerTablaColumna", conn)
        testCmd.CommandType = CommandType.StoredProcedure
        Dim myReader As SqlDataReader = testCmd.ExecuteReader()
        Dim lista As New List(Of Array)
        If myReader.HasRows Then
            Do While myReader.Read()

                Dim list() As String = {
                    myReader.GetString(0),
                    myReader.GetString(1),
                    myReader.GetString(2)
                }
                lista.Add(list)
            Loop
        Else
            'Console.WriteLine("No rows found.")
        End If

        'Console.Read()
        myReader.Close()
        conn.Close()
        Return lista

    End Function

End Class
