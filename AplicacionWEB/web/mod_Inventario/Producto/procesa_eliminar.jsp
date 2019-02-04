<%-- 
    Document   : procesa_eliminar
    Created on : 16-ene-2019, 17:57:57
    Author     : Usuario
--%>

<%@page import="rnegocio.entidades.*"%>
<%@page import="rnegocio.funciones.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try {
       boolean result =FProducto.producto_eliminar(Integer.valueOf(request.getParameter("codigo")));
        if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }
%>
