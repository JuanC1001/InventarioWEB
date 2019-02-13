<%-- 
    Document   : editar
    Created on : 25-ene-2019, 18:15:20
    Author     : MI PC
--%>

<%@page import="rnegocio.entidades.*"%>
<%@page import="rnegocio.funciones.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
   Usuario usuario= new Usuario();
%>
<%
    try {       
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         usuario=FUsuario.usuario_buscarporid(codigo);
        } catch (Exception e) {
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edita Usuario</title>
    </head>
    <body>
        <form method="POST"  action="procesa_editar.jsp">
            <input type="hidden" id="codigo" name="codigo" value="<%=usuario.getCodigo()%>">
            <label>Nombres:</label>
            <input value="<%=usuario.getNombre()%>" type="text" class="form-control" placeholder="usuario nombre" required id="nombre_usuario" name="nombre_usuario"/>
            <label>Apellidos:</label>
            <input value="<%=usuario.getApellido()%>" type="text" class="form-control" placeholder="usuario apellido" required id="apellido_usuario" name="apellido_usuario"/>
            <label>Cèdula:</label>
            <input value="<%=usuario.getCedula()%>" type="text" class="form-control" placeholder="usuario cedula" required id="cedula_usuario" name="cedula_usuario"/>
            <label>Email:</label>
            <input value="<%=usuario.getEmail()%>" type="email" class="form-control" placeholder="Ejm: juancarlosjk2@hotmail.com" required id="email_usuario" name="email_usuario"/>
            <label>Contraseña:</label>
            <input value="<%=usuario.getClave()%>" type="text" class="form-control" placeholder="usuario clave" required id="clave_usuario" name="clave_usuario"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>
