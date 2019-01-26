<%-- 
    Document   : procesa_editar
    Created on : 25-ene-2019, 17:33:39
    Author     : MI PC
--%>

<%@page import="rnegocio.funciones.FUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.entidades.*"%>
<!DOCTYPE html>
<%
    try {
            Usuario usuario=new Usuario();
            usuario.setCodigo(Integer.valueOf(request.getParameter("codigo")));
            usuario.setUrl(request.getParameter("url_usuario"));
            usuario.setDescripcion(request.getParameter("descripcion_usuario"));
            

            
            
           boolean result= FUsuario.usuario_editar(usuario);
             if (result)
                out.println("<script> alert('Se ha guardado correctamente...'); location.replace('listar.jsp');</script>");
            else 
                out.println("<script> alert('No se ha guardado correctamente...'); location.replace('listar.jsp');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
