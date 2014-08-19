<%@ Page Title="" Language="VB" MasterPageFile="~/GICR.master" AutoEventWireup="false" CodeFile="Columna.aspx.vb" Inherits="Columna" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true"/>
    <script type="text/javascript" src="./js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            
            //alert("Jquery instaldo correctamente");

            $.ajax({
                type: "POST",
                url: location.protocol + "//" + location.host + "/GICR/Columna.aspx/llenaTablaColumnas",
                data: "{}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    // Do something interesting here.
                    var data = msg;
                    //console.debug(d);
                    $('#example').dataTable({
                        "bFilter": false,
                        "bLengthChange": false,
                        "data": data.d,
                        "bPaginate": false
                    });
                }
            }).fail(function (xxh) {
                console.debug(xxh);
            });
        });
    </script>
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

</asp:Content>

