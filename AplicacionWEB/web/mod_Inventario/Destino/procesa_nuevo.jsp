<%-- 
    Document   : procesa_nuevo
    Created on : 16-ene-2019, 17:15:35
    Author     : MI PC
--%>



<%@page import="rnegocio.funciones.FDestino"%>
<%@page import="rnegocio.entidades.Destino"%>
<% 
  String prueba=request.getParameter("descripcion_destino");
  
 
 out.println(prueba);
  
  
%>

<%
    try {
            Destino destino=new Destino();
            destino.setDescripcion(request.getParameter("descripcion_destino"));
           boolean result= FDestino.destino_insertar(destino);
             if (result)
                out.println("<script> alert('Se ha guardado correctamente...'); location.replace('listar.jsp');</script>");
            else 
                out.println("<script> alert('No se ha guardado correctamente...'); location.replace('listar.jsp');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
