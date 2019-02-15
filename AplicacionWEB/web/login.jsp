<%@page import="rnegocio.funciones.*"%>
<%@page import="rnegocio.entidades.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
 List<Rol> listarol=FRol.rol_buscartodos();
%>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Bootstrap Core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <title>Iniciar Sesión</title>

    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-1">
                    <form role="form" action="procesalogin.jsp">
                        <fieldset>
                            <div id="foto">
                                <img src="Images/logo2.jpg" style="max-width:100%;width:auto;height:auto; padding: 1px 0px;">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Usuario" id="nombre" name="nombre" autofocus>
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Password" id="clave" name="clave" type="password" value="">
                            </div>
                            <div class="form-group">
                                <select  class="form-control" name="rol">
                                    <%
                                        for(Rol rol: listarol){%>
                                    <option value="<%=rol.getCodigo()%>"> <%=rol.getNombre()%></option>
                                    <%
                                       }
                                    %>
                                </select>
                            </div>
                            <!-- Change this to a button or input when using this as a form -->
                            <center>
                                <button id="btn_guardar" name="btn_guardar" type="submit" class="btn btn-primary">Iniciar Sesion</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                            </center>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>

        <!-- jQuery -->
        <script src="vendor/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

        <!-- Metis Menu Plugin JavaScript -->
        <script src="vendor/metisMenu/metisMenu.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="dist/js/sb-admin-2.js"></script>

    </body>

</html>

