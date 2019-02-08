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
        if(user==null){
            response.sendRedirect("../../inicio.html");
        }	
 List<Usuario> lista=FUsuario.usuario_buscartodos();	
 Iterator<Usuario> itUsuario=lista.iterator();	
%>	
<!DOCTYPE html>	
<html>	
    <head>	
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <!-- Bootstrap Core CSS -->
        <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="../../vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="../../dist/css/sb-admin-2.css" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="../../vendor/morrisjs/morris.css" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

        <title>Usuario</title>
    <%@include file="../../cabecera_1.html" %>
    </head>
    <body>
    <%@include file="../../menu_1.html" %> 
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
       <% }%>	
        <!--Fin Sección alerta-->	
         <h1>Usuario</h1> 	
           <button type="button" onclick="return modalnuevo();" class="btn btn-primary" data-toggle="modal" data-target="#ModalNuevo"> Nuevo</button>  	



 <table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">                <thead>	
                <th>Codigo</th>	
                <th>Nombre</th>	
                <th>Apellido</th>	
                <th>Cedula</th>	
                <th>Email</th>
                <th>Claveencryp</th>	

                  <th></th>	
                </thead>	
                <tbody>	
               <%while(itUsuario.hasNext()){	
                  Usuario usuario=itUsuario.next();%>	
                <tr>	
                   <td><%= usuario.getCodigo()%></td>	
                    <td><%= usuario.getNombre()%></td>	
                    <td><%= usuario.getApellido()%></td>	
                    <td><%= usuario.getCedula()%></td>	
                    <td><%= usuario.getEmail()%></td>	
                    <td><%= usuario.getClave()%></td>	
                    
                     <td>	                         
                            <a  class="btn btn-danger" href='procesa_eliminar.jsp?codigo=<%= usuario.getCodigo()%>' onclick="return confirm('¿Está seguro que desea eliminar este registro?');">Eliminar</a>	
                         <button type="button"  onclick="return modaledita(<%= usuario.getCodigo()%>)" class="btn btn-primary" data-toggle="modal" data-target="#ModalEditar">Editar</button>         	
                   </td>	
                </tr>	
               <%}%>                	
                </tbody>           	
            </table>	

                 <div class="modal fade" id="ModalEditar" class="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">	

                 <div class="modal-dialog" role="document">	
                <div class="modal-content">	
                      <div class="modal-header">	
                        <h5 class="modal-title" id="exampleModalLabel">Editar Usuario</h5>	
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">	
                          <span aria-hidden="true">&times;</span>	
                        </button>	
                      </div>	
                      <div class="modal-body">	


                       </div>	
              </div>	
            </div>	
          </div> 	


            <div class="modal fade" id="ModalNuevo" class="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">	

                 <div class="modal-dialog" role="document">	
                <div class="modal-content">	
                      <div class="modal-header">	
                        <h5 class="modal-title" id="exampleModalLabel">Nuevo Usuario</h5>	
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">	
                          <span aria-hidden="true">&times;</span>	
                        </button>	
                      </div>	
                      <div class="modal-body">	


                       </div>	
              </div>	
            </div>	
          </div>       	
    
    <script src="vendor/jquery/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="vendor/metisMenu/metisMenu.min.js"></script>
<!-- Morris Charts JavaScript -->
<script src="vendor/raphael/raphael.min.js"></script>
<script src="vendor/morrisjs/morris.min.js"></script>
<script src="data/morris-data.js"></script>
<!-- Custom Theme JavaScript -->
<script src="dist/js/sb-admin-2.js"></script>
    
     <script>	
           function modaledita(codigo){	
           	
      	
            $('.modal-body').load('editar.jsp?codigo='+codigo,function(){	
             });	
        }	
        function modalnuevo(codigo){	
           	
      	
            $('.modal-body').load('nuevo.jsp',function(){	
             });	
        }	
         <!--Sección datatable-->	
	$(document).ready(function() {	
            	
                var table = $('#example').DataTable( {	
                    lengthChange: false,	
                    buttons: [ 'copy', 'excel', 'csv', 'pdf', 'colvis' ],	
                        language: {	
                        "decimal": "",	
                        "emptyTable": "No hay información",	
                        "info": "Mostrando _START_ a _END_ de _TOTAL_ Entradas",	
                        "infoEmpty": "Mostrando 0 to 0 of 0 Entradas",	
                        "infoFiltered": "(Filtrado de _MAX_ total entradas)",	
                        "infoPostFix": "",	
                        "thousands": ",",	
                        "lengthMenu": "Mostrar _MENU_ Entradas",	
                        "loadingRecords": "Cargando...",	
                        "processing": "Procesando...",	
                        "search": "Buscar:",	
                        "zeroRecords": "Sin resultados encontrados",	
                        "usuariote": {	
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