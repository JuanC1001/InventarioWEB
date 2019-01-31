<%-- 
    Document   : nuevo
    Created on : 16-ene-2019, 17:28:58
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 List<Producto> lista=FProducto.producto_buscartodos();
 Iterator<Producto> itProducto=lista.iterator();
%>
<%
 List<Proveedor> lista=FProveedor.proveedor_buscartodos();
 Iterator<Proveedor> itProveedor=lista.iterator();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Entrada</title>
    </head>
    <body>


        <form method="POST"  action="procesa_nuevo.jsp">
            <input type="text" class="form-control" placeholder="Fecha" required id="fecha_entrada" name="fecha_entrada"/>
            <select class="form-control">
                <option>itProducto.</option>
            </select>
            <input type="text" class="form-control" placeholder="Cantidad" required id="cantidad_entrada" name="cantidad_entrada"/>
            
            <select class="form-control">
                
                <option value="idp">itProveedor.getnombre</option>
            </select>
            
            <input type="text" class="form-control" placeholder="Detalle " required id="detalle_entrada" name="detalle_entrada"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

