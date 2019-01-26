<%-- 
    Document   : procesa_nuevo
    Created on : 25-ene-2019, 18:33:47
    Author     : MI PC
--%>

<%@page import="rnegocio.funciones.FRolPaginaRol"%>
<%@page import="rnegocio.entidades.RolPagina"%>
<% 
    String prueba=request.getParameter("pagina_RolPagina");
    
  
 
 out.println(prueba);
  
  
%>

<%
    try {
            RolPagina rolpagina=new RolPagina();
               rolpagina.setPagina(request.getParameter("pagina_rolpagina")); 
               rolpagina.setRol.(request.getParameter("rol_rolpagina"));
           boolean result= FRolPaginaRol.rolpagina_insertar(rolpagina);
             if (result)
                out.println("<script> alert('Se ha guardado correctamente...'); location.replace('listar.jsp');</script>");
            else 
                out.println("<script> alert('No se ha guardado correctamente...'); location.replace('listar.jsp');</script>");

        } catch (Exception e) {
            out.print(e.getMessage());
        }

%>
