<%-- 
    Document   : procesa_editar
    Created on : 16-ene-2019, 17:49:01
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.FProveedor,rnegocio.entidades.*"%>
<!DOCTYPE html>
<%
    try {
            Proveedor proveedor=new Proveedor();
            proveedor.setCodigo(Integer.valueOf(request.getParameter("codigo")));
            proveedor.setNombre(request.getParameter("nombre_proveedor"));
            proveedor.setDireccion(request.getParameter("direccion_proveedor"));
            proveedor.setTelefono(request.getParameter("telefono_proveedor"));                        
            proveedor.setRuc(request.getParameter("ruc_proveedor"));
            proveedor.setEmail(request.getParameter("email_proveedor"));
            
           boolean result= FProveedor.proveedor_editar(proveedor);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
