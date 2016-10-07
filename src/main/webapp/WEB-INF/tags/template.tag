<%@ attribute name="titulo" fragment="true" %>
<%@ attribute name="contenido" fragment="true" %>
<!DOCTYPE html>
 
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css" >
        <link href="${pageContext.request.contextPath}/css/sb-admin-2.css" rel="stylesheet" type="text/css" >
        <link href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" >
        <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css" >
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.js"></script>
        <jsp:invoke fragment="titulo"/>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                        <!-- <img src="${pageContext.request.contextPath}/img/logo.png"> -->
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">      	
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="${pageContext.request.contextPath}/">
                            <i class="fa fa-home" aria-hidden="true"></i> Inicio
                        </a></li>
                        <li><a href="${pageContext.request.contextPath}/perfil">
                            <i class="fa fa-user" aria-hidden="true"></i> Perfil
                        </a></li>
                        <li><a href="${pageContext.request.contextPath}/logout">
                            <i class="fa fa-sign-out" aria-hidden="true"></i> Salir
                        </a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div id="wrapper">
            <div id="main">
                <jsp:invoke fragment="contenido"/>
            </div>
        </div>
        <footer class="footer">
            <div class="container">
                <p class="text-muted">MiniERP Web - Tecnologías de la Información</p>
                <p class="text-muted">UNSA - Escuela Profesional Ingeniería de Sistemas</p>
            </div>
        </footer>
    </body>
</html>