<%-- 
    Document   : nuevo
    Created on : 25-ene-2019, 16:50:30
    Author     : MI PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        
        
          <form method="POST"  action="procesa_nuevo.jsp">
           <input type="text" class="form-control" placeholder="Nombre Usuario" required id="nombre_usuario" name="nombre_usuario"/>
           <input type="text" class="form-control" placeholder="Apellido Usuario" required id="apellido_usuario" name="apellido_usuario"/>
           <input type="text" class="form-control" placeholder="Cedula Usuario" required id="cedula_usuario" name="cedula_usuario"/>
           <input type="text" class="form-control" placeholder="Email Usuario" required id="email_usuario" name="email_usuario"/>
           <input type="text" class="form-control" placeholder="Clave Usuario" required id="clave_usuario" name="clave_usuario"/>
           <input type="text" class="form-control" placeholder="Confirmar Usuario" required id="confirmar_usuario" name="confirmar_usuario"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
    </body>
</html>
