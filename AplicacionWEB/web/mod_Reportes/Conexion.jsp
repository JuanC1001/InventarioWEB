<%-- 
    Document   : index
    Created on : 23/01/2016, 03:23:38 PM
    Author     : Ingeniero
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conexion</title>
    </head>
    <body>
        
        <%
        Connection con = null;
        try{
        Class.forName("org.postgresql.Driver");
        con = (Connection)DriverManager.getConnection("jdbc:postgresql://node77935-env-9304891.whelastic.net:5432/sistema_inventario","webadmin","ZCAoea11849");
        out.print("Conexion en Linea");
        }catch(Exception ex){
        out.print("Error: "+ex.getMessage());
        }
        %>
        
    </body>
</html>
