<%-- 
    Document   : procesa_editar
    Created on : 16-ene-2019, 17:15:03
    Author     : MI PC
--%>
<%@page import="rnegocio.funciones.FDestino"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.entidades.*"%>
<!DOCTYPE html>
<%
    try {
            Destino destino=new Destino();
            destino.setCodigo(Integer.valueOf(request.getParameter("codigo")));
            destino.setDescripcion(request.getParameter("descripcion_destino"));

            
            
           boolean result= FDestino.destino_editar(destino);
             if (result)
                out.println("<script> alert('Se ha guardado correctamente...'); location.replace('listar.jsp');</script>");
            else 
                out.println("<script> alert('No se ha guardado correctamente...'); location.replace('listar.jsp');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>

