<%-- 
    Document   : editar
    Created on : 28/01/2019, 12:11:56
    Author     : Brayan Macas
--%>

<%@page import="rnegocio.entidades.*"%>
<%@page import="rnegocio.funciones.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 List<Rol> listarol=FRol.rol_buscartodos();
%>
<%
 List<Usuario> listausuario=FUsuario.usuario_buscartodos();
%>

<%
   UsuarioRol usuarioRol= new UsuarioRol();
%>
<%
    try {
        
         int codigo= Integer.parseInt(request.getParameter("codigo"));
      //  out.print("<script>alert("+codigo+");</script>");
         usuarioRol=FUsuarioRol.usuariorol_buscarporid(codigo);                      
        } catch (Exception e) {
        }      
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario-Rol</title>

    </head>

    <body>



        <form method="POST" action="procesa_editar.jsp">
            <input type="hidden" id="codigo" name="codigo" value="<%=usuarioRol.getCodigo()%>">
            <select id="rol" name="rol" class="form-control">
                
                <option value="<%=usuarioRol.getRol().getCodigo()%>"><%=usuarioRol.getRol().getNombre%></option>
                <%
                    for(Rol rol: listarol){%>
                <option value="<%=rol.getCodigo()%>"><%=rol.getNombre()%></option>
                <%
                    }
                %>
            </select>
            <select class="form-control" name="categoria" >
                 <option value="<%=producto.getCategoria().getCodigo()%>"> <%=producto.getCategoria().getNombre()%></option>
                <%
                    for(Categoria cat: lista){%>
                <option value="<%=cat.getCodigo()%>"> <%=cat.getNombre()%></option>
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
            <input type="text" required class="form-control" placeholder="Estado UsuarioRol" id="estado_usuarioRol" value="<%=usuarioRol.getEstado()%>" name="estado_usuarioRol"/>
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>


    </body>

</html>
