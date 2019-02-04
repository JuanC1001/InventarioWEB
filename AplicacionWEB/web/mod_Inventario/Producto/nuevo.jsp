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
 List<Categoria> lista=FCategoria.categoria_buscartodos();
 Iterator<Categoria> itCategoria=lista.iterator();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Producto</title>        
    </head>
    <body>
          <form method="POST"  action="procesa_nuevo.jsp">
            <input type="text" class="form-control" placeholder="Nombre Producto" required id="nombre_producto" name="nombre_producto"/>
            <input type="text" class="form-control" placeholder="Stock Actual" required id="stock_producto" name="stock_producto"/>
            <input type="text" class="form-control" placeholder="Precio Venta" required id="precio_venta_producto" name="precio_venta_producto"/>
            <input type="text" class="form-control" placeholder="Precio Compra" required id="precio_compra_producto" name="precio_compra_producto"/>            
            <select  name="categoria">
                <%
                    for(Categoria cat: lista){%>
                    <option value="<%=cat.getCodigo()%>"> <%=cat.getNombre()%></option>
                <%
                   }
                %>
            </select>
            
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
    </body>
</html>

