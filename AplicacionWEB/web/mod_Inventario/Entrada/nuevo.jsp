<%-- 
    Document   : nuevo
    Created on : 16-ene-2019, 17:28:58
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="rnegocio.funciones.*"%>
<%@page import="rnegocio.entidades.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>


<%
 List<Producto> listaproducto=FProducto.categoria_buscartodos();
%>
<!DOCTYPE html>
<%
 List<Proveedor> listaproveedor=FProveedor.categoria_buscartodos();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Entrada</title>      
    </head>
    <body>
        <form method="POST"  action="procesa_nuevo.jsp">
            <input type="text" class="form-control" placeholder="Fecha" required id="fecha_entrada" name="fecha_entrada"/>
            <select name="productos" class="form-control">
                <%
                    for(Producto producto: listaproducto){%>
                <option value="<%=producto.getCodigo()%>"><%=producto.getNombre()%></option>
                <%
                    }
                %>
            </select>  
            <input type="text" class="form-control" placeholder="Cantidad" required id="cantidad_entrada" name="cantidad_entrada"/>



            <input type="text" class="form-control" placeholder="Detalle " required id="detalle_entrada" name="detalle_entrada"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

