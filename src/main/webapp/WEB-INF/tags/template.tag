<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ attribute name="titulo" fragment="true" %>
<%@ attribute name="contenido" fragment="true" %>
<!DOCTYPE html>
 
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/sb-admin-2.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/jquery-ui.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/select2.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/modal.css" rel="stylesheet" type="text/css">
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
            
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico" />
        <jsp:invoke fragment="titulo"/>
    </head>
    <body>
        <div id="wrapper">
            <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
                
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/">
                        <img id="logoEmp" src="${pageContext.request.contextPath}/img/">
                    </a>
                </div>
                
                <ul class="nav navbar-top-links navbar-right">
                    <li class="dropdown"><a href="${pageContext.request.contextPath}/">
                        <i class="fa fa-home" aria-hidden="true"></i> Inicio
                    </a></li>
                    <li class="dropdown"><a href="${pageContext.request.contextPath}/secured/general/perfil">
                        <i class="fa fa-user" aria-hidden="true"></i> Perfil
                    </a></li>
                    <li class="dropdown"><a href="${pageContext.request.contextPath}/logout">
                        <i class="fa fa-sign-out" aria-hidden="true"></i> Salir
                    </a></li>
                </ul>
                         
                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Buscar...">
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
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==1 || sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==3 || sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==5}">
                            <li>
                                <a href="#"><i class="fa fa-truck fa-fw"></i> Log�stica<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">Compras <span class="fa arrow"></span></a>
                                        <ul class="nav nav-third-level">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/secured/compras/factura">Factura de Compra</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Log�stica <span class="fa arrow"></span></a>
                                        <ul class="nav nav-third-level">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/secured/compras/kardex">Kardex</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/secured/compras/inventario">Inventario</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/secured/compras/clasificacionABC">Clasificaci�n ABC</a>
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
                                </ul>
                            </li>
                            </cc:if>
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==1 || sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==2 || sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==5 || sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==6}">
                            <li>
                                <a href="#"><i class="fa fa-cart-arrow-down fa-fw"></i> Ventas<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">  
                                    
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/ventas/factura">Factura de Venta</a>
                                    </li>
                                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=6}">
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
                                        <a href="${pageContext.request.contextPath}/secured/ventas/guiaRemisionTransporista">Gu�a de Remisi�n de Transportista</a>
                                    </li>
                                    </cc:if>
                                </ul>
                            </li>
                            </cc:if>
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==1 || sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==4 || sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==5}">
                            <li>
                                <a href="#"><i class="fa fa-book fa-fw"></i> Contabilidad<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/contabilidad/asientos">Registro de Asientos</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/contabilidad/plantilla">Plantillas de Asientos</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/contabilidad/hojaTrabajo">Hoja de Trabajo</a>
                                    </li>
                                    <li>
                                        <a href="#">Estados Financieros<span class="fa arrow"></span></a>
                                        <ul class="nav nav-third-level">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/secured/contabilidad/balance">Balance General</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#">Libros Contables<span class="fa arrow"></span></a>
                                        <ul class="nav nav-third-level">
                                            
                                            <li>
                                                <a href="${pageContext.request.contextPath}/secured/contabilidad/librodiario">Libro Diario</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/secured/contabilidad/libroMayor">Libro Mayor</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/secured/contabilidad/caja">Libro de Caja</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/secured/contabilidad/bancos">Libro de Bancos</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/contabilidad/cuentabancaria">Cuentas bancarias</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/contabilidad/plan">Plan Contable</a>
                                    </li>
                                </ul>
                            </li>
                            </cc:if>
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==1 || sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==5}">
                            <li>
                                <a href="#"><i class="fa fa-gears fa-fw"></i> Configuraciones<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/configuracion/sucursal">Sucursal</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/configuracion/puntodeventa">Punto de Venta</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">Usuarios</a>
                                    </li>
                                    <!--
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/configuracion/documentoCliente">Documentos de clientes</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/secured/configuracion/documentoUsuario">Documentos de usuarios</a>
                                    </li>
                                    -->
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
                                        <a href="${pageContext.request.contextPath}/secured/configuracion/catalogoRutas">Cat�logo de Rutas</a>
                                    </li>
                                    <li>
                                        <a href="#">Impresora<span class="fa arrow"></span></a>
                                        <ul class="nav nav-third-level">
                                             <li>
                                                <a href="${pageContext.request.contextPath}/secured/configuracion/impresora/factura">Factura</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/secured/configuracion/impresora/boleta">Boleta</a>
                                            </li>
                                            <li>
                                                <a href="${pageContext.request.contextPath}/secured/configuracion/impresora/remision">Gu�a de Remisi�n</a>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                            </cc:if>
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
<script>
    if("nada"!="${empImg}"){
        $('#logoEmp')[0].src="${pageContext.request.contextPath}/img/${empImg}";
    }
    else{
        $('#logoEmp')[0].src="${pageContext.request.contextPath}/img/logo.png";
    }
</script>
