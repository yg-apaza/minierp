<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="MiniERP web">
    <meta name="author" content="episunsa">

    <title>MiniERP - Iniciar sesión</title>

    <!-- Bootstrap Core CSS -->
    <link  rel="stylesheet" href="<c:url value = "/css/bootstrap.min.css" />"/>

    <!-- Custom CSS -->
    <link  rel="stylesheet" href="<c:url value = "/css/sb-admin-2.css" />"/>

    <!-- Custom Fonts -->
    <link href="<c:url value = "/css/font-awesome.css" />" rel="stylesheet" type="text/css">
    
</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <img src="<c:url value = "/img/logo.png" />" class="img-responsive" alt="MiniERP"/>
                    </div>
                    <div class="panel-body">
                        <form role="form" method="post" action="/login">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Usuario" name="usuario" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Contraseña" name="password" type="password" value="">
                                </div>                                
                                <a href="<c:url value = "/app/" />" class="btn btn-lg btn-success btn-block">Ingresar</a>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="<c:url value = "/js/jquery-1.11.1.min.js" />"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value = "/js/bootstrap.min.js" />"></script>

</body>

</html>
