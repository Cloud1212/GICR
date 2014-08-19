<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="Columna.aspx.vb" Inherits="Columna" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"/>
    <script type="text/javascript" src="./js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            cargaTabla();
            //alert("Jquery instaldo correctamente");

           
        });
        function editarCarro(idCodigo) {
            $.ajax({
                type: "POST",
                url: location.protocol + "//" + location.host + "/GICR/Columna.aspx/editaModeloCarline",
                data: "{codigo:" + idCodigo + ",cantidad:" + $("#" + idCodigo).val() + "}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    // Do something interesting here.
                    var data=msg;
                    if (data.d) {
                        $.ajax({
                            type: "POST",
                            url: location.protocol + "//" + location.host + "/GICR/Columna.aspx/llenaTablaColumnas",
                            data: "{}",
                            contentType: "application/json; charset=utf-8",
                            dataType: "json",
                            success: function (msg) {
                                // Do something interesting here.
                                var data = msg;
                                $('#example').dataTable().fnClearTable();
                                $('#example').dataTable().fnAddData(data.d);

                                //console.debug(d);
                            }
                        }).fail(function (xxh) {
                            console.debug(xxh);
                        });
                    }
                    else {
                        alert("Los datos no se actualzaron correctamente, favor de notificar al administrador del sistema");
                    }
                }
            }).fail(function (xxh) {
                console.debug(xxh);
            });
        }

        function cargaTabla() {
            $.ajax({
                type: "POST",
                url: location.protocol + "//" + location.host + "/GICR/Columna.aspx/llenaTablaColumnas",
                data: "{}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    // Do something interesting here.
                    var data = msg;
                   
                    $('#example').dataTable({
                        "bFilter": false,
                        "bLengthChange": false,
                        "data": data.d,
                        "bPaginate": false
                    });
                    inicial = false;
   
                //console.debug(d);
                }
            }).fail(function (xxh) {
                console.debug(xxh);
            });
        }

    </script>
    <div style="margin-left:20%;">
    <table id="example" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th>Nombre</th>
						<th>Cantidad</th>
						<th>Porcentaje de participacion individual</th>						
					</tr>
				</thead>

				<tfoot>
					<tr>
					    <th>Nombre</th>
						<th>Cantidad</th>
						<th>Porcentaje de participacion individual</th>						
					</tr>
				</tfoot>

				<tbody>
					
				</tbody>
			</table>
        </div>
</asp:Content>

