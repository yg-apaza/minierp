<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Ventas - Devolución Parcial</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <form id="partialRefund" method="post" action="${pageContext.request.contextPath}/secured/ventas/partialRefund">
                <input type="hidden" class="form-control" name="productsAmountsOld" id="proAmoOld">
                <input type="hidden" class="form-control" name="productsAmountsNew" id="proAmoNew">
                <input type="hidden" class="form-control" name="productsCodes" id="proCodes">
                <input type="hidden" class="form-control" name="productsPrices" id="proPrices">
                <input type="hidden" class="form-control" name="facVenTot" id="facVenTot">
                <input type="hidden" class="form-control" name="facVenSubTot" id="facVenSubTot">
                <input type="hidden" class="form-control" id="facVenIgv" value="${igv}">
                <input type="hidden" class="form-control" id="facVenDes" value="${descuento}">
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Factura de Venta</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group input-group">
                                                <h4>Información General</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Número de Factura Antigua</span>
                                                <input type="text" class="form-control" name="facVenCabCodOld" value="${facVenCabCod}" readonly>
                                                <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Número de Factura  Nueva</span>
                                                <input type="text" class="form-control" name="facVenCabCodNew">
                                                <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group input-group">
                                                <h4>Detalle de Venta</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="table-responsive">
                                                <table width="100%" class="table table-striped table-bordered table-hover" id="productTable">
                                                    <thead align="center">
                                                        <tr >
                                                            <th>Código</th>
                                                            <th>Cant.</th>
                                                            <th colspan="2">Descripción del Producto</th>
                                                            <th>Precio Unitario</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>    
                                                        <c:forEach items="${details}" var="detail">
                                                            <tr>
                                                                <td width="25%">${detail.enP2mProducto.id.claProCod}-${detail.enP2mProducto.id.subClaProCod}-${detail.enP2mProducto.id.proCod}</td>
                                                                <td width="10%">
                                                                    <input type="number" class="form-control" max="${detail.facVenDetCan}" min="0" value="${detail.facVenDetCan}">                                                            
                                                                </td>
                                                                <td width="40%">${detail.enP2mProducto.proDet}</td>
                                                                <td width="10%" align="center">${detail.enP2mProducto.taGzzUnidadMed.uniMedDet}</td>
                                                                <td width="15%" align="center">${detail.facVenDetValUni}</td>
                                                            </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div align="right">
                                        <button type="submit" id="update" class="btn btn-primary">Actualizar Detalle</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>                            
                </div>
            </form>
        </div>        
        <script language="javascript">
            $(document).ready(function () {
                updateAll();
                $('#proAmoOld').val($('#proAmoNew').val());
            });
            
            $("#productTable").on("change", function() {
               updateAll();
            });
            
            function updateAll() {
                var productsCodes = new Array();
                var amounts = new Array();
                var prices = new Array();
                var subTotal = 0;
                $("#productTable tbody tr").each(function () {
                    productsCodes.push($(this)[0].children[0].textContent);
                    amounts.push($(this)[0].children[1].children[0].value);
                    prices.push($(this)[0].children[4].textContent);
                    subTotal += Number($(this)[0].children[1].children[0].value)*Number($(this)[0].children[4].textContent);
                });                
                $('#proCodes').val(productsCodes);
                $('#proAmoNew').val(amounts);
                $('#proPrices').val(prices);
                subTotal = (subTotal * (1 + Number($('#facVenIgv').val() / 100))).toFixed(2);
                $('#facVenSubTot').val(subTotal);
                var total = ((1 - Number($('#facVenDes').val() / 100))*subTotal).toFixed(2);
                $('#facVenTot').val(total);
            }
            
            $.validator.addMethod("codePattern", function (value) {
                return /^[0-9]{3}-[0-9]{6}$/.test(value);
            }, "Patrón: [0-9]{3}-[0-9]{6}");
            
            $("#partialRefund").validate({
                rules: {
                    facVenCabCodNew: {
                        required: true,
                        codePattern: true
                    }
                },
                messages: {
                    facVenCabCodNew: {
                        required: "Campo requerido"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            }); 
        </script>
    </jsp:attribute>        
</minierptemplate:template>
