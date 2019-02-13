<%-- 
    Document   : nuevo
    Created on : 16-ene-2019, 17:28:58
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Usuario</title>

    </head>
    <body>


        <form method="POST"  action="procesa_nuevo.jsp">
            <label>Nombres:</label>
            <input type="text" class="form-control" placeholder="Ejm: Juan Carlos" required id="nombre_usuario" name="nombre_usuario"/>
            <label>Apellidos:</label>
            <input type="text" class="form-control" placeholder="Ejm: Malca Yumi" required id="apellido_usuario" name="apellido_usuario"/>
            <label>Cèdula:</label>
            <input type="text" class="form-control" placeholder="Ejm: 0604632893" required id="cedula_usuario" name="cedula_usuario"/>
            <label>Email:</label>
            <input type="email" class="form-control" placeholder="Ejm: juancarlosjk2@hotmail.com" required id="email_proveedor" name="email_usuario"/>
            <label>Contraseña:</label>
            <input type="text" class="form-control" placeholder="usuario clave" required id="clave_usuario" name="clave_usuario"/>
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>
