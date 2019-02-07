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
            usuario.setCodigo(Integer.valueOf(request.getParameter("codigo")));
            usuario.setNombre(request.getParameter("nombre_usuario"));
            usuario.setApellido(request.getParameter("apellido_usuario"));
            usuario.setCedula(request.getParameter("cedula_usuario")); 
            usuario.setEmail(request.getParameter("email_usuario"));            
            usuario.setClave(request.getParameter("clave_usuario"));
            //out.print("<script>alert("+usuario.getClave()+");</script>");
           boolean resultado= FUsuario.usuario_editar(usuario);

             if (resultado)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
