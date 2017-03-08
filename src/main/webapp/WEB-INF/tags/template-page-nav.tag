<%@tag description='User Page template' pageEncoding='UTF-8'%>
<%@taglib prefix='t' tagdir='/WEB-INF/tags'%>
<%@taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core'%>
<%@attribute name='myscripts' fragment='true' %>
<%@attribute name='mybody' fragment='true' %>


<t:template-page>
    <jsp:attribute name="head">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>MiniERP</title>
    </jsp:attribute>

    <jsp:attribute name="favicon">
        <link href="${pageContext.request.contextPath}/favicon/apple-touch-icon.png" rel="apple-touch-icon" sizes="180x180">
        <link href="${pageContext.request.contextPath}/favicon/favicon-32x32.png" rel="icon" type="image/png" sizes="32x32">
        <link href="${pageContext.request.contextPath}/favicon/favicon-16x16.png" rel="icon" type="image/png" sizes="16x16">
        <link href="${pageContext.request.contextPath}/favicon/manifest.json" rel="manifest">
        <link href="${pageContext.request.contextPath}/favicon/safari-pinned-tab.svg" rel="mask-icon" color="#768094">
        <meta name="apple-mobile-web-app-title" content="MiniERP">
        <meta name="application-name" content="MiniERP">
        <meta name="theme-color" content="#ffffff">
    </jsp:attribute>

    <jsp:attribute name="cssresources">
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/simple-sidebar.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/jquery-ui.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/modal.css" rel="stylesheet" type="text/css">
    </jsp:attribute>

    <jsp:attribute name="jsresources">
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/moment.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/es.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.js"></script>
        <script src="${pageContext.request.contextPath}/js/Chart.js"></script>
        <script src="${pageContext.request.contextPath}/js/Chart.bundle.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery-barcode.js"></script>
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/select2.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap-filestyle.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sidebar_menu.js"></script>

        <script>
            function stopRKey(evt) {
                var evt = (evt) ? evt : ((event) ? event : null);
                var node = (evt.target) ? evt.target : ((evt.srcElement) ? evt.srcElement : null);
                if ((evt.keyCode === 13) && (node.type === "text")) {
                    return false;
                }
            };
            document.onkeypress = stopRKey;
        </script>

        <jsp:invoke fragment="myscripts"/>

    </jsp:attribute>

    <jsp:attribute name="navegation">  
        <nav class="navbar navbar-default no-margin">
            <div class="navbar-header fixed-brand">
                <button type="button" 
                        class="navbar-toggle collapsed" 
                        data-toggle="collapse"  
                        id="menu-toggle">
                    <span class="glyphicon glyphicon-tags" aria-hidden="true"></span>
                </button>
                <img src="${pageContext.request.contextPath}/img/${empImg}" id="logoEmp" class="img-rounded" alt="Cinque Terre" width="225" height="50">       
            </div><!-- navbar-header-->

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active" >
                        <button class="navbar-toggle collapse in" 
                                data-toggle="collapse" 
                                id="menu-toggle-2"> 
                            <span class="glyphicon glyphicon-tags" 
                                  aria-hidden="true">
                            </span>
                        </button>
                    </li>
                </ul>
                <div class="navbar-collapse collapse menu2">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="${pageContext.request.contextPath}/">
                                <i class="fa fa-home" aria-hidden="true"></i> Panel de Inicio
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/secured/general/perfil">
                                <i class="fa fa-user" aria-hidden="true"></i> Mi Perfil
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/logout">
                                <i class="fa fa-sign-out" aria-hidden="true"></i> Terminar Sesion
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </jsp:attribute> 

    <jsp:attribute name="wrapper">
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav nav-pills nav-stacked" id="menu">
                <!-- Menu Administrador -->
                <cc:if test="${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==1}">
                    <li class="active">
                        <a href="#">
                            <span class="fa-stack fa-lg pull-left">
                                <i class="fa fa-truck fa-stack-1x "></i>
                            </span>Compras</a>
                        <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/compras/factura">Factura de Compra</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#">
                            <span class="fa-stack fa-lg pull-left">
                                <i class="fa fa-shopping-bag fa-stack-1x "></i>
                            </span>Logistica</a>
                        <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/compras/kardex">Kardex</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/compras/inventario">Inventario</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/compras/stock">Stock</a>
                            </li> 
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/compras/proveedores">Proveedores</a>
                            </li>                                    
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/compras/productos">Productos</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/compras/claseSubclase">Clase/Subclase</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/logistica/almacen">Almacen</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#">
                            <span class="fa-stack fa-lg pull-left">
                                <i class="fa fa-shopping-cart fa-stack-1x "></i>
                            </span>Ventas</a>
                        <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/ventas/factura">Factura de Venta</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/ventas/preventa">Preventa</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/ventas/clientes">Clientes</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/ventas/pagos">Pagos y Cuotas</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/ventas/arqueoCaja">Arqueo de Caja</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/ventas/guiaRemisionTransporista">Guía Rem. Transportista</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#">
                            <span class="fa-stack fa-lg pull-left">
                                <i class="fa fa-cogs fa-stack-1x "></i>
                            </span>Configuracion</a>
                        <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/sucursal">Sucursal</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/puntodeventa">Punto de Venta</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">Usuarios</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/datosEmpresa">Datos de la empresa</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/datosTransportista">Datos de los Transportistas</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/unidadTransporte">Unidades de transporte</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/canalUsuario">Canales de Venta de Usuarios</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/tablasGenerales">Tablas generales</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/catalogoRutas">Catálogo de Rutas</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#">
                            <span class="fa-stack fa-lg pull-left">
                                <i class="fa fa-print fa-stack-1x "></i>
                            </span>Impresora</a>
                        <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/impresora/factura">Factura</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/impresora/boleta">Boleta</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/configuracion/impresora/remision">Guía de Remisión</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#">
                            <span class="fa-stack fa-lg pull-left">
                                <i class="fa fa-dashboard fa-stack-1x "></i>
                            </span>Menu General</a>
                        <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                            <li>
                                <a href="${pageContext.request.contextPath}/">Panel de Inicio</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/general/perfil">Mi Perfil</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/logout">Terminar Sesion</a>
                            </li>
                        </ul>
                    </li>
                </cc:if>
                <!-- Menu Vendedor -->
                <cc:if test="${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==2}">
                    <li class="active">
                        <a href="#">
                            <span class="fa-stack fa-lg pull-left">
                                <i class="fa fa-shopping-cart fa-stack-1x "></i>
                            </span>Ventas</a>
                        <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/ventas/factura">Factura de Venta</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/ventas/preventa">Preventa</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/ventas/clientes">Clientes</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/ventas/arqueoCaja">Arqueo de Caja</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/compras/productos">Productos</a>
                            </li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#">
                            <span class="fa-stack fa-lg pull-left">
                                <i class="fa fa-dashboard fa-stack-1x "></i>
                            </span>Menu General</a>
                        <ul class="nav-pills nav-stacked" style="list-style-type:none;">
                            <li>
                                <a href="${pageContext.request.contextPath}/">Panel de Inicio</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/secured/general/perfil">Mi Perfil</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/logout">Terminar Sesion</a>
                            </li>
                        </ul>
                    </li>
                </cc:if>
            </ul>
        </div>
    </jsp:attribute>

    <jsp:attribute name="footer">
    </jsp:attribute>

    <jsp:body>
        <div id="page-content-wrapper">
            <div class="container-fluid xyz">
                <jsp:invoke fragment="mybody"/>
            </div>
        </div>
    </jsp:body>

</t:template-page>