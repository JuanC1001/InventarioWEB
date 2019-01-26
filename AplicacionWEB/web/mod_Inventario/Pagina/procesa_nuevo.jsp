<%-- 
    Document   : procesa_nuevo
    Created on : 25-ene-2019, 17:30:40
    Author     : MI PC
--%>

<%@page import="rnegocio.funciones.FPagina"%>
<%@page import="rnegocio.entidades.Pagina"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.entidades.*"%>
<% 
    String prueba=request.getParameter("url_Pagina");
    String prueba=request.getParameter("descripcion_Pagina");
  
  
 
 out.println(prueba);
  
  
%>

<%
    try {
            Pagina pagina=new Pagina();
               pagina.setUrl(request.getParameter("url_pagina")); 
               pagina.setDescripcion(request.getParameter("descripcion_pagina"));
           boolean result= FPagina.pagina_insertar(pagina);
             if (result)
                out.println("<script> alert('Se ha guardado correctamente...'); location.replace('listar.jsp');</script>");
            else 
                out.println("<script> alert('No se ha guardado correctamente...'); location.replace('listar.jsp');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
