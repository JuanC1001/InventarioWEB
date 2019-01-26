<%-- 
    Document   : procesa_nuevo
    Created on : 25-ene-2019, 15:37:06
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.FUsuario,rnegocio.entidades.*"%>

<!DOCTYPE html>

<%
    try {
            Usuario usuario=new Usuario();
            usuario.setApellidos(request.getParameter("apellido_usuario"));
            usuario.setNombres(request.getParameter("apellido_usuario"));
            usuario.setEmail(request.getParameter("apellido_usuario"));
            usuario.setCedula(request.getParameter("apellido_usuario"));
            usuario.setClave(request.getParameter("apellido_usuario"));
            usuario.setPrimer_acceso(request.getParameter("apellido_usuario"));
            usuario.setApellidos(request.getParameter("apellido_usuario"));
            usuario.setApellidos(request.getParameter("apellido_usuario"));
           boolean result= FUsuario.usuario_insertar(usuario);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
