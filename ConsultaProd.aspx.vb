Imports System.Data
Imports System.Data.SqlClient

Partial Class ConsultaProd
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If IsPostBack Then
        Else


            Dim cl As New Chevrolet
            Dim ds As DataSet
            Dim query As String

            query = "select gpo_asig from excel group by gpo_asig order by gpo_asig"
            ds = cl.retrieve(query, CommandType.Text)
            ddlModelo.DataSource = ds
            ddlModelo.DataValueField = "gpo_asig"
            ddlModelo.DataTextField = "gpo_asig"
            ddlModelo.DataBind()


        End If
    End Sub

    


    Protected Sub ddlModelo_TextChanged(sender As Object, e As EventArgs) Handles ddlModelo.TextChanged
        If ddlModelo.SelectedIndex <> 0 Then


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
            query = "select color_auto.descr_color from color_auto inner join excel on color_auto.cve_color = excel.clave_2 where excel.gpo_asig = '{0}' and excel.anio_modelo = {1} group by descr_color order by descr_color"
            query = String.Format(query, ddlModelo.SelectedValue, ddlAno.SelectedValue)
            ds = cl.retrieve(query, CommandType.Text)
            ddlColor.DataSource = ds
            ddlColor.DataValueField = "descr_color"
            ddlColor.DataTextField = "descr_color"
            ddlColor.DataBind()
        End If

    End Sub

   
    Protected Sub btnConsulta_Click(sender As Object, e As EventArgs) Handles btnConsulta.Click
        If Page.IsValid Then


            Dim cl As New Chevrolet
            Dim ds As DataSet
            Dim query As String

            query = String.Format("select * from excel a join color_auto b on a.clave_2=b.cve_color where a.gpo_asig='{0}' and a.anio_modelo='{1}' and b.descr_color='{2}'", ddlModelo.SelectedValue, ddlAno.SelectedValue, ddlColor.SelectedValue)
            ds = cl.retrieve(query, CommandType.Text)
            GridView1.DataSource = ds
            GridView1.DataBind()
        End If

    End Sub

    Protected Sub ddlAno_TextChanged(sender As Object, e As EventArgs) Handles ddlAno.TextChanged
        If ddlModelo.SelectedIndex <> 0 Then


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
        End If
    End Sub

    
    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        args.IsValid = False
        If ddlModelo.SelectedIndex = 0 Then
            CustomValidator1.ErrorMessage = "Elija un modelo de vehiculo"
        Else
            args.IsValid = True
        End If
    End Sub
End Class
