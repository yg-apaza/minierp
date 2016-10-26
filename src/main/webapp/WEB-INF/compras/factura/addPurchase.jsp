<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Compras - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">        
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> Registrar Factura de Compra</h1>
                </div>
            </div>
            <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/compras/factura/addFactura">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h4>Informaci�n General</h4>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon"><i class="fa fa-shopping-cart"></i></span>
                                            <input type="text" class="form-control" name="facComCabCod" placeholder="N�mero de Factura">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input type="date" class="form-control" name="facComCabFec">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Estado</span>
                                            <select class="form-control" name="estFacCod">
                                                <c:forEach items="${estados}" var="estado">
                                                    <option value="${estado.estFacCod}">${estado.estFacDet}</option>
                                                </c:forEach>
                                            </select>
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div> 
                                </div>
                                <div class="row">  
                                    <div class="col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Usuario</span>                                        
                                            <input type="text" class="form-control" name="usuCod" value="${usuario.usuCod}" readonly>
                                            <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Proveedor</span>
                                            <input class="form-control" type="text" name="proCod" id="proCodShow" placeholder="Codigo de proveedor">
                                            <span class="input-group-addon"></span>
                                            <input class="form-control" type="text" name="proDet" id="proDetShow" placeholder="Detalle de proveedor">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-2 col-md-offset-10" align="right">
                                        <button type="button" class="btn btn-success" onclick="addRow('productTable')"><i class="fa fa-plus"></i></button>
                                        <button type="button" class="btn btn-danger" onclick="deleteRow('productTable')"><i class="fa fa-minus"></i></button>
                                    </div>
                                </div>
                                <table width="100%" class="table table-striped table-bordered table-hover" id="productTable">
                                    <h4>Detalle de Compra</h4>
                                    <thead>
                                        <tr>
                                            <th colspan="2" >Cantidad</th>
                                            <th>Descripci�n del Producto</th>
                                            <th>Precio Unitario</th>
                                            <th>Importe</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="width: 30px;" align="center">
                                                <input type="checkbox">
                                            </td>
                                            <td style="width: 130px;">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon"><i class="fa fa-gear"></i></span>
                                                    <input type="number" class="form-control" min="0" step="any" value="1">
                                                </div>
                                            </td>
                                            <td>
                                                <select class="form-control">
                                                    <c:forEach items="${productos}" var="producto">
                                                        <option value="${producto.id.proCod}/${producto.id.subClaProCod}/${producto.id.claProCod}">${producto.proDet}</option>
                                                    </c:forEach>
                                                </select>                                                    
                                            </td>
                                            <td style="width: 166px;">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                    <input type="number" class="form-control" min="0.0" step="any" value="1.0">
                                                </div>
                                            </td>
                                            <td style="width: 166px;">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                                    <input class="form-control" disabled>
                                                </div>
                                            </td>                                        
                                        </tr>
                                    </tbody>
                                </table>
                                <input type="hidden" class="form-control" name="productsAmounts" id="proAmo">
                                <input type="hidden" class="form-control" name="productsDescriptions" id="proDes">
                                <input type="hidden" class="form-control" name="productsPrices" id="proPri">
                                <div>
                                    <div class="col-xs-12 col-sm-6 col-md-8">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                Observaciones<br><br><textarea class="form-control" rows="2" name="facComCabObs" placeholder="No hay comentarios"></textarea>
                                            </div>
                                            <div class="panel-body">
                                                <div class="col-md-12">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">M�todo de Pago</span>
                                                        <select class="form-control" name="metPagCod">
                                                            <c:forEach items="${metodosPagoFactura}" var="metodoPagoFactura">
                                                                <option value="${metodoPagoFactura.metPagCod}">${metodoPagoFactura.metPagDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-fax"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Tipo de Pago</span>
                                                        <select class="form-control" name="tipPagCod">
                                                            <c:forEach items="${tiposPagoFactura}" var="tipoPagofactura">
                                                                <option value="${tipoPagofactura.tipPagCod}">${tipoPagofactura.tipPagDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Moneda</span>
                                                        <select class="form-control" name="monCod">
                                                            <c:forEach items="${monedas}" var="moneda">
                                                                <option value="${moneda.monCod}">${moneda.monDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-6 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">SubTotal</span>
                                            <input type="number" class="form-control" name="facComCabSubTot" id="facSub" value="0" readonly>
                                            <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                        </div>
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">IGV</span>
                                            <input type="number" class="form-control" name="facComCabIgv" min="0" step="any" max="100" value="18" id="facIgv">
                                            <span class="input-group-addon"><i class="fa fa-percent"></i></span>
                                        </div>
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Descuento</span>
                                            <input type="number" class="form-control" name="facComCabDes" min="0" step="any" value="0" id="facDes">
                                            <span class="input-group-addon"><i class="fa fa-sort-amount-asc"></i></span>
                                        </div>
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Total</i></span>
                                            <input type="number" class="form-control" name="facComCabTot" id="facTot" value="0" readonly>
                                            <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Registrar Factura</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        
        <script language="javascript">
            function addRow(tableID) {
                var table = document.getElementById(tableID);
                var rowCount = table.rows.length;
                var row = table.insertRow(rowCount);
                var colCount = table.rows[1].cells.length;

                for (var i = 0; i < colCount; i++) {
                    var newcell = row.insertCell(i);

                    newcell.innerHTML = table.rows[1].cells[i].innerHTML;
                    switch (newcell.childNodes[1].type) {
                        case "text":
                            newcell.childNodes[1].value = "";
                            break;

                        case "checkbox":
                            newcell.childNodes[1].checked = false;
                            break;

                        case "select-one":
                            newcell.childNodes[1].selectedIndex = 0;
                            break;
                    }
                }
            }

            function deleteRow(tableID) {
                try {
                    var table = document.getElementById(tableID);
                    var rowCount = table.rows.length;

                    for (var i = 1; i < rowCount; i++) {
                        var row = table.rows[i];
                        var chkbox = row.cells[0].childNodes[1];
                        if (true == chkbox.checked) {
                            if (rowCount - 1 <= 1) {
                                alert("No se puede eliminar todas las filas");
                                break;
                            }
                            table.deleteRow(i);
                            rowCount--;
                            i--;
                        }
                    }

                    updateDescription();
                } catch (e) {
                    alert(e);
                }
            }

            function updateDescription() {
                try {
                    var amounts = new Array();
                    var descriptions = new Array();
                    var prices = new Array();
                    var table = document.getElementById('productTable');
                    var rowCount = table.rows.length;
                    var subtotal = 0;

                    for (var i = 1; i < rowCount; i++) {
                        var row = table.rows[i];
                        var quant = row.cells[1].childNodes[1].childNodes[3].value;
                        amounts.push(quant);
                        descriptions.push(row.cells[2].childNodes[1].value);
                        var price = row.cells[3].childNodes[1].childNodes[3].value;
                        prices.push(price);
                        row.cells[4].childNodes[1].childNodes[3].value = quant * price;
                        subtotal += quant * price;
                    }
                    $('#facSub').val(subtotal);
                    $('#facTot').val((subtotal * (1 + $('#facIgv').val()) / 100) - ($('#facDes').val()));
                    $('#proAmo').val(amounts);
                    $('#proDes').val(descriptions);
                    $('#proPri').val(prices);
                } catch (e) {
                    alert(e);
                }
            }

            $(document).ready(function () {
                $("#productTable").change(updateDescription);
            });

            $(document).ready(function () {
                $("#facIgv").change(function () {
                    $('#facTot').val(($('#facSub').val() * (1 + $('#facIgv').val()) / 100) - ($('#facDes').val()));
                });
            });

            $(document).ready(function () {
                $("#facDes").change(function () {
                    $('#facTot').val(($('#facSub').val() * (1 + $('#facIgv').val()) / 100) - ($('#facDes').val()));
                });
            });
            
            var proCods = new Array();
            <c:forEach items="${proveedores}" var="p">
                proCods.push("${p.proCod}");
            </c:forEach>
            $("#proCodShow").autocomplete({
                source: proCods
            });
            
            $('#proCodShow').keyup(function() {
                $.post(
                    "${pageContext.request.contextPath}/secured/compras/factura/busquedaProveedor",
                    {proCod: $("#proCodShow").val()})
                .done(function(data) {
                    if(data.proCod !== null)
                    {
                        $("#proDetShow").val(data.proDet);
                    }
                    else
                    {
                        $("#proDetShow").val("Desconocido");
                    }
                });
            });
            
            $.validator.addMethod("codePattern", function (value, element) {
                return /^[0-9]{3}-[0-9]{6}$/.test(value);
            }, "Patr�n: [0-9]{3}-[0-9]{6}");
            
            $("#registerBill").validate({
                rules: {
                    facComCabCod: {
                        required: true,
                        codePattern: true
                    },
                    supName: {
                        required: true
                    },
                    facComCabFec: {
                        required: true
                    }
                },
                messages: {
                    facComCabCod: {
                        required: "Ingrese el c�digo de la factura"
                    },
                    supName: {
                        required: "Seleccione un cliente"
                    },
                    facComCabFec: {
                        required: "Seleccione una fecha"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>