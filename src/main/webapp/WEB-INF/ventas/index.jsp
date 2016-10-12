<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Venta y Preventa</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <h1>Módulo de Ventas</h1>
        
        
        <!-- CREAR FACTURA-->
        <div class="col-lg-4 col-md-6">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-cart-plus fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">1</div>
                            <div><h3>Factura</h3></div>
                        </div>
                    </div>
                </div>
                <a href="${pageContext.request.contextPath}/secured/ventas/factura">
                    <div class="panel-footer">
                        <span class="pull-left">Ingresar factura</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
                    
                    
         <!-- CREAR PREVENTA-->
        <div class="col-lg-4 col-md-6">
            <div class="panel panel-yellow">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-cart-arrow-down fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">2</div>
                            <div><h3>Crear Preventa</h3></div>
                        </div>
                    </div>
                </div>
                <a href="${pageContext.request.contextPath}/secured/ventas/preventa">
                    <div class="panel-footer">
                        <span class="pull-left">PreVenta</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
                    
                    
         <!-- PAGOS CUOTAS-->
         <div class="col-lg-4 col-md-6">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-users fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">3</div>
                            <div><h3>Clientes</h3></div>
                        </div>
                    </div>
                </div>
                <a href="${pageContext.request.contextPath}/secured/clientes">
                    <div class="panel-footer">
                        <span class="pull-left">Ingresar a Clientes</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
        
                    <!-- PAGOS CUOTAS-->
         <div class="col-lg-4 col-md-6">
            <div class="panel panel-green">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-3">
                            <i class="fa fa-paypal fa-5x"></i>
                        </div>
                        <div class="col-xs-9 text-right">
                            <div class="huge">4</div>
                            <div><h3>Pagos y Cuotas</h3></div>
                        </div>
                    </div>
                </div>
                <a href="${pageContext.request.contextPath}/secured/ventas/pagos">
                    <div class="panel-footer">
                        <span class="pull-left">Ingresar a Pagos y Cuotas</span>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
                   
                    
    </jsp:attribute>
</minierptemplate:template>