<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Código de Barras</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Productos</h1>
            <br>
            <a class="btn btn-success" href="${pageContext.request.contextPath}/secured/perifericos" role="button">
                <i class="fa fa-arrow-left"></i>
                Regresar
            </a>
            <br>
            <br>
            <div>
                <table class = "table table-bordered table-condensed" id = "id_table">
                    <thead>
                        <tr>
                            <th style="text-align: center">Código</th>
                            <th style="text-align: center">Imagen</th>
                            <th style="text-align: center">Cantidad</th>
                            <th style="text-align: center">Operación</th>
                        </tr>               
                    </thead>
                    <tbody>
                        <c:forEach items="${productos}" var="p">
                            <tr>
                                <td>${p.id.proCod}</td>
                                <td style="text-align: center"><img src="${pageContext.request.contextPath}/img/barcodes/${p.proCod}.png" width="240" height="74"></td>
                                <td>${p.proStk}</td>
                                <td><a class="btn btn-success" href="${pageContext.request.contextPath}/secured/perifericos/addStock?p=${p.proCod}" role="button">
                                        <i class="fa fa-plus"></i> Registrar</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>            
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