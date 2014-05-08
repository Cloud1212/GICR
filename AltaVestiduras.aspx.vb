Imports System.Data
Imports System.Data.SqlClient


Partial Class AltaVestiduras
    Inherits System.Web.UI.Page


    Protected Sub csvCLave_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles csvCLave.ServerValidate
        args.IsValid = False
        If txtClave.Text.Length < 3 Then
        Else
            Dim cl As New Chevrolet
            Dim ds As DataSet
            Dim query As String

            'se realiza la inserción del usuario
            query = "select count(claveVestidura) cuenta from vestiduras where claveVestidura='{0}'"
            query = String.Format(query, txtClave.Text)
            ds = cl.retrieve(query, CommandType.Text)

            If ds.Tables(0).Rows(0)("cuenta").ToString > 0 Then
                Response.Write("<script languaje=javascript> alert('La clave de esta vestidura ya fue ingresada');</script>")
                txtClave.Text = ""
                csvCLave.ErrorMessage = "Elija una clave distinta"
            Else
                args.IsValid = True
            End If
        End If
    End Sub

    Protected Sub csvDesc_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles csvDesc.ServerValidate
        args.IsValid = False
        If txtDesc.Text.Length < 5 Then
        Else
            args.IsValid = True

        End If
    End Sub

    Protected Sub btnGuarda_Click(sender As Object, e As EventArgs) Handles btnGuarda.Click
        If Page.IsValid Then

            guarda()
            Response.Write("<script languaje=javascript> alert('Vestidura guardada');</script>")
            txtClave.Text = ""
            txtDesc.Text = ""
        Else
            lblCLave.Visible = True
            lblDesc.Visible = True
            txtClave.Visible = True
            txtDesc.Visible = True
            btnGuarda.Visible = True

        End If
    End Sub

    Public Sub guarda()
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String

        query = "insert into vestiduras values ('{0}','{1}')"
        query = String.Format(query, txtClave.Text, txtDesc.Text)

        ds = cl.retrieve(query, CommandType.Text)
    End Sub

    
End Class