<%-- 
    Document   : procesa_nuevo
    Created on : 16-ene-2019, 17:30:50
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*,rnegocio.funciones.*,rnegocio.entidades.*"%>

<!DOCTYPE html>
<%
    try {
            Entrada entrada=new Entrada();
            Categoria categ=new Categoria();
            int codigo_categoria= Integer.parseInt(request.getParameter("producto"));
                        int codigo_categoria= Integer.parseInt(request.getParameter("categoria"));
            //out.print("<script>alert("+codigo_categoria+");</script>");

            entrada.setNombre(request.getParameter("nombre_entrada"));
            entrada.setStock(Double.parseDouble(request.getParameter("stock_entrada")));
            entrada.setPrecio_venta(Double.parseDouble(request.getParameter("precio_venta_entrada")));
            entrada.setPrecio_compra(Double.parseDouble(request.getParameter("precio_compra_entrada")));
            entrada.setCategoria(FCategoria.categoria_buscarporid(codigo_categoria));
            
           boolean result= FEntrada.entrada_insertar(entrada);
             if (result)
                out.println("<script>  location.replace('listar.jsp?alerta=si');</script>");
            else 
                out.println("<script>  location.replace('listar.jsp?alerta=no');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
