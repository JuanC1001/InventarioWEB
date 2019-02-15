<%@page import="rnegocio.funciones.*"%>
<%@page import="rnegocio.entidades.*"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.ServletException"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%
     String user = (String) request.getSession().getAttribute("nombre");
     String rol = (String) request.getSession().getAttribute("rol");
     
        if(user==null){
            out.println("<script>  location.replace('inicio.jsp');</script>");
            //response.sendRedirect("inicio.html");
        }
%>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Principal</title>
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

    </head>

    <body>

        <div id="top">
            <nav class="navbar navbar-default navbar-static-top" role="navigation">

                <div id="header" class="col-lg-9">
                    <div id="logo">
                        <a class="navbar-brand" href="index.jsp">
                            <img src="Images/logo1.jpg" style="max-width:25%;width:auto;height:auto;">
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
                            <i class="fa fa-user fa-fw"></i> <%=user%> <i class="fa fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu dropdown-user" >

                            <li><a href="#"><i class="fa fa-user fa-fw"></i> <%=rol%> </a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Configuraciones</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="cerrarsesion.jsp"><i class="fa fa-sign-out fa-fw"></i> Salir</a>
                            </li>
                        </ul>
                        <!-- /.dropdown-user -->
                    </li>                                               
                    <!-- /.dropdown -->
                </ul>

                <!-- /.navbar-top-links -->
            </nav>
        </div>




        <div id="wrapper">
            <!-- Navigation -->
            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="index.jsp"><i class="fa fa-home fa-fw"></i> Principal</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-th-large fa-fw"></i>Modulo Entidades<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="mod_Inventario/Categoria/listar.jsp">Categoria</a>
                                </li>
                                <li>
                                    <a href="mod_Inventario/Producto/listar.jsp">Producto </a>
                                </li>
                                <li>
                                    <a href="mod_Inventario/Proveedor/listar.jsp">Proveedor</a>
                                </li>
                                <li>
                                    <a href="mod_Inventario/Destino/listar.jsp">Destino</a>
                                </li>                               
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-table fa-fw"></i>Modulo Inventario<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="mod_Inventario/Entrada/listar.jsp">Entradas</a>
                                </li>
                                <li>
                                    <a href="mod_Inventario/Salida/listar.jsp">Salidas</a>
                                </li>                              
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                        <li>
                            <a href="#"><i class="fa fa-wrench fa-fw"></i> Modulo Usuarios<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="mod_usuarios/Usuario/listar.jsp">Usuario</a>
                                </li>
                                <li>
                                    <a href="mod_usuarios/Rol/listar.jsp">Rol</a>
                                </li>
                                <li>
                                    <a href="mod_usuarios/Pagina/listar.jsp">Pagina</a>
                                </li>
                                <li>
                                    <a href="mod_usuarios/UsuarioRol/listar.jsp">Usuario Rol</a>
                                </li>
                                <li>
                                    <a href="mod_usuarios/RolPagina/listar.jsp"> Pagina Rol</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>

                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Reportes<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a target="black" href="mod_Reportes/listarEntradas.jsp">Reporte Entradas</a>
                                </li>
                                <li>
                                    <a href="mod_Reportes/listarSalidas.jsp" target="black">Reporte Salidas</a>
                                </li>
                                <li>
                                    <a href="mod_Reportes/listarProductos.jsp" target="black">Reporte Productos</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Servicios<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="webresources/producto">Listar Productos</a>
                                </li>
                                <li>
                                    <a href="webresources/salida">Listar Salidas</a>
                                </li>
                                <li>
                                    <a href="webresources/entrada">Listar Entradas</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </div>

        <div id="page-wrapper">
            <!--Sección alerta-->
            <%
                String alerta="";
                try {
                    alerta=request.getParameter("alerta").toString();
                    } catch (Exception e) {
                    }           
                if (alerta.equals("bienvenido")){%>
            <div class="alert alert-success" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>Bienvenido </strong> A iniciado sesión correctamente!
            </div>
            <%} if(alerta.equals("no")){%>
            <div class="alert alert-danger" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>Falló!</strong> La transacción fue fallida!
            </div>
            <% }
        if (alerta.equals("acceso_denegado")){%>
            <div class="alert alert-danger" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>Acceso denegado!</strong> Al parecer no tiene parmisos para acceder a este modulo!!
            </div>
            <%} if(alerta.equals("no")){%>
            <div class="alert alert-danger" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>Falló!</strong> La transacción fue fallida!
            </div>
            <% }
       
            %>
            <!--Fin Sección alerta-->
            <div class="row">
                <div class="col-lg-5">
                </div>
                <img src="Images/fondo.jpg" style="max-width:100%;width:auto;height:auto;">

            </div>
        </div>


        <!-- jQuery -->
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

    </body>

</html>
