Imports System.Data.SqlClient
Imports System.Data
Partial Class Alta_de_Apartado
    Inherits System.Web.UI.Page

    
    Protected Sub csvTelefono_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles csvTelefono.ServerValidate
        args.IsValid = False

        If txtTelefono.Text.Length < 10 Then
            csvTelefono.ErrorMessage = "el telefono debe contener 10 caracteres, si es local agregue lada"
        Else
            Dim longitud As Integer
            Dim num As String
            Dim conta As Integer
            conta = 0
            longitud = txtTelefono.Text.Length
            For i = 1 To longitud
                num = txtTelefono.Text.Substring((i - 1), 1)
                If IsNumeric(num) Then

                Else
                    conta = conta + 1
                End If
            Next
            If conta > 0 Then
                csvTelefono.ErrorMessage = "Solo se permiten números"
            Else
                args.IsValid = True

            End If
        End If
    End Sub



    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lblFecha.Text = Today.Date


        If IsPostBack = True Then
        Else
            llenaModelo()

        End If
    End Sub
    Public Sub llenaModelo()
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String

        query = "Select usuario,nom_Usuario from cr_Usuarios where perfil_Usuario='ventas'"
        ds = cl.retrieve(query, CommandType.Text)
        ddlVendedor.DataSource = ds
        ddlVendedor.DataTextField = "nom_Usuario"
        ddlVendedor.DataValueField = "usuario"
        ddlVendedor.DataBind()

        query = "select gpo_asig from excel where nombre_cliente='' group by gpo_asig order by gpo_asig"
        ds = cl.retrieve(query, CommandType.Text)
        ddlModelo.DataSource = ds
        ddlModelo.DataValueField = "gpo_asig"
        ddlModelo.DataTextField = "gpo_asig"
        ddlModelo.DataBind()
    End Sub
    Public Sub llenaAnio()
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        query = "select anio_modelo from excel  where gpo_asig = '{0}'and paquete='{1}'  and nombre_cliente='' group by anio_modelo order by anio_modelo"
        query = String.Format(query, ddlModelo.Text, ddlPaquete.Text)

        ds = cl.retrieve(query, CommandType.Text)
        ddlAnio.DataSource = ds
        ddlAnio.DataValueField = "anio_modelo"
        ddlAnio.DataTextField = "anio_modelo"
        ddlAnio.DataBind()
    End Sub

    Public Sub llenaColor()
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String
        query = "select color_auto.descr_color,color_auto.cve_color from color_auto inner join excel on color_auto.cve_color = excel.clave_2 where excel.gpo_asig = '{0}' and excel.paquete='{1}' and anio_modelo='{2}'  and nombre_cliente='' group by descr_color,cve_color order by descr_color"
        query = String.Format(query, ddlModelo.SelectedValue, ddlPaquete.SelectedValue, ddlAnio.Text)
        ds = cl.retrieve(query, CommandType.Text)
        ddlColor.DataSource = ds
        ddlColor.DataValueField = "cve_color"
        ddlColor.DataTextField = "descr_color"
        ddlColor.DataBind()
    End Sub
    Public Sub llenaPaquete()
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String

        query = String.Format("select paquete from excel where gpo_asig='{0}' and nombre_cliente='' group by paquete order by paquete", ddlModelo.Text)
        ds = cl.retrieve(query, CommandType.Text)
        ddlPaquete.DataSource = ds
        ddlPaquete.DataValueField = "paquete"
        ddlPaquete.DataTextField = "paquete"
        ddlPaquete.DataBind()
    End Sub

    Public Sub llenaOrden()
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String

        query = String.Format("select ord_num from excel where gpo_asig='{0}' and clave_2='{1}' and anio_modelo='{2}' and paquete ='{3}' and vestidura ='{4}' and  nombre_cliente='' group by ord_num order by ord_num", ddlModelo.Text, ddlColor.SelectedValue, ddlAnio.Text, ddlPaquete.Text, ddlVestiduras.SelectedValue)
        ds = cl.retrieve(query, CommandType.Text)
        ddlOrden.DataSource = ds
        ddlOrden.DataValueField = "ord_num"
        ddlOrden.DataTextField = "ord_num"
        ddlOrden.DataBind()
    End Sub
    Public Sub llenaVestiduras()
        Dim cl As New Chevrolet
        Dim ds As DataSet
        Dim query As String

        query = String.Format("select Vestidura+'/'+isnull(descVestidura,'') descVestidura,vestidura  from excel a left join vestiduras b on a.vestidura=b.claveVestidura where gpo_asig='{0}' and clave_2='{1}' and anio_modelo='{2}' and paquete ='{3}' and  nombre_cliente='' group by Vestidura,descVestidura order by descVestidura", ddlModelo.Text, ddlColor.SelectedValue, ddlAnio.Text, ddlPaquete.Text)
        ds = cl.retrieve(query, CommandType.Text)
        ddlVestiduras.DataSource = ds
        ddlVestiduras.DataValueField = "vestidura"
        ddlVestiduras.DataTextField = "descVestidura"
        ddlVestiduras.DataBind()
    End Sub
    Protected Sub ddlModelo_TextChanged(sender As Object, e As EventArgs) Handles ddlModelo.TextChanged

        If ddlModelo.SelectedIndex <> 0 Then
            llenaPaquete()
            llenaAnio()
            llenaColor()
            llenaVestiduras()
            llenaOrden()

        End If
    End Sub

    Protected Sub ddlAnio_TextChanged(sender As Object, e As EventArgs) Handles ddlAnio.TextChanged

        If ddlModelo.SelectedIndex <> 0 Then


            llenaColor()
            llenaVestiduras()
            llenaOrden()

        End If
    End Sub

    Protected Sub ddlColor_TextChanged(sender As Object, e As EventArgs) Handles ddlColor.TextChanged


        If ddlModelo.SelectedIndex <> 0 Then

            llenaVestiduras()
            llenaOrden()


        End If
    End Sub

    Protected Sub ddlPaquete_TextChanged(sender As Object, e As EventArgs) Handles ddlPaquete.TextChanged

        If ddlModelo.SelectedIndex <> 0 Then
            llenaAnio()
            llenaColor()
            llenaVestiduras()
            llenaOrden()

        End If

    End Sub

    Protected Sub btnPrevia_Click(sender As Object, e As EventArgs) Handles btnPrevia.Click
        If Page.IsValid Then


            grdVista.Visible = True
            Dim cl As New Chevrolet
            Dim ds As DataSet
            Dim query As String

            query = String.Format("select gpo_asig ,anio_modelo ,descr_color,paquete ,ord_num, vestidura  from excel a join color_auto b on a.clave_2 =b.cve_color  where gpo_asig ='{0}'and anio_modelo ='{1}' and cve_color ='{2}' and paquete ='{3}' and ord_num='{4}' and vestidura='{5}'", ddlModelo.Text, ddlAnio.Text, ddlColor.Text, ddlPaquete.Text, ddlOrden.Text, ddlVestiduras.Text)
            ds = cl.retrieve(query, CommandType.Text)
            grdVista.DataSource = ds
            grdVista.DataBind()
        End If
    End Sub

    Protected Sub btnAparta_Click(sender As Object, e As EventArgs) Handles btnAparta.Click
        If Page.IsValid Then


            Dim cl As New Chevrolet
            Dim ds As DataSet
            Dim query As String
            Dim folio As String

            query = String.Format("insert into folioApartados values(substring(convert(char,GETDATE(),100),1,1)+substring(convert(char,GETDATE(),100),5,2)+substring(convert(char,GETDATE(),100),10,2),'{0}')", ddlOrden.Text)
            cl.retrieve(query, CommandType.Text)
            query = String.Format("declare @id varchar(10) set @id =(select apartado + convert(char,id) from folioApartados where orden='{0}') insert into apartados values (@id,'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','') ", ddlOrden.Text, txtNombre.Text, txtTelefono.Text, txtMail.Text, ddlVendedor.Text, ddlModelo.Text, ddlAnio.Text, ddlColor.Text, ddlPaquete.Text, ddlOrden.Text, ddlVestiduras.Text)
            cl.retrieve(query, CommandType.Text)
            query = String.Format("declare @id varchar(10) set @id =(select apartado + convert(char,id) from folioApartados where orden='{0}') update excel  set nombre_cliente=@id where ord_num='{0}' ", ddlOrden.Text)
            cl.retrieve(query, CommandType.Text)
            query = String.Format("select nombre_cliente  from excel a join color_auto b on a.clave_2 =b.cve_color  where gpo_asig ='{0}'and anio_modelo ='{1}' and cve_color ='{2}' and paquete ='{3}' and ord_num='{4}' and vestidura='{5}'", ddlModelo.Text, ddlAnio.Text, ddlColor.Text, ddlPaquete.Text, ddlOrden.Text, ddlVestiduras.Text)
            ds = cl.retrieve(query, CommandType.Text)
            folio = ds.Tables(0).Rows(0)("nombre_cliente").ToString
            Response.Write(String.Format("<script languaje=javascript> alert('Folio generado: {0} ' );</script>", folio))


            txtNombre.Text = ""
            txtTelefono.Text = ""
            txtMail.Text = ""
            grdVista.Visible = False
            ddlAnio.Items.Clear()
            ddlColor.Items.Clear()
            ddlPaquete.Items.Clear()
            ddlOrden.Items.Clear()
            txtNombre.Focus()
            ddlModelo.SelectedIndex = 0



        End If

    End Sub





    Protected Sub CustomValidator1_ServerValidate(source As Object, args As ServerValidateEventArgs) Handles CustomValidator1.ServerValidate
        args.IsValid = False
        If ddlModelo.SelectedIndex = 0 Then
        Else
            args.IsValid = True
        End If
    End Sub

    Protected Sub ddlVestiduras_TextChanged(sender As Object, e As EventArgs) Handles ddlVestiduras.TextChanged
        If ddlModelo.SelectedIndex <> 0 Then

            llenaOrden()

        End If
    End Sub
End Class
