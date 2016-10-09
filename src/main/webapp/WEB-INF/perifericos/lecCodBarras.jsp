<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Código de Barras</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <h1>Módulo de Periféricos</h1>
        <br>
        <div class="container">
            <h1 class="page-header">Lectora de código de barras</h1>
            <br>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Código de barras
                        </div>
                        <div class="panel-body">
                           <form role=form" method="post" action="${pageContext.request.contextPath}/secured/perifericos/lecCodBarras">
                                <label>Subir archivo </label>
                                <div class="form-group input-group">
                                    <input type="file" name="fileName">
                                </div>
                                <button type="submit" class="btn btn-lg btn-success btn-block">
                                    <i class="fa fa-user-plus"></i> Leer código
                                </button>
                           </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <label>${codigo}</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <a class="btn btn-success" href="${pageContext.request.contextPath}/secured/perifericos/barCodeInventario" role="button">
                                <i class="fa fa-plus"></i>
                                Inventario
                            </a>
                        </div>
                    </div>
                </div>
            </div>                         
        </div>
    </jsp:attribute>
</minierptemplate:template>