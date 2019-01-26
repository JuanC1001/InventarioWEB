<%-- 
    Document   : procesa_nuevo
    Created on : 25-ene-2019, 17:18:13
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.FRol,rnegocio.entidades.*"%>

<!DOCTYPE html>

<%
    try {
            Rol rol=new Rol();
            rol.setNombre(request.getParameter("nombre_rol"));
           boolean result= FRol.rol_insertar(rol);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
