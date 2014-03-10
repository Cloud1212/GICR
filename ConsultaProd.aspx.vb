Imports System.Data
Imports System.Data.SqlClient

Partial Class ConsultaProd
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load


        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String

        query = "select gpo_asig from excel group by gpo_asig order by gpo_asig"
        ds = cl.retrieve(query, CommandType.Text)
        ddlModelo.DataSource = ds
        ddlModelo.DataValueField = "gpo_asig"
        ddlModelo.DataTextField = "gpo_asig"
        ddlModelo.DataBind()


        'If ddlModelo.SelectedValue <> "" Then
        '    query = "select anio_modelo from excel where gpo_asig = '{0}' group by anio_modelo order by anio_modelo"
        '    query = String.Format(query, ddlModelo.SelectedValue)
        '    ds = cl.retrieve(query, CommandType.Text)
        '    ddlAno.DataSource = ds
        '    ddlAno.DataValueField = "anio_modelo"
        '    ddlAno.DataTextField = "anio_modelo"
        '    ddlAno.DataBind()

        'End If


        'If ddlModelo.SelectedValue <> "" Then
        '    query = "select color_auto.descr_color from color_auto inner join excel on color_auto.cve_color = excel.clave_2 where excel.gpo_asig = '{0}' and excel.anio_modelo = {1} group by descr_color order by descr_color"
        '    query = String.Format(query, ddlModelo.SelectedValue, ddlAno.SelectedValue)
        '    ds = cl.retrieve(query, CommandType.Text)
        '    ddlColor.DataSource = ds
        '    ddlColor.DataValueField = "descr_color"
        '    ddlColor.DataTextField = "descr_color"
        '    ddlColor.DataBind()

        'End If




    End Sub
    Protected Sub ddlAno_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlAno.SelectedIndexChanged
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String


            query = "select color_auto.descr_color from color_auto inner join excel on color_auto.cve_color = excel.clave_2 where excel.gpo_asig = '{0}' and excel.anio_modelo = {1} group by descr_color order by descr_color"
            query = String.Format(query, ddlModelo.SelectedValue, ddlAno.SelectedValue)
            ds = cl.retrieve(query, CommandType.Text)
            ddlColor.DataSource = ds
            ddlColor.DataValueField = "descr_color"
            ddlColor.DataTextField = "descr_color"
            ddlColor.DataBind()


    End Sub
    Protected Sub ddlModelo_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ddlModelo.SelectedIndexChanged

        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String


        query = "select anio_modelo from excel where gpo_asig = '{0}' group by anio_modelo order by anio_modelo"
        query = String.Format(query, ddlModelo.SelectedValue)
        ds = cl.retrieve(query, CommandType.Text)
        ddlAno.DataSource = ds
        ddlAno.DataValueField = "anio_modelo"
        ddlAno.DataTextField = "anio_modelo"
        ddlAno.DataBind()

        
    End Sub
End Class
