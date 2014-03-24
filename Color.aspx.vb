Imports System.Data
Imports System.Data.SqlClient

Partial Class Color
    Inherits System.Web.UI.Page

    Protected Sub btnGuarda_Click(sender As Object, e As EventArgs) Handles btnGuarda.Click

        If Page.IsValid Then


            Dim cl As New Chevrolet
            Dim ds As DataSet
            Dim query As String
            Dim func As New Ayudante

            query = "insert into color_auto values ('{0}','{1}',''); UPDATE color_auto SET foto_color = CONCAT(cdgo_color,'{2}') WHERE cdgo_color=IDENT_CURRENT('color_auto'); SELECT IDENT_CURRENT('color_auto') AS 'Identity'"
            query = String.Format(query, txtColor.Text, txtDesc.Text, func.extraeExtencion(fulColor.FileName))

            ds = cl.retrieve(query, CommandType.Text)

            fulColor.SaveAs(HttpContext.Current.Server.MapPath("~/imagenes/colores/") & ds.Tables(0).Rows(0)("Identity").ToString & func.extraeExtencion(fulColor.FileName))
            Response.Write("<script languaje=javascript> alert('Color ingresado con éxito');</script>")

            Me.txtColor.Text = ""
            Me.txtDesc.Text = ""
            Me.txtColor.Focus()
        End If

    End Sub

    Protected Sub csvClave_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles csvClave.ServerValidate
        args.IsValid = False

        If txtColor.Text.Length < 3 Then
            csvClave.ErrorMessage = "El usuario debe tener 3 caracteres "
        Else
            'declaracion de variables
            Dim cl As New Chevrolet
            Dim ds As DataSet
            Dim query As String

            'se realiza la inserción del usuario
            query = "select count(cve_Color) cuenta from color_Auto where cve_Color='{0}'"
            query = String.Format(query, txtColor.Text)
            ds = cl.retrieve(query, CommandType.Text)

            If ds.Tables(0).Rows(0)("cuenta").ToString > 0 Then
                Response.Write("<script languaje=javascript> alert('El color ya fue ingresado');</script>")
                txtColor.Text = ""
                csvClave.ErrorMessage = "El color digitado ya existe"
            Else
                args.IsValid = True
            End If
        End If

    End Sub

  
   
    Protected Sub csvColor_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles csvColor.ServerValidate
        args.IsValid = False
        If fulColor.HasFile Then
            args.IsValid = True
        Else
            csvColor.ErrorMessage = "Elija una imagen para este color"
        End If
    End Sub
End Class
