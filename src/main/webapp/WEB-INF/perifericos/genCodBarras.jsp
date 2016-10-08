<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Código de Barras</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <h1>Módulo de Periféricos</h1>
        <br>
        <div class="container">
            <h1 class="page-header">Impresora de código de barras</h1>
            <br>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Código de barras
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <form role=form" method="post" action="${pageContext.request.contextPath}/secured/perifericos/genCodBarras">
                                        <div class="row">
                                            <div class="col-md-12 form-group">
                                                <label>Código </label>
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-product-hunt"></i></span>
                                            <input type="text" class="form-control" placeholder="Codigo" name="proCod">
                                        </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <button type="submit" class="btn btn-lg btn-success btn-block">
                                            <i class="fa fa-plus"></i> Generar código
                                        </button>
                                            </div>
                                        </div> 
                                    </form>
                                </div>
                                <div class="col-md-6 form-group">
                                    <form role=form" method="post" action="${pageContext.request.contextPath}/secured/perifericos/impCodBarras">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="text-xs-center">
                                                   <img src="${pageContext.request.contextPath}/img/barcodes/temp.png" width="240" height="74">
                                                </div>
                                            </div>
                                        </div>    
                                        <div class="row">
                                            <div class="col-md-12">
                                                <button type="submit" class="btn btn-lg btn-success btn-block">
                                                    <i class="fa fa-print"></i> Imprimir
                                                </button>
                                            </div>
                                        </div>    
                                    </form>
                                </div>                         
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>