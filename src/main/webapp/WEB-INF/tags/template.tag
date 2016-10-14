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
        <script src="${pageContext.request.contextPath}/js/Chart.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery-barcode.js"></script>
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" />
        
        <jsp:invoke fragment="titulo"/>
    </head>
    <body>
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                        <img src="${pageContext.request.contextPath}/img/logo.png">
                    </a>
                </div>
                    
                <ul class="nav navbar-top-links navbar-right">
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

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                                </div>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/"><i class="fa fa-home fa-fw"></i> Inicio</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-cart-arrow-down fa-fw"></i> Venta y Preventa<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/ventas/factura">Facturas</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/ventas/preventa">Crear Preventa</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/clientes">Clientes</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/ventas/pagos">Pagos y Cuotas</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-truck fa-fw"></i> Logística y Compras<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">1</a>
                                    </li>
                                    <li>
                                        <a href="#">2</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-book fa-fw"></i> Contabilidad<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">1</a>
                                    </li>
                                    <li>
                                        <a href="#">2</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-gears fa-fw"></i> Configuraciones<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">1</a>
                                    </li>
                                    <li>
                                        <a href="#">2</a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>  
               
            </nav>
            
            <div id="page-wrapper">
                
                <jsp:invoke fragment="contenido"/>
                
            </div>
        </div>
    </body>
</html>
