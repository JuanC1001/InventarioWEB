<%-- 
    Document   : procesa_editar
    Created on : 25-ene-2019, 17:33:39
    Author     : MI PC
--%>

<%@page import="rnegocio.funciones.FPagina"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.entidades.*"%>
<!DOCTYPE html>
<%
    try {
            Pagina pagina=new Pagina();
            pagina.setCodigo(Integer.valueOf(request.getParameter("codigo")));
            pagina.setUrl(request.getParameter("url_pagina"));
            pagina.setDescripcion(request.getParameter("descripcion_pagina"));
            

            
            
           boolean result= FPagina.pagina_editar(pagina);
             if (result)
                out.println("<script> alert('Se ha guardado correctamente...'); location.replace('listar.jsp');</script>");
            else 
                out.println("<script> alert('No se ha guardado correctamente...'); location.replace('listar.jsp');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
