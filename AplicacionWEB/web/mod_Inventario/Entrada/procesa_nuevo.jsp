<%-- 
    Document   : procesa_nuevo
    Created on : 16-ene-2019, 17:30:50
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.*,rnegocio.entidades.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat"%>

<!DOCTYPE html>
<%

    try {
            Entrada entrada=new Entrada();
            int codigo_producto= Integer.parseInt(request.getParameter("producto"));
            int codigo_proveedor= Integer.parseInt(request.getParameter("proveedor"));

entrada.setFecha(Date);
            entrada.setProducto(FProducto.producto_buscarporid(codigo_producto));
            
            entrada.setCantidad(Integer.parseInt(request.getParameter("cantidad_entrada")));
            
            entrada.setProveedor(FProveedor.proveedor_buscarporid(codigo_proveedor));

            entrada.setDetalle(request.getParameter("detalle_entrada"));
                       
           boolean result= FEntrada.entrada_insertar(entrada);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
