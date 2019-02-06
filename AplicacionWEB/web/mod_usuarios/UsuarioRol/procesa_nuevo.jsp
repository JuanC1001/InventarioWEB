<%-- 
    Document   : procesa_nuevo
    Created on : 26-ene-2019, 20:55:36
    Author     : MI PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.*,rnegocio.entidades.*"%>

<!DOCTYPE html>
<%
    try {
            UsuarioRol usuarioRol=new UsuarioRol();
            //Rol rol=new Rol();
            int codigo_rol= Integer.parseInt(request.getParameter("rol"));
            //Usuario usuario=new Usuario();
            int codigo_usuario= Integer.parseInt(request.getParameter("usuario"));
         
                        
            
                                    
            //out.print("<script>alert("+codigo_categoria+");</script>");
            usuarioRol.setRol(FRol.rol_buscarporid(codigo_rol));
            usuarioRol.setUsuario(FUsuario.usuario_buscarporid(codigo_usuario));

            usuarioRol.setEstado(Integer.parseInt(request.getParameter("estado_usuarioRol")));
            
 
            
           boolean result= FUsuarioRol.UsuarioRol_insertar(UsuarioRol);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
