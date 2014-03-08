Imports System.Data
Imports System.Data.SqlClient
Partial Class AltaUsuario
    Inherits System.Web.UI.Page


   
   
    Protected Sub CustomValidator1_ServerValidate1(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        args.IsValid = False

        If txtUsuario.Text.Length < 7 Or txtUsuario.Text.Length > 10 Then
            CustomValidator1.ErrorMessage = "El usuario debe tener al menos 7  y maximo 10 caracteres "
        Else
            'declaracion de variables
            Dim cl As New Chevrolet
            Dim ds As DataSet
            Dim query As String

            'se realiza la inserción del usuario
            query = "select count(usuario) cuenta from cr_Usuarios where usuario='{0}'"
            query = String.Format(query, txtUsuario.Text)
            ds = cl.retrieve(query, CommandType.Text)

            If ds.Tables(0).Rows(0)("cuenta").ToString > 0 Then
                Response.Write("<script languaje=javascript> alert('El nombre de usuario ya esta en uso');</script>")
                txtUsuario.Text = ""
                CustomValidator1.ErrorMessage = "Elija un nombre de usuario distinto"
            Else
                args.IsValid = True
            End If
        End If


    End Sub

    Protected Sub cvNombre_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles cvNombre.ServerValidate
        args.IsValid = False
        If txtNombre.Text.Length < 15 Then
            cvNombre.ErrorMessage = "El nombre debe tener longitud de min 15 caracteres"
        Else
            args.IsValid = True
        End If

    End Sub
    Protected Sub cvContra_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles cvContra.ServerValidate
        args.IsValid = False
        If txtContra.Text.Length < 8 Then
            cvContra.ErrorMessage = "La contraseña debe contener al menos 8 caracteres"
        Else
            Dim longitud, mayus, num As Integer
            Dim usuario As String
            mayus = 0
            longitud = txtContra.Text.Length
            For i = 1 To longitud
                usuario = txtContra.Text.Substring((i - 1), 1)
                If usuario >= "A" And usuario <= "Z" Then
                    mayus = mayus + 1
                End If
                If IsNumeric(usuario) Then
                    num = num + 1
                End If
               
            Next
            If mayus = 0 Then
                cvContra.ErrorMessage = "La contraseña debe contener al menos una mayuscula"
            Else
                If num = 0 Then
                    cvContra.ErrorMessage = "La contraseña debe contener al menos un número"
                Else
                    args.IsValid = True
                End If

            End If
        End If

    End Sub

    Protected Sub cvPerfil_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles cvPerfil.ServerValidate
        args.IsValid = False
        If ddlPerfil.SelectedValue <> "Elija perfil" Then
            args.IsValid = True

        Else
            cvPerfil.ErrorMessage = "Por favor elija un perfil"

        End If
    End Sub

    Protected Sub btnGuarda_Click(sender As Object, e As EventArgs) Handles btnGuarda.Click
        If Page.IsValid Then
            inserta()
        End If
    End Sub
    Private Sub inserta()
        'declaracion de variables
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String

        'se realiza la inserción del usuario
        query = "insert into cr_Usuarios values('{0}','{1}', '{2}','{3}','{4}','Activo')"
        query = String.Format(query, txtUsuario.Text, txtNombre.Text, txtContra.Text, txtCorreo.Text, ddlPerfil.Text)
        ds = cl.retrieve(query, CommandType.Text)
        Response.Write("<script languaje=javascript> alert('Usuario ingresado con éxito');</script>")

        Me.txtUsuario.Text = ""
        Me.txtNombre.Text = ""
        Me.txtContra.Text = ""
        Me.txtCContra.Text = ""
        Me.txtCorreo.Text = ""
        Me.txtCCorreo.Text = ""
        Me.ddlPerfil.ClearSelection()


        Me.txtUsuario.Focus()
    End Sub

End Class
