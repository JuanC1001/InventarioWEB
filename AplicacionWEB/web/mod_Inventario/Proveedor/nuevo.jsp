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
            <label>Nombre:</label>
            <input type="text" class="form-control" placeholder="Ejm: Dislac" required id="nombre_proveedor" name="nombre_proveedor"/>
            <label>Direccion:</label>
            <input type="text" class="form-control" placeholder="Avenida Pedro Vicente Maldonado y ...." required id="direccion_proveedor" name="direccion_proveedor"/>
            <label>Teléfono:</label>
            <input type="text" pattern="[0]{1}[9]{1}[0-9]{8}" class="form-control" placeholder="0979123008" required id="telefono_proveedor" name="telefono_proveedor"/>
            <label>Ruc:</label>
            <input type="text" class="form-control" placeholder="10006034632893" required id="ruc_proveedor" name="ruc_proveedor"/>
            <label>Email:</label>
            <input type="email" class="form-control" placeholder="juancarlosjk2@hotmail.com" required id="email_proveedor" name="email_proveedor"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

