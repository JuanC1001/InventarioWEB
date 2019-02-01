<%-- 
    Document   : procesa_eliminar
    Created on : 25-ene-2019, 18:32:23
    Author     : MI PC
--%>

<%@page import="rnegocio.funciones.FRolPagina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try {
       boolean result =FRolPagina.rolpagina_eliminar(Integer.valueOf(request.getParameter("codigo")));
        if (result)
       out.println("<script> alert('Se ha eliminado correctamente...'); location.replace('listar.jsp');</script>");
        else 
       out.println("<script> alert('No se ha eliminado correctamente...'); location.replace('listar.jsp');</script>");

       
    } catch (Exception e) {
        out.print(e.toString());
    }
%>
