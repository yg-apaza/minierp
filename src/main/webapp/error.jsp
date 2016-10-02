<!DOCTYPE html>
<html lang="es">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="MiniERP web">
    <meta name="author" content="episunsa">

    <title>MiniERP - Error</title>

    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/error.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet" type="text/css" >
    
</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="error-template">
                    <img src="${pageContext.request.contextPath}/img/logo.png" width=25% alt="MiniERP">
                    <h1>Oops!</h1>
                    <h2>Error</h2>
                    <div class="error-details">
                        Ha ocurrido un error. Contacte con el administrador.
                    </div>
                    <div class="error-actions">
                        <a href="${pageContext.request.contextPath}/" class="btn btn-primary btn-lg">
                            <i class="fa fa-home" aria-hidden="true"></i> Regresar
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
</body>

</html>



