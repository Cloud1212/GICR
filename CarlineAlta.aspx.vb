Imports System.Data
Imports System.Data.SqlClient
Partial Class CarlineAlta
    Inherits System.Web.UI.Page

    Protected Sub btnAceptar_Click(sender As Object, e As EventArgs) Handles btnAceptar.Click


        'declaracion de variables
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String

        'se realiza la inserción del usuario
        query = "insert into Carline values('{0}','{1}', '{2}', 1)"
        query = String.Format(query, txtCod.Text, TxtNom.Text, txtAno.Text)
        ds = cl.retrieve(query, CommandType.Text)
        Response.Write("<script languaje=javascript> alert('Carline ingresado con éxito');</script>")

        Me.txtCod.Text = ""
        Me.TxtNom.Text = ""
        Me.txtAno.Text = ""

        Me.TxtNom.Focus()




    End Sub
End Class
