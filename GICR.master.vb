
Partial Class GICR
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'Comprueba que exista la session
        If Session("Activo_GICR") <> "" Then
            Dim url As String = Regex.Replace(Request.Url.ToString(), "([^\n]+?)(/|\\)([^\\/]+\.aspx)([^\n]*)", "$3").ToLower
            'Dim url As String = Regex.Matches(Request.Url.ToString(), "[^\\/]+$")(0).ToString.ToLower
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
            If Not permisos.ContainsKey(reg("perfil_Usuario").ToString.Trim.ToLower) Then termina_session()

            'Comprueba que exista tenga permiso de var la paguina
            If Not permisos(reg("perfil_Usuario").ToString).Contains(url) Then termina_session()

            Select Case reg("perfil_Usuario").ToString
                Case "supervisor"
                    Menu1.Items.Clear()
                    Menu1.Items.Add(New MenuItem(text:="INICIO", value:="INICIO", imageUrl:="", navigateUrl:="~/Inicio.aspx"))
                    Menu1.Items.Add(New MenuItem(text:="Reportes", value:="Reportes"))
                    Menu1.Items(1).ChildItems.Add(New MenuItem(text:="Reporte de antiguedad", value:="Futuros Embarques", imageUrl:="", navigateUrl:="~/RepAnti.aspx"))
                    Menu1.Items.Add(New MenuItem(text:="Consultas", value:="Consultas"))
                    Menu1.Items(2).ChildItems.Add(New MenuItem(text:="Consulta de producto", value:="Consulta de producto", imageUrl:="", navigateUrl:="~/ConsultaProd.aspx"))
                    Menu1.Items(2).ChildItems.Add(New MenuItem(text:="Consulta existencias", value:="Consulta existencias", imageUrl:="", navigateUrl:="~/ConsultaExist.aspx"))
                Case "ventas"
                    Menu1.Items.Clear()
                    Menu1.Items.Add(New MenuItem(text:="INICIO", value:="INICIO", imageUrl:="", navigateUrl:="~/Inicio.aspx"))
                    Menu1.Items.Add(New MenuItem(text:="Apartados", value:="Apartados"))
                    Menu1.Items.Add(New MenuItem(text:="Reportes", value:="Reportes"))
                    Menu1.Items(2).ChildItems.Add(New MenuItem(text:="Reporte de antiguedad", value:="Futuros Embarques", imageUrl:="", navigateUrl:="~/RepAnti.aspx"))
                    Menu1.Items.Add(New MenuItem(text:="Consultas", value:="Consultas"))
                    Menu1.Items(3).ChildItems.Add(New MenuItem(text:="Consulta de producto", value:="Consulta de producto", imageUrl:="", navigateUrl:="~/ConsultaProd.aspx"))
                    Menu1.Items(3).ChildItems.Add(New MenuItem(text:="Consulta existencias", value:="Consulta existencias", imageUrl:="", navigateUrl:="~/ConsultaExist.aspx"))
            End Select
            If (Menu1.Items(Menu1.Items.Count - 1).Text <> reg("nom_Usuario").ToString.Trim) Then Menu1.Items.Add(New MenuItem(reg("nom_Usuario").ToString.Trim))
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
    Private Function muestra(ByVal menuBase As Menu, ByRef permite As List(Of String)) As Menu
        Dim menuRetorno As New Menu
        Dim menu As New MenuItem
        Dim cant As Integer = menuBase.Items.Count - 1
        Dim a As Integer = 0
        Dim url As String = ""

        For i As Integer = 0 To cant
            menu = menuBase.Items(i - a)
            If menu.ChildItems.Count = 0 Then
                url = Regex.Replace(menu.NavigateUrl, "(([^\n]+?)(/|\\))?([^\\/]+\.aspx)([^\n]*)", "$4").ToString.ToLower
                If permite.Contains(url) Then
                    a += 1
                    If menu.ChildItems.Count > 0 Then menuRetorno.Items.Add(menu)

                End If
            Else
                menuRetorno.Items.Add(muestra(menu, permite))
            End If
        Next i
        Return menuRetorno
    End Function
    Private Function muestra(ByVal menuBase As MenuItem, ByRef permite As List(Of String)) As MenuItem
        Dim menuRetorno As New MenuItem(menuBase.Text)
        Dim menu As New MenuItem
        Dim cant As Integer = menuBase.ChildItems.Count - 1
        Dim a As Integer = 0
        Dim url As String = ""

        For i As Integer = 0 To cant
            menu = menuBase.ChildItems(i - a)
            If menu.ChildItems.Count = 0 Then
                url = Regex.Replace(menu.NavigateUrl, "(([^\n]+?)(/|\\))?([^\\/]+\.aspx)([^\n]*)", "$4").ToString.ToLower
                If permite.Contains(url) Then
                    a += 1
                    If menu.ChildItems.Count > 0 Then menuRetorno.ChildItems.Add(menu)
                End If
            Else
                menuRetorno.ChildItems.Add(muestra(menu, permite))
            End If
        Next
        Return menuRetorno
    End Function
End Class

