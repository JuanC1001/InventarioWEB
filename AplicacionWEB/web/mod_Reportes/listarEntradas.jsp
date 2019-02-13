<%-- 
    Document   : listar
    Created on : 16-ene-2019, 17:07:24
    Author     : Usuario
--%>
<%@page import="rnegocio.funciones.*"%>
<%@page import="rnegocio.entidades.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
        
<%
     String user = (String) request.getSession().getAttribute("nombre");
     String rol = (String) request.getSession().getAttribute("rol");
        if(user==null){
            response.sendRedirect("../../inicio.html");
        }
 List<Reporte> listaentrada=FReporte.reporte_entrada();
 Iterator<Reporte> itReporte=listaentrada.iterator();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Reporte Entradas</title>

    <%@include file="../cabecera3.html" %>
    </head>
    <body>
    <%@include file="../menu3.html" %>
    <div id="page-wrapper">
        
        

        <!--Sección alerta-->
        <%
            String alerta="";
            try {
                      alerta=request.getParameter("alerta").toString();
                } catch (Exception e) {
                }
           
    if (alerta.equals("si")){%>
        <div class="alert alert-success" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
             <strong>Éxito!</strong> La transacción fue éxitosa!
        </div>
        <%} if(alerta.equals("no")){%>
        <div class="alert alert-danger" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
             <strong>Falló!</strong> La transacción fue fallida!
        </div>
       <% }if (alerta.equals("acceso_denegado")){%>
            <div class="alert alert-danger" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <strong>Acceso denegado!</strong> Al parecer no tiene PERMISO para realizar esta acción!!
            </div>
            <%}
            %>
             <!--Fin Sección alerta-->
        <div class="col-lg-12">
            <h2 class="page-header">Resumen Entradas</h2>
        </div>
             <button type="button" onclick="#ReporteEntrada.jsp" class="btn btn-primary"> Imprimir Lista</button>  

        <table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">                <thead>
            <th>Fecha</th>
            <th>Producto</th>
            <th>Cantidad</th>
            <th>Proveedor</th>          
        </thead>
        <tbody>
            <%while(itReporte.hasNext()){
                  Reporte reporte=itReporte.next();%>
            <tr>
                <td><%= reporte.getFecha_entrada()%></td>
                <td><%= reporte.getNombre_producto()%></td>                
                <td><%= reporte.getCantidad_entrada()%></td>
                <td><%= reporte.getNombre_proveedor()%></td>                
            </tr>
            <%}%>                
        </tbody>           
    </table>       
    <script>
         <!--Sección datatable-->
	$(document).ready(function() {
            
                var table = $('#example').DataTable( {
                    lengthChange: false,
                    buttons: [ 'copy', 'excel', 'csv', 'pdf', 'colvis' ],
                        language: {
                        "decimal": "",
                        "emptyTable": "No hay información",
                        "info": "Mostrando _START_ a _END_ de _TOTAL_ Reportes",
                        "infoEmpty": "Mostrando 0 to 0 of 0 Reportes",
                        "infoFiltered": "(Filtrado de _MAX_ total reportes)",
                        "infoPostFix": "",
                        "thousands": ",",
                        "lengthMenu": "Mostrar _MENU_ Reportes",
                        "loadingRecords": "Cargando...",
                        "processing": "Procesando...",
                        "search": "Buscar:",
                        "zeroRecords": "Sin resultados encontrados",
                        "paginate": {
                            "first": "Primero",
                            "last": "Ultimo",
                            "next": "Siguiente",
                            "previous": "Anterior"
                        },
                          "buttons": {
                            "copy": "Copiar",
                            "colvis": "Columnas visibles",

                        }}

                } );

                table.buttons().container()
                    .appendTo( '#example_wrapper .col-md-6:eq(0)' );
            } );
         <!--fin Sección datatable-->
             <!--Sección alerta-->
      window.setTimeout(function() {
    $(".alert").fadeTo(500, 0).slideUp(500, function(){
        $(this).remove(); 
    });
}, 4000);
         <!--fin Sección alerta-->
 
 
    </script>
</div>    
    </body>
</html>