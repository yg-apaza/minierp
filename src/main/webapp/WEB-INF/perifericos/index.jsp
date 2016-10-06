<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Periféricos</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <h1>Módulo de Periféricos</h1>
        <div class="container-fluid main-container">
            <!--  PANEL PRINCIPAL -->
            <div class="col-md-12 content">
                <div class="">
                    <div class="panel-body">
                        <div class="form-group">
                            <div class="col-lg-4 col-md-6">
                                <div class="panel panel-yellow">
                                    <div class="panel-heading">
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <i class="fa fa-barcode fa-5x"></i>
                                            </div>
                                            <div class="col-xs-9 text-right">
                                                <div class="huge">1</div>
                                                <div><h3>Código de barras</h3></div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="${pageContext.request.contextPath}/secured/perifericos/genCodBarras">
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