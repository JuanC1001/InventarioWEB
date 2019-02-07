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
   RolPagina rolpagina= new RolPagina();
%>
<%
    try {       
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         rolpagina=FPagin.rolpagina_buscarporid(codigo);
        } catch (Exception e) {
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     
    </head>
    
    <body>
       
        
        
          <form method="POST" action="procesa_editar.jsp">
              <input type="hidden" id="codigo" name="codigo" value="<%=rolpagina.getCodigo()%>">
              <input type="text" required class="form-control" placeholder="Codigo RolPagina" id="codigo_rolpagina" value="<%=rolpagina.getUrl()%>" name="url_rolpagina"/>
              <input type="text" required class="form-control" placeholder=" Pagina RolPagina" id="pagina_rolpagina" value="<%=rolpagina.getPagina()%>" name="pagina_rolpagina"/>
              <input type="text" required class="form-control" placeholder="Rol RolPagina" id="rol_rolpagina" value="<%=rolpagina.getDescripcion()%>" name="rol_rolpagina"/>
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>

