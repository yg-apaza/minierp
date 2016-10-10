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
            <a class="btn btn-success" href="${pageContext.request.contextPath}/secured/perifericos" role="button">
                <i class="fa fa-arrow-left"></i>
                Regresar
            </a>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                           <form role="form" enctype="multipart/form-data" method="post" action="${pageContext.request.contextPath}/secured/perifericos/lectoraBarras">                             
                               <label>Cargar imagen </label>
                                <div class="form-group input-group">
                                    <input type="file" name="fileName">                                  
                                </div>
                                <button type="submit" class="btn btn-md btn-success btn-block">
                                    <i class="fa fa-upload"></i> Leer código
                                </button>
                           </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" id="printer">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div text-align="center">
                                <label id="codigo">${codigo}</label>
                                <div class="container" id="barcodeTarget"></div>
                            </div>
                            <button class="btn btn-md btn-success btn-block" onclick=generateBarcode()>
                                <i class="fa fa-barcode"></i> Mostrar código
                            </button>
                        </div>
                    </div>
                </div>
            </div>                 
        </div>
        <script type="text/javascript">   
            function generateBarcode(){
                $("#printer").show();
                var value = $("#codigo").text();
                var btype = "code39";
                var settings = {
                    output: "bmp",
                    bgColor: "#FFFFFF",
                    color: "#000000",
                    barWidth: "1",
                    barHeight: "60",
                };
                $("#barcodeTarget").barcode(value, btype, settings);
            }  
        </script>
    </jsp:attribute>
</minierptemplate:template>