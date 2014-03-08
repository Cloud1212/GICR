
Partial Class Accesorios
    Inherits System.Web.UI.Page

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        args.IsValid = False
        If fULFoto.HasFile Then
            args.IsValid = True
        Else
            args.IsValid = False
            CustomValidator1.ErrorMessage = "Elija una foto para este accesorio"

        End If


    End Sub
End Class
