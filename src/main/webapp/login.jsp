<!DOCTYPE html>
<html lang="es">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="MiniERP web">
        <meta name="author" content="episunsa">
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" />

        <title>MiniERP - Iniciar sesión</title>

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sb-admin-2.css" type="text/css" >
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css" type="text/css" >

    </head>

    <body>

        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="login-panel panel panel-default">
                        <div class="panel-heading">
                            <img id="logoEmp" src="${pageContext.request.contextPath}/img/${logoempresa}" class="img-responsive" alt="MiniERP"/>
                        </div>
                        <div class="panel-body">
                            <form role="form" method="post" action="${pageContext.request.contextPath}/">
                                <fieldset>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Usuario" name="usuario" autofocus>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" placeholder="Contraseña" name="password" type="password" value="">
                                    </div>                                
                                    <button type="submit" class="btn btn-lg btn-success btn-block">
                                        <i class="fa fa-sign-in"></i> Ingresar
                                    </button>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

    </body>
</html>
