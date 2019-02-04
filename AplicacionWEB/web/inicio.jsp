<%-- 
    Document   : listar
    Created on : 16-ene-2019, 17:07:24
    Author     : Usuario
--%>

<%@page import="rnegocio.funciones.*"%>
<%@page import="rnegocio.entidades.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <link href="mod_Inventario/Usuario/listar.jsp" rel="stylesheet">
        <!-- Bootstrap Core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="dist/css/sb-admin-2.css" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="vendor/morrisjs/morris.css" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <title>Inicio</title>
    </head>
    <body>

        <div id="page-wrapper">
            <!--Sección alerta-->
            <%
                String alerta="";
                try {
                          alerta=request.getParameter("alerta").toString();
                    } catch (Exception e) {
                    }
           
        if (alerta.equals("si")){%>
            <div class="alert alert-success" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>Éxito!</strong> Bienvenido
            </div>
            <%} if(alerta.equals("no")){%>
            <div class="alert alert-danger" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>Falló!</strong> Datos erroneos, vuelva a ingresar los datos
            </div>
            <% }%>
            <!--Fin Sección alerta-->
            <div id="top">
                <nav class="navbar navbar-default navbar-static-top" role="navigation">
                    <div id="header" class="col-lg-9">
                        <div id="logo">
                            <a class="navbar-brand" href="../../pages/index.html">
                                <img src="../../Images/logo1.jpg" style="max-width:25%;width:auto;height:auto;">
                            </a>
                        </div>
                    </div>
                    <ul class="nav navbar-top-links navbar-right" style="float:right">
                        <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-bell fa-fw"></i> Notificaciones<i class="fa fa-caret-down"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-alerts">
                                <li>
                                    <a href="#">
                                        <div>
                                            <i class="fa fa-comment fa-fw"></i> New Comment
                                            <span class="pull-right text-muted small">4 minutes ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a href="#">
                                        <div>
                                            <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                            <span class="pull-right text-muted small">4 minutes ago</span>
                                        </div>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a class="text-center" href="#">
                                        <strong>See All Alerts</strong>
                                        <i class="fa fa-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                            <!-- /.dropdown-alerts -->
                        </li>
                        <!-- /.dropdown -->
                        <li class="dropdown" style="float:right">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                <i class="fa fa-user fa-fw"></i> Sesion <i class="fa fa-caret-down"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <div class="btniniciar">
                                    <button type="button" onclick="return modalnuevo();" class="btn btn-primary" data-toggle="modal" data-target="#ModalNuevo"> Nuevo</button>  
                                </div>
                            </ul>
                            <!-- /.dropdown-user -->
                        </li>
                        <!-- /.dropdown -->
                    </ul>
                    <!-- /.navbar-top-links -->
                </nav>
            </div>
            <div id="inicio">
                <div id="fondo1">
                    <img src="Images/fondo.jpg" style="max-width:100%;width:auto;height:auto;">
                </div>
            </div>
            <div class="modal fade" id="ModalNuevo" class="" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <div class="modal-body">
                        </div>
                    </div>
                </div>
            </div>       
            <script src="vendor/jquery/jquery.min.js"></script>
            <!-- Bootstrap Core JavaScript -->
            <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
            <!-- Metis Menu Plugin JavaScript -->
            <script src="vendor/metisMenu/metisMenu.min.js"></script>
            <!-- Morris Charts JavaScript -->
            <script src="vendor/raphael/raphael.min.js"></script>
            <script src="vendor/morrisjs/morris.min.js"></script>
            <script src="data/morris-data.js"></script>
            <!-- Custom Theme JavaScript -->
            <script src="dist/js/sb-admin-2.js"></script>

            <script>
                        function modalnuevo(codigo) {
                            $('.modal-body').load('login.jsp', function () {

                            });
                        }
<!--Sección alerta-->
                        window.setTimeout(function () {
                            $(".alert").fadeTo(500, 0).slideUp(500, function () {
                                $(this).remove();
                            });
                        }, 4000);
<!--fin Sección alerta-->
            </script>
        </div>    
    </body>
</html>
