<%-- 
    Document   : procesa_editar
    Created on : 16-ene-2019, 17:49:01
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.*,rnegocio.entidades.*"%>
<%@page import = "java.text.SimpleDateFormat,java.text.ParseException, javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>

<!DOCTYPE html>
<%
      try {
            Salida salida=new Salida();
            
            String startDateStr = request.getParameter("fecha_salida");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date startDate = sdf.parse(startDateStr);
            salida.setCodigo(Integer.valueOf(request.getParameter("codigo")));
            salida.setFecha(startDate);            
            salida.setProducto(FProducto.producto_buscarporid(Integer.parseInt(request.getParameter("product"))));             
            salida.setCantidad(Integer.parseInt(request.getParameter("cantidad_salida")));             
            salida.setDestino(FDestino.destino_buscarporid(Integer.parseInt(request.getParameter("proveedo"))));
            
            salida.setDetalle(request.getParameter("detalle_salida"));            
          
           boolean result= FSalida.salida_editar(salida);
            
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
