<%-- 
    Document   : procesa_editar
    Created on : 16-ene-2019, 17:49:01
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.FDestino,rnegocio.entidades.*"%>
<!DOCTYPE html>
<%
    try {
            Destino destino=new Destino();
            destino.setNombre(request.getParameter("nombre_destino"));
            destino.setCodigo(Integer.valueOf(request.getParameter("codigo")));
            
           boolean result= FDestino.destino_editar(destino);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
