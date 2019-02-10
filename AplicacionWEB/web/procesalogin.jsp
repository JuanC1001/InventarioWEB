<%-- 
    Document   : editar
    Created on : 25-ene-2019, 17:02:22
    Author     : MI PC
--%>

<%@page import="rnegocio.entidades.*"%>
<%@page import="rnegocio.funciones.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
   Usuario usuario= new Usuario();
%>
<%
    
    try {        
        String nombre1= request.getParameter("nombre");
        String clave1= request.getParameter("clave");
        int rol1= Integer.parseInt(request.getParameter("rol"));
        usuario= FUsuario.usuario_login(nombre1, clave1, rol1);        
        if(usuario!=null){            
            session.setAttribute("nombre", usuario.getNombre());
            //response.sendRedirect("index.jsp");
              response.sendRedirect("index.jsp");
            //out.println("<script>  location.replace('/index.jsp');</script>");
        }else{
            out.println("<script>  location.replace('inicio.html');</script>");
            if(request.getParameter("cerrar")!=null){
            session.invalidate();            
            }
        }
        } catch (Exception e) {
        }
   
   
%>
