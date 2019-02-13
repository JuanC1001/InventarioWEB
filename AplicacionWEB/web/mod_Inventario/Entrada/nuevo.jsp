<%-- 
    Document   : nuevo
    Created on : 16-ene-2019, 17:28:58
    Author     : Usuario
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="rnegocio.funciones.*"%>
<%@page import="rnegocio.entidades.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.*"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>

<%
   Date dNow = new Date();
   SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
   String currentDate = ft.format(dNow);
%>



<%
 List<Producto> listaproducto=FProducto.producto_buscartodos();
%>
<%
 List<Proveedor> listaproveedor=FProveedor.proveedor_buscartodos();
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Entrada</title>      
    </head>
    <body>

        <form method="POST"  action="procesa_nuevo.jsp">
            <h4> FECHA: <%=currentDate%></h4>

            <input type="hidden" value="<%=currentDate%>" type="text"  class="form-control" required id="fecha_entrada" name="fecha_entrada"/>
            <label>Producto:</label>
            <select id="product" name="product" class="form-control">
                <%
                    for(Producto producto: listaproducto){%>
                <option value="<%=producto.getCodigo()%>"><%=producto.getNombre()%></option>
                <%
                    }
                %>
            </select> 
            <label>Cantidad:</label>            
            <input pattern="^[0-9]+" type="text" class="form-control" placeholder="Ejm: 10" required id="cantidad_entrada" name="cantidad_entrada"/>
            <label>Proveedor:</label>
            <select id="proveedo" name="proveedo" class="form-control">
                <%
                    for(Proveedor proveedor: listaproveedor){%>
                <option value="<%=proveedor.getCodigo()%>"><%=proveedor.getNombre()%></option>
                <%
                    }
                %>
            </select>  
            <label>Observaciones:</label>
            <input type="text" class="form-control" placeholder="Sin observaciones " id="detalle_entrada" name="detalle_entrada"/>
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

