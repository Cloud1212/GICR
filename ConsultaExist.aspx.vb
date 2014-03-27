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

    

    
    Protected Sub ddlModelo_TextChanged(sender As Object, e As EventArgs) Handles ddlModelo.TextChanged
        Modelo()

    End Sub
End Class
