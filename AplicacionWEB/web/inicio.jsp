
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Inicio</title>
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

                <ul class="nav navbar-top-links navbar-right" style="float:right">
                        <a class="navbar-brand" href="inicio.html">
                            <img src="Images/logo1.jpg" style="max-width:25%;width:auto;height:auto;">
                        </a>
                    <!-- /.dropdown -->
                    <li class="dropdown" style="float:right">

                        <div class="btniniciar">
                            <button type="button" onclick="return modalnuevo();" class="btn btn-primary" data-toggle="modal" data-target="#ModalNuevo"> Iniciar Sesion</button>  
                        </div>                        <!-- /.dropdown-user -->
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
        <div class="modal fade" id="ModalNuevo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">

            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">


                    </div>
                </div>
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
        <script>
                                        function modalnuevo(codigo) {
                                            $('.modal-body').load('login.jsp', function () {
                                            });
                                        }
        </script>
    </body>
</html>
