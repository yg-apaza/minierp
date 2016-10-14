<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Configuraciones </title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
        <div id="wrapper">
            <div class="navbar-default sidebar">
                <div class="sidebar-nav">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/secured/configuracion"><i class="fa fa-dashboard fa-fw"></i> Panel General</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-group fa-fw"></i> Configuracion<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/configuracion/empresa">Datos de la Empresa</a>
                                </li>
                                <li>
                                   <a href="${pageContext.request.contextPath}/secured/configuracion/sucursal">Sucursal</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/configuracion/puntodeventa">Punto de Venta</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
                                
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <br><h1 class="page-header">Módulo de Configuracion</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-building-o fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">1</div>
                                        <div>Datos de la Empresa</div>
                                    </div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/secured/configuracion/empresa">
                                <div class="panel-footer">
                                    <span class="pull-left">Ingresar</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                                
                    <div class="col-lg-4 col-md-6">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-truck fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">2</div>
                                        <div>Sucursal</div>
                                    </div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/secured/configuracion/sucursal">
                                <div class="panel-footer">
                                    <span class="pull-left">Ingresar</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                                
                    <div class="col-lg-4 col-md-6">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-file-text fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">3</div>
                                        <div>Punto de Venta</div>
                                    </div>
                                </div>
                            </div>
                            <a href="${pageContext.request.contextPath}/secured/configuracion/puntodeventa">
                                <div class="panel-footer">
                                    <span class="pull-left">Ingresar</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </jsp:attribute>
</minierptemplate:template>
