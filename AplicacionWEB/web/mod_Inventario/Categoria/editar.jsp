
<%@page import="rnegocio.entidades.*"%>
<%@page import="rnegocio.funciones.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>

        
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
   Categoria categoria= new Categoria();
%>
<%
     String rol = (String) request.getSession().getAttribute("rol");     
        if(rol.equals("Empleado")){
        out.println("<script>  location.replace('listar.jsp?alerta=acceso_denegado');</script>");
        } 
    try {        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         categoria=FCategoria.categoria_buscarporid(codigo);                
        } catch (Exception e) {
        }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Categoria</title>
     
    </head>
    
    <body>
          <form method="POST" action="procesa_editar.jsp">
              <input type="hidden" id="codigo" name="codigo" value="<%=categoria.getCodigo()%>">
              
              <input type="text" required class="form-control" placeholder="Nombre Categoria" id="nombre_producto" value="<%=categoria.getNombre()%>" name="nombre_categoria"/>          
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
        
    </body>
    
</html>
