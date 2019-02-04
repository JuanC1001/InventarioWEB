<%-- 
    Document   : procesa_eliminar
    Created on : 26-ene-2019, 20:55:13
    Author     : MI PC
--%>

<%@page import="rnegocio.funciones.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try {
       boolean result =FUsuarioRol.UsuarioRol_eliminar(Integer.valueOf(request.getParameter("codigo")));
        if (result)
       out.println("<script> alert('Se ha eliminado correctamente...'); location.replace('listar.jsp');</script>");
        else 
       out.println("<script> alert('No se ha eliminado correctamente...'); location.replace('listar.jsp');</script>");

       
    } catch (Exception e) {
        out.print(e.toString());
    }
%>
