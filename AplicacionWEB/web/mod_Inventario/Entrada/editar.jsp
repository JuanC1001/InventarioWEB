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
<%!
   Entrada entrada= new Entrada();
%>
<%
    try {        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         entrada=FEntrada.entrada_buscarporid(codigo);                
        } catch (Exception e) {
        }
%>
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

       <form method="POST" action="procesa_editar.jsp">
            <input type="hidden" id="codigo" name="codigo" value="<%=entrada.getCodigo()%>">
            
            <h4> FECHA: <%=entrada.getFecha()%></h4>

            <input type="hidden" value="<%=entrada.getFecha()%>" type="text"  class="form-control" required id="fecha_entrada" name="fecha_entrada"/>

            <select id="product" name="product" class="form-control">
                <option value="<%=entrada.getProducto().getCodigo()%>"> <%=entrada.getProducto().getNombre()%></option>

                <%
                    for(Producto producto: listaproducto){%>
                <option value="<%=producto.getCodigo()%>"><%=producto.getNombre()%></option>
                <%
                    }
                %>
            </select>  
            <input value="<%=entrada.getCantidad()%>" type="text" class="form-control" placeholder="Cantidad" required id="cantidad_entrada" name="cantidad_entrada" />

            <select id="proveedo" name="proveedo" class="form-control">
                <option value="<%=entrada.getProveedor().getCodigo()%>"> <%=entrada.getProveedor().getNombre()%></option>
                
                <%
                    for(Proveedor proveedor: listaproveedor){%>
                <option value="<%=proveedor.getCodigo()%>"><%=proveedor.getNombre()%></option>
                <%
                    }
                %>
            </select>  

            <input value="<%=entrada.getDetalle()%>" type="text" class="form-control" placeholder="Detalle " id="detalle_entrada" name="detalle_entrada"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

