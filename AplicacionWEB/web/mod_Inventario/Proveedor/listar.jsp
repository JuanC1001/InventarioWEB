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
            response.sendRedirect("../../inicio.jsp");
        }
 List<Proveedor> lista=FProveedor.proveedor_buscartodos();
 Iterator<Proveedor> itProveedor=lista.iterator();
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
        <title>Proveedor</title>

    <%@include file="../../cabecera.html" %>
    </head>
    <body>
    <%@include file="../../menu.html" %>
    <div id="page-wrapper">
        <div class="col-lg-12">
            <h1 class="page-header">Proveedores</h1>
        </div>
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
        <button type="button" onclick="return modalnuevo();" class="btn btn-primary" data-toggle="modal" data-target="#ModalNuevo"> Nuevo</button>  


        <table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">                <thead>
            <th>Id</th>
            <th>Nombre</th>
            <th>Direccion</th>
            <th>Telefono</th>            
            <th>Ruc</th>
            <th>Email</th>
            <th></th>
        </thead>
        <tbody>
            <%while(itProveedor.hasNext()){
                  Proveedor proveedor=itProveedor.next();%>
            <tr>
                <td><%= proveedor.getCodigo()%></td>
                <td><%= proveedor.getNombre()%></td>
                <td><%= proveedor.getDireccion()%></td>
                <td><%= proveedor.getTelefono()%></td>                
                <td><%= proveedor.getRuc()%></td>
                <td><%= proveedor.getEmail()%></td>
                <td>
                    <a class="btn btn-danger" href='procesa_eliminar.jsp?codigo=<%= proveedor.getCodigo()%>' onclick="return confirm('¿Está seguro que desea eliminar este registro?');">Eliminar</a>
                    <button type="button"  onclick="return modaleditar(<%= proveedor.getCodigo()%>)" class="btn btn-primary" data-toggle="modal" data-target="#ModalEditar">Editar</button>  

                </td>
            </tr>
            <%}%>                
        </tbody>           
    </table>

    <div class="modal fade" id="ModalEditar" class="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">

        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Editar Proveedor</h5>
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
                    <h5 class="modal-title" id="exampleModalLabel">Nueva Proveedor</h5>
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
                        function modaleditar(codigo){


                        $('.modal-body').load('editar.jsp?codigo=' + codigo, function(){

                        });
                           }
                        function modalnuevo(codigo){


                        $('.modal-body').load('nuevo.jsp', function(){

                        });
            }
<!--Sección datatable-->
            $(document).ready(function() {

                                var table = $('#example').DataTable({
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
