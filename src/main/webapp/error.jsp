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

    <title>MiniERP - Error</title>

    <!-- Bootstrap Core CSS -->
    <link rel="stylesheet" href="<c:url value = "/css/bootstrap.min.css" />"/>

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<c:url value = "/css/error.css" />"/>

    <!-- Custom Fonts -->
    <link href="<c:url value = "/css/font-awesome.css" />" rel="stylesheet" type="text/css">
    
</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="error-template">
                    <img src="<c:url value = "/img/logo.png" />" width=25% alt="MiniERP">
                    <h1>Oops!</h1>
                    <h2>404 Not Found</h2>
                    <div class="error-details">
                        Ha ocurrido un error, la página solicitada no fue encontrada
                    </div>
                    <div class="error-actions">
                        <a href="<c:url value = "/secured/" />" class="btn btn-primary btn-lg">
                            <i class="fa fa-home" aria-hidden="true"></i> Regresar
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value = "/js/bootstrap.min.js" />"></script>

</body>

</html>



