<%-- 
    Document   : procesa_nuevo
    Created on : 25-ene-2019, 15:37:06
    Author     : Usuario
--%><%-- 
    Document   : procesa_nuevo
    Created on : 25-ene-2019, 17:30:40
    Author     : MI PC
--%>

<%@page import="rnegocio.funciones.FUsuario"%>
<%@page import="rnegocio.entidades.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.FUsuario,rnegocio.entidades.*"%>

<% 
    String prueba=request.getParameter("url_Usuario");
    
 out.println(prueba);
  
  
%>



<!DOCTYPE html>

<%
    try {
            Usuario usuario=new Usuario();
            usuario.setNombre(request.getParameter("nombre_usuario"));
            usuario.setApellido(request.getParameter("apellido_usuario"));
            usuario.setCedula(request.getParameter("cedula_usuario"));
            usuario.setEmail(request.getParameter("email_usuario"));
            usuario.setClave(request.getParameter("clave_usuario"));
           boolean result= FUsuario.usuario_insertar(usuario);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
