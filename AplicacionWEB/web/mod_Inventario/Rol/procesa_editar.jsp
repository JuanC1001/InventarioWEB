<%-- 
    Document   : procesa_editar
    Created on : 25-ene-2019, 17:27:56
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.FRol,rnegocio.entidades.*"%>
<!DOCTYPE html>
<%
    try {
            Rol rol=new Rol();
            rol.setNombre(request.getParameter("nombre_rol"));
            rol.setCodigo(Integer.valueOf(request.getParameter("codigo")));
           boolean result= FRol.rol_editar(rol);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>

