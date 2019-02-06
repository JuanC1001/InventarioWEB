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
<%@page import="java.util.Calendar"%>



<%
 List<Producto> listaproducto=FProducto.producto_buscartodos();
%>
<%
 List<Proveedor> listaproveedor=FProveedor.proveedor_buscartodos();

Calendar fecha = Calendar.getInstance();
int a = fecha.get(Calendar.YEAR);
int m = fecha.get(Calendar.MONTH);
int d = fecha.get(Calendar.DAY_OF_MONTH);

%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Entrada</title>      
    </head>
    <body>

        <form method="POST"  action="procesa_nuevo.jsp">

            <input type="text" disabled class="form-control" placeholder="<%=d+" - "+m+" - "+ a%>" required id="fecha_entrada" name="fecha_entrada"/>
            
            <select id="producto" name="producto" class="form-control">
                <%
                    for(Producto producto: listaproducto){%>
                <option value="<%=producto.getCodigo()%>"><%=producto.getNombre()%></option>
                <%
                    }
                %>
            </select>  
            <input type="text" class="form-control" placeholder="Cantidad" required id="cantidad_entrada" name="cantidad_entrada"/>

            <select id="proveedor" name="proveedor" class="form-control">
                <%
                    for(Proveedor proveedor: listaproveedor){%>
                <option value="<%=proveedor.getCodigo()%>"><%=proveedor.getNombre()%></option>
                <%
                    }
                %>
            </select>  

            <input type="text" class="form-control" placeholder="Detalle " required id="detalle_entrada" name="detalle_entrada"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

