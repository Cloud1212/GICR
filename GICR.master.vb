
Partial Class GICR
    Inherits System.Web.UI.MasterPage

    Public htmlMenu As String
    Public htmlUser As String
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
            adminstrador.Add("alta de apartado.aspx")
            adminstrador.Add("editaapartado.aspx")
            adminstrador.Add("bajaapartadot.aspx")
            adminstrador.Add("reporteapartados.aspx")


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

            'Comprueba que exista tenga permiso de ver la paguina
            If Not permisos(reg("perfil_Usuario").ToString).Contains(url) Then termina_session()

            htmlMenu = mnuToHTML(Menu1, permisos(reg("perfil_Usuario").ToString))
            Menu1.Items.Clear()
            htmlUser = "<li class=""dropdown"">" + Chr(10) + _
                        "<a href=""#"" class=""dropdown-toggle"" data-toggle=""dropdown"">" + _
                        "<span class=""glyphicon glyphicon-user""></span> " + _
                        Regex.Replace(reg("nom_Usuario").ToString.Trim, "\b\w", AddressOf upperCase) + _
                        " <b class=""caret""></b></a>" + Chr(10) + _
                        "<ul class=""dropdown-menu"">" + Chr(10) + _
                        "<li><a href=""./logout.aspx""><span class=""glyphicon glyphicon-off""></span> Cerrar Sesion</a></li>" + Chr(10) + _
                        "</ul>" + Chr(10) + _
                        "</li>"
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
    Function upperCase(m As Match) As String
        Return m.ToString.ToUpper.Trim
    End Function
    Function mnuToHTML(ByRef menu As Menu, ByRef allow As List(Of String)) As String
        Dim html As String = ""
        For Each subMenu As MenuItem In menu.Items
            If subMenu.ChildItems.Count Then
                Dim hasChild As String = mnuToHTML(subMenu, allow)
                If hasChild.Length Then
                    html += String.Format(" <li class=""dropdown"">" + Chr(10) + _
                        "<a href=""#"" class=""dropdown-toggle"" data-toggle=""dropdown"">" + subMenu.Text + "<b class=""caret""></b></a>" + Chr(10) + _
                        "<ul class=""dropdown-menu"">" + Chr(10) + _
                        "{0}" + Chr(10) + _
                        "</ul>" + Chr(10) + _
                        "</li>", hasChild)
                End If
            Else
                If allow.Contains(Regex.Replace(subMenu.NavigateUrl, "(([^\n]+?)(/|\\))?([^\\/]+\.aspx)([^\n]*)", "$4").ToLower) Then
                    html += "<li><a href=""" & subMenu.NavigateUrl.Replace("~", ".") & """>" & subMenu.Text & "</a></li>" & Chr(10)
                End If
            End If
        Next
        Return html
    End Function
    Function mnuToHTML(ByRef menu As MenuItem, ByRef allow As List(Of String)) As String
        Dim html As String = ""
        For Each subMenu As MenuItem In menu.ChildItems
            If subMenu.ChildItems.Count Then
                Dim hasChild As String = mnuToHTML(subMenu, allow)
                If hasChild.Length Then
                    html += String.Format(" <li class=""dropdown"">" + Chr(10) + _
                        "<a href=""#"" class=""dropdown-toggle"" data-toggle=""dropdown"">" + subMenu.Text + "<b class=""caret""></b></a>" + Chr(10) + _
                        "<ul class=""dropdown-menu"">" + Chr(10) + _
                        "{0}" + Chr(10) + _
                        "</ul>" + Chr(10) + _
                        "</li>", hasChild)
                End If
            Else
                If allow.Contains(Regex.Replace(subMenu.NavigateUrl, "(([^\n]+?)(/|\\))?([^\\/]+\.aspx)([^\n]*)", "$4").ToLower) Then
                    html += "<li><a href=""" & subMenu.NavigateUrl.Replace("~", ".") & """>" & subMenu.Text & "</a></li>" & Chr(10)
                End If
            End If
        Next
        Return html
    End Function

End Class