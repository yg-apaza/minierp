<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Contabilidad</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container-fluid main-container">
            <!--  PANEL PRINCIPAL -->
            <div class="col-md-12 content">
                <div class="">
                    <div class="panel-body">
                        <div class="form-group">
                            
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="panel panel-red">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-bookmark fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">1</div>
                                                <div><h3>Plan Contable</h3></div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/secured/contabilidad/plan">
                                        <div class="panel-footer">
                                            <span class="pull-left">Ingresar</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-book fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">2</div>
                                                <div><h3>Libro Diario</h3></div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/secured/contabilidad/librodiario">
                                        <div class="panel-footer">
                                            <span class="pull-left">Ingresar</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-book fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">3</div>
                                                <div><h3>Libro Mayor</h3></div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/secured/contabilidad/libromayor">
                                        <div class="panel-footer">
                                            <span class="pull-left">Ingresar</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-book fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">4</div>
                                                <div><h3>Caja</h3></div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/secured/contabilidad/caja">
                                        <div class="panel-footer">
                                            <span class="pull-left">Ingresar</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-book fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">5</div>
                                                <div><h3>Bancos</h3></div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/secured/contabilidad/bancos">
                                        <div class="panel-footer">
                                            <span class="pull-left">Ingresar</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-4 col-sm-6">
                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-line-chart fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">6</div>
                                                <div><h3>Balance General</h3></div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/secured/contabilidad/balance">
                                        <div class="panel-footer">
                                            <span class="pull-left">Ingresar</span>
                                            <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                            <div class="clearfix"></div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            
                            <div class="col-lg-3 col-md-4 col-sm-6 col-lg-offset-0 col-md-offset-4 col-sm-offset-3">
                                <div class="panel panel-yellow">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-gears fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">7</div>
                                                <div><h3>Configuraciones</h3></div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/secured/general/contabilidad/configuraciones">
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
            </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>
