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
            <input type="text" class="form-control" placeholder="usuario nombre" required id="nombre_usuario" name="nombre_usuario"/>
            <input type="text" class="form-control" placeholder="usuario apellido" required id="apellido_usuario" name="apellido_usuario"/>
            <input type="text" class="form-control" placeholder="usuario cedula" required id="cedula_usuario" name="cedula_usuario"/>
            <input type="text" class="form-control" placeholder="usuario email" required id="email_usuario" name="email_usuario"/>
            <input type="text" class="form-control" placeholder="usuario clave" required id="clave_usuario" name="clave_usuario"/>
            <input type="text" class="form-control" placeholder="confirmar clave" required id="clave1_usuario" name="clave1_usuario"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>
