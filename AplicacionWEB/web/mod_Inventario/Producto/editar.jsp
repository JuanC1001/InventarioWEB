<%-- 
    Document   : editar
    Created on : 16-ene-2019, 17:29:10
    Author     : Usuario
--%>
<%@page import="rnegocio.entidades.*"%>
<%@page import="rnegocio.funciones.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 List<Categoria> lista=FCategoria.categoria_buscartodos();
 Iterator<Categoria> itCategoria=lista.iterator();
%>

<%!
   Producto producto= new Producto();
%>
<%
    String rol = (String) request.getSession().getAttribute("rol");     
        if(rol.equals("Empleado")){
        out.println("<script>  location.replace('listar.jsp?alerta=acceso_denegado');</script>");
        } 
    try {        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         producto=FProducto.producto_buscarporid(codigo);
        } catch (Exception e) {
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Producto</title>     
    </head>    
    <body>                       
        <form method="POST" action="procesa_editar.jsp">
            <input type="hidden" id="codigo" name="codigo" value="<%=producto.getCodigo()%>">
            <label>Nombre:</label>            
            <input type="text" required class="form-control" placeholder="Nombre Producto" id="nombre_producto" value="<%=producto.getNombre()%>" name="nombre_producto"/>
            <label>Stock:</label>            
            <input pattern="^[0-9]+" type="text" required class="form-control" placeholder="Stock Actual"  id="stock_producto" value="<%=producto.getStock()%>" name="stock_producto"/>
            <label>Precio de Venta:</label>            
            <input pattern="^[0-9]+" type="text" required class="form-control" placeholder="Precio Venta"  id="precio_venta_producto" value="<%=producto.getPrecio_venta()%>" name="precio_venta_producto"/>
            <label>Precio de Compra:</label>            
            <input pattern="^[0-9]+" type="text" required class="form-control" placeholder="Precio Compra"  id="precio_compra_producto" value="<%=producto.getPrecio_compra()%>" name="precio_compra_producto"/>            
            <label>Categoria:</label>            
            <select class="form-control" name="categoria" >
                 <option value="<%=producto.getCategoria().getCodigo()%>"> <%=producto.getCategoria().getNombre()%></option>
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
