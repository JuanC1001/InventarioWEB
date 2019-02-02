<%-- 
    Document   : procesa_editar
    Created on : 25-ene-2019, 18:28:12
    Author     : MI PC
--%>

<%@page import="rnegocio.funciones.FRolPagina"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.entidades.*"%>
<!DOCTYPE html>
<%
    try {
            FRolPaginarolpagina=new FRolPagina();
           rolpagina.setCodigo(Integer.valueOf(request.getParameter("codigo")));
           rolpagina.setUrl(request.getParameter("pagina_rolpagina"));
           rolpagina.setDescripcion(request.getParameter("rol_rolpagina"));
            

            
            
           boolean result= FRolPagina.rolpagina_editar(rolpagina);
             if (result)
                out.println("<script> alert('Se ha guardado correctamente...'); location.replace('listar.jsp');</script>");
            else 
                out.println("<script> alert('No se ha guardado correctamente...'); location.replace('listar.jsp');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
