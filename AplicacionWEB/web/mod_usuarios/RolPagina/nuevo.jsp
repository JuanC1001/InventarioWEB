<%-- 
    Document   : nuevo
    Created on : 25-ene-2019, 18:13:15
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
 List<Pagina> listapagina=FPagina.pagina_buscartodos();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Rol_Página</title>
        
    </head>
    <body>
        
        
          <form method="POST"  action="procesa_nuevo.jsp">
            <select id="rol1" name="rol1" class="form-control">
                <%
                    for(Rol rol: listarol){%>
                <option value="<%=rol.getCodigo()%>"><%=rol.getNombre()%></option>
                <%
                    }
                %>
            </select>  

            <select id="pagina1" name="pagina1" class="form-control">
                <%
                    for(Pagina pagina: listapagina){%>
                <option value="<%=pagina.getCodigo()%>"><%=pagina.getUrl()%></option>
                <%
                    }
                %>
            </select>
              
            <div class="modal-footer">
                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary" >Guardar</button>
                 <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
            </div>
        </form>
          
    </body>
</html>
