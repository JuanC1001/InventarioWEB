<%-- 
    Document   : procesa_editar
    Created on : 16-ene-2019, 17:49:01
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.*,rnegocio.entidades.*"%>
<!DOCTYPE html>
<%
    try {
            Categoria categoria=new Categoria();
            Producto producto=new Producto();
            
            producto.setCodigo(Integer.valueOf(request.getParameter("codigo")));
            
            int codigo_categoria= Integer.parseInt(request.getParameter("categoria"));
            //out.print("<script>alert("+codigo_categoria+");</script>");
            producto.setNombre(request.getParameter("nombre_producto"));
            producto.setStock(Double.parseDouble(request.getParameter("stock_producto")));
            producto.setPrecio_venta(Double.parseDouble(request.getParameter("precio_venta_producto")));
            producto.setPrecio_compra(Double.parseDouble(request.getParameter("precio_compra_producto")));
            producto.setCategoria(FCategoria.categoria_buscarporid(codigo_categoria));
            
           boolean result= FProducto.producto_editar(producto);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
