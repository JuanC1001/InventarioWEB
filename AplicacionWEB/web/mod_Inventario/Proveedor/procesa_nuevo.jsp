<%-- 
    Document   : procesa_nuevo
    Created on : 16-ene-2019, 17:30:50
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.FProveedor,rnegocio.entidades.*"%>

<!DOCTYPE html>

<%
    try {
            Proveedor proveedor=new Proveedor();
            proveedor.setNombre(request.getParameter("nombre_proveedor"));
            proveedor.setDireccion(request.getParameter("direccion_proveedor"));
            proveedor.setTelefono(request.getParameter("telefono_proveedor"));
            proveedor.setRuc(request.getParameter("ruc_proveedor"));
            proveedor.setEmail(request.getParameter("email_proveedor"));
            
           boolean result= FProveedor.proveedor_insertar(proveedor);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
