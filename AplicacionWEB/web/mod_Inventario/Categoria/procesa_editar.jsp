<%-- 
    Document   : procesa_editar
    Created on : 16-ene-2019, 17:49:01
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.FCategoria,rnegocio.entidades.*"%>
<!DOCTYPE html>
<%
    try {
            Categoria categoria=new Categoria();
            categoria.setNombre(request.getParameter("nombre_categoria"));
            categoria.setCodigo(Integer.valueOf(request.getParameter("codigo")));
            
           boolean result= FCategoria.categoria_editar(categoria);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
