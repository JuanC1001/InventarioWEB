<%-- 
    Document   : nuevo
    Created on : 26-ene-2019, 20:51:57
    Author     : MI PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="rnegocio.funciones.*"%>
<%@page import="rnegocio.entidades.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>


<%
 List<Rol> listarol=FRol.rol_buscartodos();
%>
<%
 List<Usuario> listausuario=FUsuario.usuario_buscartodos();
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Usuario_Rol</title>      
    </head>
    <body>
        <form method="POST"  action="procesa_nuevo.jsp">
            
            <select id="rol" name="rol" class="form-control">
                <%
                    for(Rol rol: listarol){%>
                <option value="<%=rol.getCodigo()%>"><%=rol.getNombre()%></option>
                <%
                    }
                %>
            </select>  

            <select id="usuario" name="usuario" class="form-control">
                <%
                    for(Usuario usuario: listausuario){%>
                <option value="<%=usuario.getCodigo()%>"><%=usuario.getNombre()%></option>
                <%
                    }
                %>
            </select>  

            <input type="text" class="form-control" placeholder="Estado" required id="estado_usuarioRol" name="estado_usuarioRol"/>

            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>

    </body>
</html>
