<%-- 
    Document   : procesa_editar
    Created on : 28/01/2019, 12:12:28
    Author     : Brayan Macas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.FUsuarioRol,rnegocio.entidades.*"%>
<!DOCTYPE html>
<%
    try {
            UsuarioRol usuarioRol=new UsuarioRol();
            usuarioRol.setRol(request.getParameter("rol_usuarioRol"));
            usuarioRol.setUsuario(request.getParameter("usuario_usuarioRol"));
            usuarioRol.setEstado(request.getParameter("estado_usuarioRol"));
            usuarioRol.setCodigo(Integer.valueOf(request.getParameter("codigo")));
           boolean result= FUsuarioRol.usuarioRol_editar(usuarioRol);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
