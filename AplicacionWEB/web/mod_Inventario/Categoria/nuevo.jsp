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
        <title>Nueva Categoria</title>        
    </head>
    <body>
        <form method="POST"  action="procesa_nuevo.jsp">
            <label>Nombre:</label>
            <input type="text" class="form-control" placeholder="Ejm: Bebidas" required id="nombre_categoria" name="nombre_categoria"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>

