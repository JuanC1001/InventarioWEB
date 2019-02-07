<%-- 
    Document   : procesa_nuevo
    Created on : 16-ene-2019, 17:30:50
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.*,rnegocio.entidades.*"%>
<%@page import = "java.text.SimpleDateFormat,java.text.ParseException, javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse"%>


<!DOCTYPE html>

<%
        String startDateStr = request.getParameter("fecha_entrada");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date startDate = sdf.parse(startDateStr);
        
      try {
            Entrada entrada=new Entrada();
            out.print("<script>alert("+startDate+");</script>");

            out.print("<script>alert("+startDate+");</script>");
            
            
            entrada.setFecha(startDate);          
            
            entrada.setProducto(FProducto.producto_buscarporid(Integer.parseInt(request.getParameter("product"))));             
            entrada.setCantidad(Integer.parseInt(request.getParameter("cantidad_entrada")));             
            entrada.setProveedor(FProveedor.proveedor_buscarporid(Integer.parseInt(request.getParameter("proveedo"))));
            
            entrada.setDetalle(request.getParameter("detalle_entrada"));            
            out.print("<script>alert("+ entrada.getProveedor()+");</script>");

           boolean result= FEntrada.entrada_insertar(entrada);
            out.print("<script>alert("+entrada.getDetalle()+");</script>");
            
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
            out.print("<script>alert("+e.getMessage()+");</script>");

        }

%>
