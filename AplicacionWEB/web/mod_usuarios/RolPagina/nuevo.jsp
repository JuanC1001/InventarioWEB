<%-- 
    Document   : nuevo
    Created on : 25-ene-2019, 18:13:15
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
            <input type="text" class="form-control" placeholder="Pagina RolPagina" required id="pagina_rolpagina" name="Pagina_rolpagina"/>
            <input type="text" class="form-control" placeholder="Rol RolPagina" required id="rol_rolpagina" name="rol_rolpagina"/>
          
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
    </body>
</html>
