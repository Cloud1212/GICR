
Partial Class GICR
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Comprueba que exista la session
        If Session("Activo_GICR") <> "" Then
            Dim url As String = Regex.Matches(Request.Url.ToString(), "[^\\/]+$")(0).ToString.ToLower
            Dim reg As Data.DataRow = Session("GICR")
            Dim adminstrador As New List(Of String)
            Dim ventas As New List(Of String)
            Dim supervisor As New List(Of String)
            Dim permisos As New Dictionary(Of String, List(Of String))

            'Listado de paginas visibles para el administrador
            adminstrador.Add("accesorios.aspx")
            adminstrador.Add("altausuario.aspx")
            adminstrador.Add("baja_accesorios.aspx")
            adminstrador.Add("bajausuario.aspx")
            adminstrador.Add("bajacolor .aspx")
            adminstrador.Add("color.aspx")
            adminstrador.Add("consultaexist.aspx")
            adminstrador.Add("consultaprod.aspx")
            adminstrador.Add("consultasug.aspx")
            adminstrador.Add("editausuario.aspx")
            adminstrador.Add("inicio.aspx")
            adminstrador.Add("repanti.aspx")
            adminstrador.Add("subearchivo.aspx")

            'Listado de paginas vicibles para ventas
            ventas.Add("consultaexist.aspx")
            ventas.Add("consultaprod.aspx")
            ventas.Add("consultasug.aspx")
            ventas.Add("inicio.aspx")
            ventas.Add("repanti.aspx")

            'Listado de paginas visibles para el supervisor
            supervisor.Add("consultaexist.aspx")
            supervisor.Add("consultaprod.aspx")
            supervisor.Add("consultasug.aspx")
            supervisor.Add("inicio.aspx")
            supervisor.Add("repanti.aspx")

            'Permisos para cada tipo de usuario
            permisos.Add("administrador", adminstrador)
            permisos.Add("supervisor", supervisor)
            permisos.Add("ventas", ventas)

            'Comprueba que exista el tipo de usuario
            If Not permisos.ContainsKey(reg("perfil_Usuario").ToString) Then termina_session()

            'Comprueba que exista tenga permiso de var la paguina
            If Not permisos(reg("perfil_Usuario").ToString).Contains(url) Then termina_session()
        Else
            termina_session()
        End If

    End Sub
    Private Sub termina_session()
        'Limpiamos sesion
        Session.Clear()
        Session.Abandon()
        Response.Redirect("~/logon.aspx")
    End Sub
End Class

