<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - C�digo de Barras</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <h1>M�dulo de Perif�ricos</h1>
        <br>
        <div class="container">
            <h1 class="page-header">Generador de c�digo de barras</h1>
            <br>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            C�digo de barras
                        </div>
                        <div class="panel-body">
                            <form role=form" method="post" action="${pageContext.request.contextPath}/secured/perifericos/genCodBarras">
                                <div class="form-group">
                                    <label>Ingrese el c�digo del producto</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-product-hunt"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Codigo" name="proCod">
                                    </div>
                                <button type="submit" class="btn btn-lg btn-success btn-block">
                                    <i class="fa fa-plus"></i> Generar c�digo
                                </button>
                            </form>
                             
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>