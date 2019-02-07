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

        //String claveencritada=StringEncrypter.StringEncrypter(clave1);
        //out.print("<script>alert("+claveencritada+");</script>");
        
        usuario= FUsuario.usuario_login(nombre1, clave1);
        
        if(usuario!=null){
            session.setAttribute("usuario", usuario.getCodigo());
            session.setAttribute("clave", usuario.getClave());
            response.sendRedirect("inicio.html?alerta=si");
            //out.println("<script>  location.replace('index.html');</script>");
            
        }else{
            out.println("<script>  location.replace('inicio.html');</script>");
            if(request.getParameter("cerrar")!=null){
            session.invalidate();            
            }
        }
        } catch (Exception e) {
        }
   
   
%>
