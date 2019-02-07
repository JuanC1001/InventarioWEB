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
            Entrada entrada=new Entrada();
            
            String startDateStr = request.getParameter("fecha_entrada");
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date startDate = sdf.parse(startDateStr);
            entrada.setCodigo(Integer.valueOf(request.getParameter("codigo")));
            entrada.setFecha(startDate);            
            entrada.setProducto(FProducto.producto_buscarporid(Integer.parseInt(request.getParameter("product"))));             
            entrada.setCantidad(Integer.parseInt(request.getParameter("cantidad_entrada")));             
            entrada.setProveedor(FProveedor.proveedor_buscarporid(Integer.parseInt(request.getParameter("proveedo"))));
            
            entrada.setDetalle(request.getParameter("detalle_entrada"));            
          
           boolean result= FEntrada.entrada_editar(entrada);
            
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
