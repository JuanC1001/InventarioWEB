<%-- 
    Document   : procesa_eliminar
    Created on : 16-ene-2019, 17:15:54
    Author     : MI PC
--%>

<%@page import="rnegocio.funciones.FDestino"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try {
       boolean result =FDestino.destino_eliminar(Integer.valueOf(request.getParameter("codigo")));
        if (result)
       out.println("<script> alert('Se ha eliminado correctamente...'); location.replace('listar.jsp');</script>");
        else 
       out.println("<script> alert('No se ha eliminado correctamente...'); location.replace('listar.jsp');</script>");

       
    } catch (Exception e) {
        out.print(e.toString());
    }
%>
