<%-- 
    Document   : editar
    Created on : 16-ene-2019, 17:29:10
    Author     : Usuario
--%>
<%@page import="rnegocio.entidades.*"%>
<%@page import="rnegocio.funciones.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
   Entrada entrada= new Entrada();
%>
<%
    try {        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         entrada=FEntrada.entrada_buscarporid(codigo);
        } catch (Exception e) {
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Entrada</title>     
    </head>    
    <body>                       
          <form method="POST" action="procesa_editar.jsp">
              <input type="hidden" id="codigo" name="codigo" value="<%=entrada.getCodigo()%>">
              <input type="text" required class="form-control" placeholder="Fecha" id="fecha_entrada" value="<%=entrada.getFecha()%>" name="fecha_entrada"/>

              <input type="text" required class="form-control" placeholder="Cantidad" id="cantidad_entrada" value="<%=entrada.getCantidad()%>" name="cantidad_entrada"/>

              <input type="text" required class="form-control" placeholder="Detalle" id="detalle_entrada" value="<%=entrada.getDetalle()%>" name="detalle_entrada"/>          
              <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>
