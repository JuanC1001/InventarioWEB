<%-- 
    Document   : procesa_editar
    Created on : 28/01/2019, 12:12:28
    Author     : Brayan Macas
--%>

<%@page import="rnegocio.funciones.FUsuarioRol"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.entidades.*"%>
<!DOCTYPE html>
<%
    try {
            FUsuarioRol usuarioRol=new FUsuarioRol();
           usuarioRol.setCodigo(Integer.valueOf(request.getParameter("codigo")));
           usuarioRol.setEstado(request.getParameter("estado_usuarioRol"));
            

            
            
           boolean result= FUsuarioRol.UsuarioRol_editar(UsuarioRol);
             if (result)
                out.println("<script> alert('Se ha guardado correctamente...'); location.replace('listar.jsp');</script>");
            else 
                out.println("<script> alert('No se ha guardado correctamente...'); location.replace('listar.jsp');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
