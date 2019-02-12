<%-- 
    Document   : procesa_nuevo
    Created on : 25-ene-2019, 18:33:47
    Author     : MI PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.*,rnegocio.entidades.*"%>
<%@ page import="java.util.*" %>

<%
    try {
            RolPagina rolpagina=new RolPagina();
             int codigo_pagina= Integer.parseInt(request.getParameter("pagina1"));
             
            int codigo_rol= Integer.parseInt(request.getParameter("rol1"));
     
               rolpagina.setPagina(FPagina.pagina_buscarporid(codigo_pagina)); 
               rolpagina.setRol(FRol.rol_buscarporid(codigo_rol));
               
           boolean result= FRolPagina.PaginaRol_insertar(rolpagina);
             if (result)
                out.println("<script> alert('Se ha guardado correctamente...'); location.replace('listar.jsp');</script>");
            else 
                out.println("<script> alert('No se ha guardado correctamente...'); location.replace('listar.jsp');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
