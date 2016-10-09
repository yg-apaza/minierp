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
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <label>Código </label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-product-hunt"></i></span>
                                        <input type="text" class="form-control" placeholder="Codigo" id="proCod">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 form-group">
                                    <button onclick=generateBarcode() class="btn btn-lg btn-success btn-block">
                                        <i class="fa fa-plus"></i> Generar código
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" id="printer">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12-offset-5 form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div id="barcodeTarget"></div>
                                            </div>
                                        </div>    
                                        <div class="row">
                                            <div class="col-md-12">
                                                <button onclick=PrintElem("#barcodeTarget") class="btn btn-lg btn-success btn-block">
                                                    <i class="fa fa-print"></i> Imprimir
                                                </button>
                                            </div>
                                        </div>    
                                </div> 
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $( document ).ready(function() {
                $("#printer").hide();
            });
            function PrintElem(elem){
                Popup($(elem).html());
            }
            function Popup(data){
                var w = window.open('', 'print_div', 'height=400,width=600');
                w.document.write('<html><head><title>Print Barcode</title>');
                w.document.write('</head><body >');
                w.document.write(data);
                w.document.write('</body></html>');
                w.document.close();
                w.print();
                w.close();
                return true;
            }   
            function generateBarcode(){
                $("#printer").show();
                var value = $("#proCod").val();
                var btype = "code93";
                var settings = {
                    output: "bmp",
                    bgColor: "#FFFFFF",
                    color: "#000000",
                    barWidth: "1",
                    barHeight: "60",
                    showHRI: "false"
                };
                $("#barcodeTarget").barcode(value, btype, settings);
            }  
        </script>
    </jsp:attribute>
</minierptemplate:template>