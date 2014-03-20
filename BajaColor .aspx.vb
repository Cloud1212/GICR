Imports System.Data
Imports System.Data.SqlClient

Partial Class BajaColor_
    Inherits System.Web.UI.Page

    
    Protected Sub ddlBusqueda_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlBusqueda.SelectedIndexChanged
        buscaColor()
    End Sub

    Protected Sub grdColor_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles grdColor.RowDeleting
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        Dim renglon As Integer
        Dim llave As String

        renglon = e.RowIndex
        llave = (grdColor.DataKeys(renglon).Values)(0).ToString
        query = String.Format("delete color_auto  where cdgo_color={0}", llave)
        ds = cl.retrieve(query, CommandType.Text)
        buscaColor()
    End Sub

    Public Sub buscaColor()
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String

        If ddlBusqueda.SelectedValue = 1 Then
            lblBsca.Visible = False
            txtBuscar.Visible = False
            btnBuscar.Visible = False
            help2.Visible = False
            grdColor.Visible = True
            query = "select cdgo_color,cve_Color,descr_Color from color_auto "
            ds = cl.retrieve(query, CommandType.Text)
            Me.grdColor.DataSource = ds
            Me.grdColor.DataBind()
        Else
            txtBuscar.Visible = True
            btnBuscar.Visible = True
            lblBsca.Visible = True
            help2.Visible = True
            grdColor.Visible = False
            If ddlBusqueda.SelectedValue = 2 Then
                lblBsca.Text = "Ingrese la descripcion de color a buscar:"

            Else
                lblBsca.Text = "Ingrese la clave de color a buscar:"
            End If

        End If
    End Sub

    Protected Sub btnBuscar_Click(sender As Object, e As EventArgs) Handles btnBuscar.Click
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String = ""
        If ddlBusqueda.SelectedValue = 2 Then
            grdColor.Visible = True
            query = "select cdgo_color,cve_Color,descr_Color from color_auto where descr_Color like '{0}'+'%' "
            
        Else
            If ddlBusqueda.SelectedValue = 3 Then
                grdColor.Visible = True
                query = "select cdgo_color,cve_Color,descr_Color from color_auto where cve_Color like '{0}'+'%' "
               
            End If
        End If
        query = String.Format(query, txtBuscar.Text)
        ds = cl.retrieve(query, CommandType.Text)

        If ds.Tables(0).Rows.Count = 0 Then
            Response.Write("<script languaje=javascript> alert('La clave o descripcion no existe');</script>")
        End If
        Me.grdColor.DataSource = ds
        Me.grdColor.DataBind()
        txtBuscar.Text = ""
    End Sub
End Class
