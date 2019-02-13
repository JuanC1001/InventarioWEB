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
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%
     String rol = (String) request.getSession().getAttribute("rol");     
        if(rol.equals("Empleado")){
        out.println("<script>  location.replace('listar.jsp?alerta=acceso_denegado');</script>");
        } 
%>
<%
 List<Categoria> listaproducto=FCategoria.categoria_buscartodos();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Producto</title>        
    </head>
    <body>
          <form method="POST"  action="procesa_nuevo.jsp">
            <input type="text" class="form-control" placeholder="Nombre Producto (ejm: Galletas)" required id="nombre_producto" name="nombre_producto"/>
            <input type="text" class="form-control" placeholder="Stock Actual (ejm: 100)" pattern="^[0-9]+" required id="stock_producto" name="stock_producto"/>
            <input type="text" class="form-control" placeholder="Precio Venta (ejm: 0.50)" pattern="^[0-9]+" required id="precio_venta_producto" name="precio_venta_producto"/>
            <input type="text" class="form-control" placeholder="Precio Compra (ejm: 0.40)" pattern="^[0-9]+" required id="precio_compra_producto" name="precio_compra_producto"/>            
            <select  class="form-control" name="categoria">
                
                
                <%
                    for(Categoria cat: listaproducto){%>
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

