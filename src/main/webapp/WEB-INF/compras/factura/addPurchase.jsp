<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Compras - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div id="panel-body">
            <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/compras/factura/addFactura">
                <input type="hidden" class="form-control" name="productsAmounts" id="proAmo">
                <input type="hidden" class="form-control" name="productsCodes" id="proCodes">
                <input type="hidden" class="form-control" name="productsPrices" id="proPrices">
                <input class="hidden" type="text" name="prvCod" id="facPrv">
                <input type="hidden" class="form-control" id="unitShow"> 
                <div class="row">
                    <div class="col-md-4">
                        <br><h1 class="page-header">Factura de Compra</h1>
                    </div>
                    <div class="col-md-4 col-md-offset-4"><br>
                        <div class="form-group input-group">
                            <span class="input-group-addon">Almacenero</span>
                            <span class="input-group-addon"><i class="fa fa-child"></i></span>
                            <input type="hidden" class="form-control" name="usuCod" value="${usuario.usuCod}" readonly>
                            <input type="text" class="form-control" value="${usuario.usuCod} - ${usuario.usuNom}" readonly>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h4>Información General</h4><br>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                            <input type="text" class="form-control" name="facComCabCod" placeholder="Número de Factura">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Emisión</span>
                                            <input type="date" class="form-control" name="facComCabFecEmi" value="${fechaActual}" readonly>
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>       
                                    <div class="col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Vencimiento</span>
                                            <input type="date" class="form-control" name="facComCabFecVen">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div> 
                                    <div class="col-xs-12 col-md-9">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group input-group" >                                                    
                                                    <span class="input-group-addon">Proveedor</span>
                                                    <select class="form-control" id="desProveedor" name="prvType">
                                                        <option value="1">Razón Social</option>
                                                        <option value="2">Nombre Comercial</option>
                                                    </select> 
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    <input class="form-control" type="text" name="prvDes" id="prvDesShow" size="50" placeholder="Descripción">      
                                                    <span class="input-group-addon"><i class="fa fa-unlock" id="iconSupplierCriteria"></i></span>
                                                </div>                                                
                                            </div>
                                        </div>
                                        <div class="row">   
                                            <div class="col-md-6">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Estado</span>
                                                    <select class="form-control" name="estFacCod">
                                                        <c:forEach items="${estadosFactura}" var="estadoFactura">
                                                            <option value="${estadoFactura.estFacCod}">${estadoFactura.estFacDet}</option>
                                                        </c:forEach>
                                                    </select> 
                                                    <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Moneda</i></span>
                                                    <select class="form-control" name="monCod">
                                                        <c:forEach items="${monedas}" var="moneda">
                                                            <option value="${moneda.monCod}">${moneda.monDet}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                </div>
                                            </div>                                            
                                        </div>
                                        <div class="row">                                            
                                            <div class="col-md-6">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Método de Pago</span>
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
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-3">
                                        <textarea class="form-control" rows="5" name="facComCabObs" placeholder="Observaciones"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-md-10">
                                        <h4>Detalle de Compra</h4>
                                    </div>
                                    <div class="col-md-2">
                                        <div class="form-group input-group">
                                            <button type="button" class="btn btn-warning" onclick='addNewProduct()'>Añadir producto <i class="fa fa-plus"></i></button>                
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Producto</span>
                                                    <input class="form-control" type="text" id="proDesShow" placeholder="Descripción" size="100" readOnly>                                                    
                                                    <span class="input-group-addon" onclick="changeIcon()"><i class="fa" id="iconCriteria"></i></span>
                                                    <input class="form-control" type="text" id="proCodShow" placeholder="Código" size="60" readOnly>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Precio</span>
                                                    <input type="number" class="form-control" id="priceShow" min="0" step="any" value="1.0">        
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">Cant.</span>
                                                    <input type="number" class="form-control" id="amountShow" min="1" step="any" value="1">
                                                </div>
                                            </div> 
                                            <div class="col-md-1">
                                                <button type="button" class="btn btn-success" id="addDetail"><i class="fa fa-plus-square-o fa-1x"></i></button>
                                            </div>
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
                                                        <th>Cantidad</th>
                                                        <th colspan="2">Descripción del Producto</th>
                                                        <th colspan="2">Precio Unitario</th>
                                                    </tr>
                                                </thead>
                                                <tbody>                                        
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Tipo Descuento</i></span>
                                            <select class="form-control" name="tipDesCod">
                                                <c:forEach items="${tiposDescuentos}" var="tipoDescuentos">
                                                    <option value="${tipoDescuentos.tipDesCod}">${tipoDescuentos.tipDesDet}</option>
                                                </c:forEach>
                                            </select> 
                                            <span class="input-group-addon">Valor (%)</i></span>
                                            <input type="number" class="form-control" name="facComCabPorDes" id="porDes" min="0" step="any" value="0" max="100">
                                            <span class="input-group-addon"><i class="fa fa-sort-amount-asc"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-md-2">                                        
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">IGV</span>
                                            <input type="number" class="form-control" name="facComCabIgv" id="facIgv" min="1" step="any" value="18">
                                        </div>
                                    </div>
                                    <div class="col-md-4">      
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">SubTotal + IGV</span>
                                            <input type="number" class="form-control" name="facComCabSubTot" id="facSub" value="0" readonly>
                                            <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-9">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Total</i></span>
                                            <input type="number" class="form-control" name="facComCabTot" id="facTot" value="0" readonly>
                                            <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div align="right">
                                    <button type="submit" id="register" class="btn btn-primary" disabled>Registrar Factura</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>                                  
        <div id="errorMessageModal" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Detalle de Venta</h4>
                    </div>
                    <div class="modal-body">
                        <p align="center"><span id="errorMessage"></span></p>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success" data-dismiss="modal">Aceptar</button>                                            
                    </div>
                </div>              
            </div>
        </div>
        <div class="modal fade" id="addNewProduct">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Añadir Producto</h4>
                    </div>
                    <div class="modal-body">
                        <div class="col-md-12 form-group input-group">
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">Clase</span>
                                    <select class="form-control" id="addClaProCod" name="claProCodAdd" onchange="changingValues()">
                                    </select> 
                                    <span class="input-group-addon"><i class="fa fa-book"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group input-group">
                                    <span class="input-group-addon">SubClase</span>
                                    <select class="form-control" id="addSubClaProCod" name="subClaProCodAdd">
                                    </select> 
                                    <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-12">
                                <div class="form-group input-group">
                                    <span class="input-group-addon"><i class="fa fa-edit"></i></span>
                                    <input type="text" class="form-control" id="addProDet" name="proDetAdd" placeholder="Descripción del Producto">
                                </div>
                            </div>                            
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group input-group" >
                                    <span class="input-group-addon">Moneda</span>                                    
                                    <select class="form-control" id="addMonCod" name="monCodAdd">
                                    </select> 
                                    <span class="input-group-addon"><i class="fa fa-dollar"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group input-group" >
                                    <span class="input-group-addon">Unidad de Medida</span>                                    
                                    <select class="form-control" id="addUniMedCod" name="uniMedCodAdd">
                                    </select> 
                                    <span class="input-group-addon"><i class="fa fa-gears"></i></span>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-6">
                                <div class="form-group input-group" >
                                    <span class="input-group-addon">Precio de Venta</span>                                                            
                                    <input type="number" class="form-control" name="addProPreUniVen" name="proPreUniVenAdd" min="0.0" step="any" value="0.0">
                                    <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                </div>
                            </div>    
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-success">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
        <script language="javascript">
            var codeProductCriteria = false;
            var productCodes = new Array();
            var productDescriptions = new Array();

            <c:forEach items="${productos}" var="p" varStatus="loop">
            productCodes.push("${p.id.claProCod}-${p.id.subClaProCod}-${p.id.proCod}");
                productDescriptions.push("${p.proDet}");
            </c:forEach>

            $(document).ready(function () {
                changeSupplierDescription();
                changeDiscount();
            });

            $(document).ready(function () {
                $("#productTable").on('click', '.btnDelete', function () {
                    $(this).closest('tr').remove();
                    updateAll();
                });
            });

            $(document).ready(function () {
                $("#iconCriteria").addClass("fa-chevron-left");
                $('#proCodShow').attr('readOnly', true);
                $('#proDesShow').attr('readOnly', false);
            });

            $(document).ready(function () {
                $('#addDetail').on('click', function () {
                    if ($('#proCodShow').val() == "Desconocido" || $('#proCodShow').val() == "" || $('#proDesShow').val() == "Desconocido" || $('#proDesShow').val() == "") {
                        $("#errorMessage").text("Producto Desconocido. Ingrese un producto disponible");
                        $('#errorMessageModal').modal('show');
                    } else {
                        var idRow = $("#proCodShow").val();
                        var finalValidation = true;
                        $("#productTable tr").find('td:eq(0)').each(function () {
                            if (idRow == $(this).html()) {
                                finalValidation = false;
                                $("#errorMessage").text("El producto ya ha sido ingresado en la descripción.");
                                $('#errorMessageModal').modal('show');
                                return false;
                            }
                        });

                        if (finalValidation) {
                            $('#productTable tbody').append('<tr align="center"><td width="20%"></td><td width="10%"></td><td width="40%"></td><td width="15%"></td><td width="10%"></td><td width="5%"><button type="button" class="btnDelete btn btn-danger")><i class="fa fa-trash-o fa-1x"></i></button></td></tr>');
                            $('#productTable tr:last td:eq(0)').html($("#proCodShow").val());
                            $('#productTable tr:last td:eq(1)').html($("#amountShow").val());
                            $('#productTable tr:last td:eq(2)').html($("#proDesShow").val());
                            $('#productTable tr:last td:eq(3)').html($("#unitShow").val());
                            $('#productTable tr:last td:eq(4)').html($("#priceShow").val());
                            $('#proCodShow').val("");
                            $('#proDesShow').val("");
                            $('#priceShow').val(1);
                            $('#amountShow').val(1);
                            updateAll();
                        }
                    }
                });
            });

            $.validator.addMethod("codePattern", function (value, element) {
                return /^[0-9]{3}-[0-9]{6}$/.test(value);
            }, "Patrón: [0-9]{3}-[0-9]{6}");

            $.validator.addMethod("verifiedValue", function (value, element) {
                return value != "";
            }, "Ingrese datos correctos");

            function updateAll() {
                    var productsCodes = new Array();
                    var amounts = new Array();
                    var prices = new Array();
                    var subTotal = 0;
                    $("#productTable tbody tr").each(function () {
                        productsCodes.push($(this)[0].childNodes[0].textContent);
                        amounts.push($(this)[0].childNodes[1].textContent);
                        prices.push($(this)[0].childNodes[4].textContent);
                        subTotal += Number($(this)[0].childNodes[1].textContent) * Number($(this)[0].childNodes[4].textContent);
                    });
                    $('#proCodes').val(productsCodes);
                    $('#proAmo').val(amounts);
                    $('#proPrices').val(prices);
                    subTotal = (subTotal * (1 + Number($('#facIgv').val() / 100))).toFixed(2);
                    $('#facSub').val(subTotal);
                    var total = ((1 - Number($('#porDes').val() / 100)) * subTotal).toFixed(2);
                    $('#facTot').val(total);

                    if ($("#productTable tr").length > 1) {
                        $("#register").prop('disabled', false);
                    } else {
                        $("#register").prop('disabled', true);
                    }
                }

            function changeIcon() {
                if (codeProductCriteria) {
                    $('#iconCriteria').removeClass("fa-chevron-left").addClass("fa-chevron-right");
                    $('#proDesShow').attr('readOnly', false);
                    $('#proCodShow').attr('readOnly', true);
                    codeProductCriteria = false;
                } else {
                    $('#iconCriteria').removeClass("fa-chevron-right").addClass("fa-chevron-left");
                    $('#proCodShow').attr('readOnly', false);
                    $('#proDesShow').attr('readOnly', true);
                    codeProductCriteria = true;
                }

                $('#proCodShow').val("");
                $('#proDesShow').val("");
                $('#priceShow').val(1);
                $('#amountShow').val(1);
            }

            function changeSupplierDescription() {
                $.post(
                        "${pageContext.request.contextPath}/secured/compras/factura/searchSupplier", {
                            action: "all"
                        }
                ).done(function (data) {
                    if (data.suppliers.length > 0) {
                        if ($("#desProveedor").val() == "1") { //Razón Social
                            var suppliersRS = new Array();
                            data.suppliers.forEach(function (supplier) {
                                suppliersRS.push(supplier.prvRazSoc);
                            });

                            $("#prvDesShow").autocomplete({
                                source: suppliersRS
                            });
                        } else if ($("#desProveedor").val() == "2") { //Nombre Comercial
                            var suppliersNC = new Array();
                            data.suppliers.forEach(function (supplier) {
                                suppliersNC.push(supplier.prvNomCom);
                            });

                            $("#prvDesShow").autocomplete({
                                source: suppliersNC
                            });
                        }
                    }
                });
            }

            function changeDiscount() {
                var total = ((1 - Number($('#porDes').val() / 100)) * Number($('#facSub').val())).toFixed(2);
                $('#facTot').val(total);
            }

            function changeIGV() {
                var subTotal = 0;
                $("#productTable tbody tr").each(function () {
                    subTotal += Number($(this)[0].childNodes[1].textContent) * Number($(this)[0].childNodes[4].textContent);
                });
                subTotal = (subTotal * (1 + Number($('#facIgv').val() / 100))).toFixed(2);
                $('#facSub').val(subTotal);
                changeDiscount();
            }

            $('#porDes').on('change', function () {
                changeDiscount();
            });

            $('#porDes').keyup(function () {
                changeDiscount();
            });

            $('#facIgv').change(function () {
                changeIGV();
            });

            $('#facIgv').keyup(function () {
                changeIGV();
            });

            $('#desProveedor').on('change', function () {
                changeSupplierDescription();
                $("#prvDesShow").val("");
            });

            $("#proCodShow").autocomplete({
                source: productCodes
            });

            $("#proDesShow").autocomplete({
                source: productDescriptions
            });

            $('#proCodShow').keyup(function () {
                if (codeProductCriteria) {
                    $.post(
                            "${pageContext.request.contextPath}/secured/ventas/searchProduct", {
                                proCod: $("#proCodShow").val(),
                                proDet: ""
                            }
                    ).done(function (data) {
                        if (data.proCod != null) {
                            $("#proDesShow").val(data.proDet);
                            $('#unitShow').val(data.proUnit);
                        } else {
                            $("#proDesShow").val("Desconocido");
                        }
                    });
                }
            });

            $('#proDesShow').keyup(function () {
                if (!codeProductCriteria) {
                    $.post(
                            "${pageContext.request.contextPath}/secured/ventas/searchProduct", {
                                proCod: "",
                                proDet: $("#proDesShow").val()
                            }
                    ).done(function (data) {
                        if (data.proCod != null) {
                            $("#proCodShow").val(data.proCod);
                            $('#unitShow').val(data.proUnit);
                        } else {
                            $("#proCodShow").val("Desconocido");
                        }
                    });
                }
            });

            $('#prvDesShow').keyup(function () {
                $.post(
                        "${pageContext.request.contextPath}/secured/compras/factura/searchSupplier", {
                            action: "search",
                            prvDes: $("#prvDesShow").val(),
                            prvTyp: $("#desProveedor").val()
                        }
                ).done(function (data) {
                    if (data.prvCod != null) {
                        $("#facPrv").val(data.prvCod);
                        $('#iconSupplierCriteria').removeClass("fa-unlock").addClass("fa-lock");
                    } else {
                        $("#facPrv").val("");
                        $('#iconSupplierCriteria').removeClass("fa-lock").addClass("fa-unlock");
                    }
                });
            });

            $("#registerBill").validate({
                rules: {
                    facComCabCod: {
                        required: true,
                        codePattern: true
                    },
                    prvDes: {
                        required: true
                    },
                    facComCabFecEmi: {
                        required: true
                    },
                    facComCabFecVen: {
                        required: true
                    },
                    facComCabPorDes: {
                        required: true
                    }
                },
                messages: {
                    facComCabCod: {
                        required: "Ingrese el código de la factura"
                    },
                    prvDes: {
                        required: "Ingrese cliente válido"
                    },
                    facComCabFecEmi: {
                        required: "Seleccione una fecha"
                    },
                    facComCabFecVen: {
                        required: "Seleccione una fecha"
                    },
                    facComCabPorDes: {
                        required: "Considere descuento 0"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            function addNewProduct(){
                $.post(
                        "${pageContext.request.contextPath}/secured/compras/addProduct", {
                            action: "getData"
                        }
                ).done(function (data) {
                    console.log(data);
                    $('#addClaProCod').empty();
                    
                    data.claDet.forEach(function (cla) {
                        $("#addClaProCod").append($('<option>', {
                            value: cla.claProCod,
                            text: cla.claProDet
                        }));
                    });
                    
                    $('#addMonCod').empty();
                    
                    data.monDet.forEach(function (mon) {
                        $("#addMonCod").append($('<option>', {
                            value: mon.monCod,
                            text: mon.monDet
                        }));
                    });
                    
                    $('#addUniMedCod').empty();
                    
                    data.meaUnitDet.forEach(function (mea) {
                        $("#addUniMedCod").append($('<option>', {
                            value: mea.uniMedCod,
                            text: mea.uniMedDet
                        }));
                    });
                    
                    changingValues();
                    
                    $("#addNewProduct").modal('show');
                });
            
        }
           
        function changingValues() {
            console.log($("#addClaProCod").val());
            $.post(
                    "${pageContext.request.contextPath}/secured/compras/addProduct", {
                        action: "getSubClass",
                        claProCod: $("#addClaProCod").val()
                    }
                ).done(function (data) {
                    console.log(data);
                   $('#addSubClaProCod').empty();

                   if(data.subDet.length > 0) {
                        data.subDet.forEach(function (sub) {
                            $("#addSubClaProCod").append($('<option>', {
                                value: sub.subClaProCod,
                                text: sub.subClaProDet
                            }));
                        }); 
                   } else {
                       $('#addSubClaProCod').append($('<option>', {
                            value: "",
                            text: "No existen subclases"
                        }));
                   }
                });
        }
            
        </script>
    </jsp:attribute>
</minierptemplate:template>
