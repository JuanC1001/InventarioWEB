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
            response.sendRedirect("../../inicio.jsp");
        }
 List<Producto> lista=FProducto.producto_buscartodos();
 Iterator<Producto> itProducto=lista.iterator();
%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Producto</title>
        <%@include file="../../cabecera.html" %>
    </head>
    <body>   
    <%@include file="../../menu.html" %>
    
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
         <h1>Producto</h1> 
           <button type="button" onclick="return modalnuevo();" class="btn btn-primary" data-toggle="modal" data-target="#ModalNuevo"> Nuevo</button>  
                            
<table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">                
    <thead>
                <th>Codigo</th>
                <th>Nombre</th>
                <th>Stock</th>
                <th>precio_venta</th>
                <th>precio_compra</th>
                <th>Categoria</th>                 
                 <th></th>
                </thead>
                <tbody>
               <%while(itProducto.hasNext()){
                  Producto producto=itProducto.next();%>
                <tr>
                   <td><%= producto.getCodigo()%></td>
                    <td><%= producto.getNombre()%></td>
                   <td><%= producto.getStock()%></td>
                    <td><%= producto.getPrecio_venta()%></td>
                   <td><%= producto.getPrecio_compra()%></td>
                    <td><%= producto.getCategoria().getNombre()%></td>                    
                        <td>
                         <a class="btn btn-danger" href='procesa_eliminar.jsp?codigo=<%= producto.getCodigo()%>' onclick="return confirm('¿Está seguro que desea eliminar este registro?');">Eliminar</a>
                         
                        <button type="button"  onclick="return modaledita(<%= producto.getCodigo()%>)" class="btn btn-primary" data-toggle="modal" data-target="#ModalEditar">Editar</button>         
                   </td>
                </tr>
               <%}%>                
                </tbody>           
            </table>
                
                <div class="modal fade" id="ModalEditar" class="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   
                <div class="modal-dialog" role="document">
                <div class="modal-content">
                      <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Editar Producto</h5>
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
                        <h5 class="modal-title" id="exampleModalLabel">Nuevo Producto</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <span aria-hidden="true">&times;</span>
                        </button>
                      </div>
                      <div class="modal-body">


                      </div>
              </div>
            </div>
          </div>       
                

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
