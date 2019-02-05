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
 List<Producto> listaproducto=FProducto.producto_buscartodos();
%>
<%
 List<Destino> listadestino=FDestino.destino_buscartodos();
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Salida</title>      
    </head>
    <body>
        <form method="POST"  action="procesa_nuevo.jsp">
            <input type="text" class="form-control" placeholder="Fecha" required id="fecha_salida" name="fecha_salida"/>
            <select id="producto" name="producto" class="form-control">
                <%
                    for(Producto producto: listaproducto){%>
                <option value="<%=producto.getCodigo()%>"><%=producto.getNombre()%></option>
                <%
                    }
                %>
            </select>  
            <input type="text" class="form-control" placeholder="Cantidad" required id="cantidad_salida" name="cantidad_salida"/>

            <select id="destino" name="destino" class="form-control">
                <%
                    for(Destino destino: listadestino){%>
                <option value="<%=destino.getCodigo()%>"><%=destino.getNombre()%></option>
                <%
                    }
                %>
            </select>  

            <input type="text" class="form-control" placeholder="Detalle " required id="detalle_salida" name="detalle_salida"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

