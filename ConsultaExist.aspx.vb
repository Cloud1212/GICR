Imports System.Data
Imports System.Data.SqlClient
Partial Class ConsultaExist
    Inherits System.Web.UI.Page

    Public Sub cargaModelo()


       

            Dim cl As New Chevrolet
            Dim ds As DataSet
            Dim query As String

            query = "select gpo_asig from excel group by gpo_asig order by gpo_asig"
            ds = cl.retrieve(query, CommandType.Text)
            ddlModelo.DataSource = ds
            ddlModelo.DataValueField = "gpo_asig"
            ddlModelo.DataTextField = "gpo_asig"
            ddlModelo.DataBind()




    End Sub

    'Protected Sub ddlModelo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlModelo.SelectedIndexChanged

    '    Dim cl As New Chevrolet
    '    Dim ds As DataSet
    '    Dim query As String

    '    'query = "select anio_modelo from excel where gpo_asig = '{0}' group by anio_modelo order by anio_modelo"
    '    'query = String.Format(query, ddlModelo.SelectedValue)
    '    'ds = cl.retrieve(query, CommandType.Text)
    '    'ddlAno.DataSource = ds
    '    'ddlAno.DataValueField = "anio_modelo"
    '    'ddlAno.DataTextField = "anio_modelo"
    '    'ddlAno.DataBind()


    'End Sub
    'Protected Sub ddlAno_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlAno.SelectedIndexChanged
    '    Dim cl As New Chevrolet
    '    Dim ds As DataSet
    '    Dim query As String

    '    'query = "select color_auto.descr_color from color_auto inner join excel on color_auto.cve_color = excel.clave_2 where excel.gpo_asig = '{0}' and excel.anio_modelo = {1} group by descr_color order by descr_color"
    '    'query = String.Format(query, ddlModelo.SelectedValue, ddlAno.SelectedValue)
    '    'ds = cl.retrieve(query, CommandType.Text)
    '    'ddlColor.DataSource = ds
    '    'ddlColor.DataValueField = "descr_color"
    '    'ddlColor.DataTextField = "descr_color"
    '    'ddlColor.DataBind()

    'End Sub

    'Protected Sub btnConsulta_Click(sender As Object, e As EventArgs) Handles btnConsulta.Click
    '    Dim cl As New Chevrolet
    '    Dim ds As DataSet
    '    Dim query As String

    '    query = "select * from accesorios"
    '    ds = cl.retrieve(query, CommandType.Text)
    '    'Me.grdExistencia.DataSource = ds
    '    'Me.grdExistencia.DataBind()

    'End Sub

    Protected Sub DropDownList1_TextChanged(sender As Object, e As EventArgs) Handles DropDownList1.TextChanged
        If DropDownList1.SelectedValue = 1 Then
            GridView1.Visible = True
            help2.Visible = False
            ddlModelo.Visible = False

            Dim cl As New Chevrolet
            Dim ds As DataSet
            Dim query As String

            query = ("select gpo_asig,anio_modelo,paquete,clave_2,count(gpo_asig)total from excel group by gpo_asig,anio_modelo,paquete,clave_2")
            ds = cl.retrieve(query, CommandType.Text)
            GridView1.DataSource = ds
            GridView1.DataBind()
        ElseIf DropDownList1.SelectedValue = 2 Then
            ddlModelo.Visible = True
            help2.Visible = True
            GridView1.Visible = False
            cargaModelo()
        End If
    End Sub
    Public Sub Modelo()
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String

        query = String.Format("select gpo_asig,anio_modelo,paquete,clave_2,count(gpo_asig)total from excel  where gpo_asig='{0}' group by gpo_asig,anio_modelo,paquete,clave_2", ddlModelo.SelectedValue)
        ds = cl.retrieve(query, CommandType.Text)
        GridView1.Visible = True
        GridView1.DataSource = ds
        GridView1.DataBind()

    End Sub
End Class
