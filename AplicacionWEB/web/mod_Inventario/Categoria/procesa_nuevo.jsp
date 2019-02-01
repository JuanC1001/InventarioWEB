<%-- 
    Document   : procesa_nuevo
    Created on : 16-ene-2019, 17:30:50
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.FCategoria,rnegocio.entidades.*"%>

<!DOCTYPE html>

<%
    try {
            Categoria categoria=new Categoria();
            categoria.setNombre(request.getParameter("nombre_categoria"));
           boolean result= FCategoria.categoria_insertar(categoria);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
