<%-- 
    Document   : nuevo
    Created on : 25-ene-2019, 17:06:06
    Author     : Usuario
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
            <input type="text" class="form-control" placeholder="Nombre" required id="nombre_rol" name="nombre_rol"/>
          
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
    </body>
</html>
