<%-- 
    Document   : Listar.jsp
    Created on : 08-ene-2019, 17:01:54
    Author     : MI PC
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="rnegocio.entidades.Producto"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%
 List<Producto> lista=Producto.producto_buscartodos();
 Iterator<Producto> itProducto=lista.iterator();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>PRODUCTO </h1>
          <table border="1">
                <thead>
               
                <th>Nombre Producto</th>
                </thead>
                <tbody>
               <%while(itProducto.hasNext()){
                  Producto producto=itProducto.next();%>
                <tr>
                   <td><%= producto.getNombreproducto()%></td>
                 
                </tr>
               <%}%>                
                </tbody>           
            </table>
    </body>
</html>
