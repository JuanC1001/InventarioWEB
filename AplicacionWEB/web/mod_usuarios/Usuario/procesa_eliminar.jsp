<%-- 
    Document   : procesa_eliminar
    Created on : 25-ene-2019, 17:36:20
    Author     : MI PC
--%>

<%@page import="rnegocio.funciones.FUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try {
       boolean result =FUsuario.usuario_eliminar(Integer.valueOf(request.getParameter("codigo")));
        if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
        else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

       
    } catch (Exception e) {
        out.print(e.toString());
    }
%>
