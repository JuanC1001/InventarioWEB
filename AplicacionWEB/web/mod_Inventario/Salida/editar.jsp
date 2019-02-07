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
   Salida salida= new Salida();
%>
<%
    try {        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         salida=FSalida.salida_buscarporid(codigo);                
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
 List<Destino> listadestino=FDestino.destino_buscartodos();
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Salida</title>      
    </head>
    <body>

       <form method="POST" action="procesa_editar.jsp">
            <input type="hidden" id="codigo" name="codigo" value="<%=salida.getCodigo()%>">
            
            <h4> FECHA: <%=salida.getFecha()%></h4>

            <input type="hidden" value="<%=salida.getFecha()%>" type="text"  class="form-control" required id="fecha_salida" name="fecha_salida"/>

            <select id="product" name="product" class="form-control">
                <option value="<%=salida.getProducto().getCodigo()%>"> <%=salida.getProducto().getNombre()%></option>

                <%
                    for(Producto producto: listaproducto){%>
                <option value="<%=producto.getCodigo()%>"><%=producto.getNombre()%></option>
                <%
                    }
                %>
            </select>  
            <input value="<%=salida.getCantidad()%>" type="text" class="form-control" placeholder="Cantidad" required id="cantidad_salida" name="cantidad_salida" />

            <select id="proveedo" name="proveedo" class="form-control">
                <option value="<%=salida.getDestino().getCodigo()%>"> <%=salida.getDestino().getNombre()%></option>
                
                <%
                    for(Destino destino: listadestino){%>
                <option value="<%=destino.getCodigo()%>"><%=destino.getNombre()%></option>
                <%
                    }
                %>
            </select>  

            <input value="<%=salida.getDetalle()%>" type="text" class="form-control" placeholder="Detalle " id="detalle_salida" name="detalle_salida"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

