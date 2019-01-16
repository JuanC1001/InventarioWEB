<%-- 
    Document   : editar
    Created on : 16-ene-2019, 17:14:15
    Author     : MI PC
--%>


<%@page import="rnegocio.entidades.Destino"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    Destino destino = new Destino();
%>
<%
    int codigo = Integer.parseInt(request.getParameter("codigo"));
    destino = Destino.destino_buscarporid(codigo);

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form method="POST" action="procesa_editar.jsp">
                    <h1> Cliente</h1>    

            <input type="hidden" id="codigo" name="codigo" value="<%=destino.getCodigo()%>">
            <input type="text" id="descripcion_destino" name="descripcion_destino" value="<%=destino.getDescripcion()%>"/>
           
            <br/>
            <button type="submit" >Guardar</button>
        </form>         
    </body>
</html>