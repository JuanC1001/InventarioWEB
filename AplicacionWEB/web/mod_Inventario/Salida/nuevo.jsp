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
 List<Destino> listadestino=FDestino.destino_buscartodos();
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Salida</title>      
    </head>
    <body>

        <form method="POST"  action="procesa_nuevo.jsp">
            <h4> FECHA: <%=currentDate%></h4>

            <input type="hidden" value="<%=currentDate%>" type="text"  class="form-control" required id="fecha_salida" name="fecha_salida"/>
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
            <input pattern="^[0-9]+" type="text" class="form-control" placeholder="Ejm: 10" required id="cantidad_salida" name="cantidad_salida"/>
            <label>Proveedor:</label>
            <select id="proveedo" name="proveedo" class="form-control">
                <%
                    for(Destino destino: listadestino){%>
                <option value="<%=destino.getCodigo()%>"><%=destino.getNombre()%></option>
                <%
                    }
                %>
            </select>  
            <label>Observaciones:</label>
            <input type="text" class="form-control" placeholder="Sin Observaciones " id="detalle_salida" name="detalle_salida"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

