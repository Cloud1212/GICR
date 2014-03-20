Imports System.Data
Imports System.Data.SqlClient
Partial Class RepAnti
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        If IsPostBack Then
        Else

            query = "select gpo_asig from excel group by gpo_asig"
            ds = cl.retrieve(query, CommandType.Text)
            ddlModelos.DataSource = ds
            ddlModelos.DataValueField = "gpo_asig"
            ddlModelos.DataTextField = "gpo_asig"
            ddlModelos.DataBind()
        End If

    End Sub

    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        args.IsValid = False
        If ddlRango.SelectedValue = 0 Then
            CustomValidator1.ErrorMessage = "Debe elegir un rango de días"
        Else
            args.IsValid = True
        End If
    End Sub

    Protected Sub btnGenera_Click(sender As Object, e As EventArgs) Handles btnGenera.Click
        If Page.IsValid Then


            Dim cl As New Chevrolet
            Dim ds As DataSet
            Dim query As String = ""
            Dim index As Integer
            Dim modelo As String

            index = ddlRango.SelectedValue
            modelo = ddlModelos.SelectedValue


            Select Case index
                Case 1
                    query = String.Format("select * from excel where gpo_asig='{0}' order by gpo_asig,antiguedad_inventario", modelo)
                Case 2
                    query = String.Format("select * from excel where gpo_asig='{0}' and antiguedad_inventario<=30", modelo)
                Case 3
                    query = String.Format("select * from excel where gpo_asig='{0}' and antiguedad_inventario>30 and antiguedad_inventario<=60", modelo)
                Case 4
                    query = String.Format("select * from excel where gpo_asig='{0}' and antiguedad_inventario>60 and antiguedad_inventario<=90", modelo)
                Case 5
                    query = String.Format("select * from excel where gpo_asig='{0}' and antiguedad_inventario>90 ", modelo)
            End Select

            ds = cl.retrieve(query, CommandType.Text)
            Me.GridView1.DataSource = ds
            Me.GridView1.DataBind()

        End If
    End Sub

    
End Class
