<%-- 
    Document   : nuevo
    Created on : 16-ene-2019, 17:28:58
    Author     : Usuario
--%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
     String rol = (String) request.getSession().getAttribute("rol");     
        if(rol.equals("Empleado")){
        out.println("<script>  location.replace('listar.jsp?alerta=acceso_denegado');</script>");
        } 
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Proveedor</title>

    </head>
    <body>


        <form method="POST"  action="procesa_nuevo.jsp">
            <input type="text" class="form-control" placeholder="Nombre Proveedor" required id="nombre_proveedor" name="nombre_proveedor"/>
            <input type="text" class="form-control" placeholder="Direccion Proveedor" required id="direccion_proveedor" name="direccion_proveedor"/>
            <input type="text" class="form-control" placeholder="Telefono Proveedor" required id="telefono_proveedor" name="telefono_proveedor"/>
            <input type="text" class="form-control" placeholder="Ruc Proveedor" required id="ruc_proveedor" name="ruc_proveedor"/>
            <input type="text" class="form-control" placeholder="Email Proveedor" required id="email_proveedor" name="email_proveedor"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

