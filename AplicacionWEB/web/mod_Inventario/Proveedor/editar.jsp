
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
<%
   Proveedor proveedor= new Proveedor();
%>
<%
    String rol = (String) request.getSession().getAttribute("rol");     
        if(rol.equals("Empleado")){
        out.println("<script>  location.replace('listar.jsp?alerta=acceso_denegado');</script>");
        }
    try {        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         proveedor=FProveedor.proveedor_buscarporid(codigo);
        } catch (Exception e) {
        }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Proveedor</title>     
    </head>    
    <body>                       
        <form method="POST" action="procesa_editar.jsp">
            <input type="hidden" id="codigo" name="codigo" value="<%=proveedor.getCodigo()%>">
            <label>Nombre:</label>
            <input type="text" required class="form-control" placeholder="Nombre Proveedor" id="nombre_proveedor" value="<%=proveedor.getNombre()%>" name="nombre_proveedor"/>
            <label>Direccion:</label>
            <input type="text" required class="form-control" placeholder="Direccion Proveedor" id="direccion_proveedor" value="<%=proveedor.getDireccion()%>" name="direccion_proveedor"/>
            <label>Teléfono:</label>
            <input type="text" required class="form-control" placeholder="Telefono Proveedor" id="telefono_proveedor" value="<%=proveedor.getTelefono()%>" name="telefono_proveedor"/>
            <label>Ruc:</label>            
            <input type="text" required class="form-control" placeholder="Ruc Proveedor" id="ruc_proveedor" value="<%=proveedor.getRuc()%>" name="ruc_proveedor"/>
            <label>Email:</label>
            <input type="text" required class="form-control" placeholder="Email Proveedor" id="email_proveedor" value="<%=proveedor.getEmail()%>" name="email_proveedor"/>
            
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>


    </body>

</html>
