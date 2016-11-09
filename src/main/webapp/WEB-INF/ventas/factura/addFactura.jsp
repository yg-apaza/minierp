<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Ventas - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div id="panel-body">
            <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/ventas/factura/addFactura">
                <input type="hidden" class="form-control" name="productsAmounts" id="proAmo">
                <input type="hidden" class="form-control" name="productsCodes" id="proCodes">
                <input type="hidden" class="form-control" name="productsPrices" id="proPrices">
                <input class="hidden" type="text" name="cliCod" id="facCli">
                <div class="row">
                    <div class="col-md-4">
                        <br><h1 class="page-header">Factura de Venta</h1>
                    </div>
                    <div class="col-md-8 col-md-offset-0"><br>
                        <div class="col-md-7">
                            <div class="form-group input-group">
                                <span class="input-group-addon">Vendedor</span>
                                <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                <input type="hidden" class="form-control" name="usuCod" value="${usuario.usuCod}" readonly>
                                <input type="text" class="form-control" value="${usuario.usuCod} - ${usuario.usuNom}" readonly>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-home"></i></span>
                                <input type="text" class="form-control" value="${punto.id.sucCod} - ${sucursal.sucDes} / ${punto.id.punVenCod}" readonly>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h4>Información General</h4><br>
                                <div class="row">
                                    <div class="col-xs-12 col-md-9">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                                    <input type="text" class="form-control" name="facVenCabCod" placeholder="Número de Factura">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Emisión</span>
                                                    <input type="date" class="form-control" name="facVenCabFecEmi" value="${fechaEmision}" readonly>
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                </div>
                                            </div>  
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Vencimiento</span>
                                                    <input type="date" class="form-control" name="facVenCabFecVen" value="${fechaVencimiento}">
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
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
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group input-group" >                                                    
                                                    <span class="input-group-addon">Cliente</span>
                                                    <select class="form-control" id="desClienteCode" disabled>
                                                        <option value="1">Razón Social</option>
                                                        <option value="2">Nombre Comercial</option>
                                                    </select> 
                                                    <input class="form-control" type="text" id="cliDesShow" placeholder="Descripción" readOnly>
                                                    <span class="input-group-addon" onclick="changeClientIcon()"><i class="fa" id="iconClientCriteria"></i></span>
                                                    <select class="form-control" id="tipoClienteCode" disabled>
                                                        <c:forEach items="${tiposCliente}" var="tipoCliente">
                                                            <option value="${tipoCliente.tipCliCod}">${tipoCliente.tipCliDet}</option>
                                                        </c:forEach>
                                                    </select> 
                                                    <input class="form-control" type="text" id="cliCodShow" placeholder="Código" readOnly>
                                                </div>                                                
                                            </div>
                                        </div>
                                        <div class="row">                                            
                                            <div class="col-md-4">
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
                                            <div class="col-md-4">
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
                                            <div class="col-md-4">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Modalidad</span>
                                                    <select class="form-control" name="facVenCabModVen">
                                                            <option value="F">Factura</option>
                                                            <option value="B">Boleta</option>
                                                    </select>
                                                    <span class="input-group-addon"><i class="fa fa-sort-amount-asc"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-3">
                                        <textarea class="form-control" rows="10" name="facVenCabObs" placeholder="Observaciones"></textarea>
                                    </div>                                    
                                </div>
                            </div>
                            <div class="panel-body">
                                <h4>Detalle de Venta</h4><br>
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Producto</span>
                                                    <input class="form-control" type="text" name="proDes" id="proDesShow" placeholder="Descripción" size="100" readOnly>                                                    
                                                    <span class="input-group-addon" onclick="changeIcon()"><i class="fa" id="iconCriteria"></i></span>
                                                    <input class="form-control" type="text" name="proCod" id="proCodShow" placeholder="Código" size="60" readOnly>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                    <input type="number" class="form-control" id="priceShow" readOnly>        
                                                    <input type="hidden" class="form-control" id="unitShow" readOnly>     
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">Cant.</span>
                                                    <input type="number" class="form-control" id="amountShow" min="1" step="any" value="1" name="canPro">
                                                </div>
                                            </div> 
                                            <div class="col-md-1">
                                                <button type="button" class="btn btn-success" id="addDetail"><i class="fa fa-plus-square-o fa-1x"></i></button>
                                            </div>
                                        </div>
                                    </div>                                    
                                </div>
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
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Tipo Descuento</i></span>
                                            <select class="form-control" name="tipDesCod" id="selectDiscount">
                                                <c:forEach items="${tiposDescuentos}" var="tipoDescuentos">
                                                    <option value="${tipoDescuentos.tipDesCod}">${tipoDescuentos.tipDesDet}</option>
                                                </c:forEach>
                                            </select> 
                                            <span class="input-group-addon">Valor (%)</i></span>
                                            <input type="number" class="form-control" name="facVenPorDes" id="porDes" min="0" step="any" value="0" discountTop="100">
                                            <span class="input-group-addon"><i class="fa fa-sort-amount-asc"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-md-2">                                        
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">IGV</span>
                                            <input type="number" class="form-control" name="facVenCabIgv" value="${empresa.empIgv}" id="facIgv" readOnly>
                                        </div>
                                    </div>
                                    <div class="col-md-4">      
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">SubTotal + IGV</span>
                                            <input type="number" class="form-control" name="facVenCabSubTot" id="facSub" value="0" readonly>
                                            <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-9">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Total</i></span>
                                            <input type="number" class="form-control" name="facVenCabTot" id="facTot" value="0" readonly>
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
        <script language="javascript">
            var codeCriteria = false;
            var codeClientCriteria = false;
            var productCodes = new Array();
            var productDescriptions = new Array();
            
            <c:forEach items="${productos}" var="p" varStatus="loop">
                productCodes.push("${p.id.claProCod}-${p.id.subClaProCod}-${p.id.proCod}");
                productDescriptions.push("${p.proDet}");
            </c:forEach>
            
            $(document).ready(function () {
                changeClientDescription();
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
                $("#iconClientCriteria").addClass("fa-chevron-left");
                $('#cliCodShow').attr('readOnly', true);
                $("#tipoClienteCode").prop('disabled', true);
                $('#cliDesShow').attr('readOnly', false); 
                $("#desClienteCode").prop('disabled', false);
            });
            
            $(document).ready(function () {
                $('#addDetail').on('click', function () {
                    if ($('#proCodShow').val() == "Desconocido" || $('#proCodShow').val() == "" || $('#proDesShow').val() == "Desconocido" || $('#proDesShow').val() == "")  {
                        $("#errorMessage").text("Producto Desconocido. Ingrese un producto disponible");
                        $('#errorMessageModal').modal('show');
                    } else if (!$('input[name="canPro"]').valid()) {
                        $("#errorMessage").text("Se ha sobrepasado el stock disponible del producto seleccionado. Seleccione otro o reduzca la cantidad pedida");
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
                            $('#productTable tbody').append('<tr align="center"><td width="20%"></td><td width="10%"></td><td width="40%"></td><td width="15%"></td><td width="10%"></td><td width="5%"><button type="button" class="btnDelete btn btn-danger"><i class="fa fa-trash-o fa-1x"></i></button></td></tr>');
                            $('#productTable tr:last td:eq(0)').html($("#proCodShow").val());
                            $('#productTable tr:last td:eq(1)').html($("#amountShow").val());
                            $('#productTable tr:last td:eq(2)').html($("#proDesShow").val());
                            $('#productTable tr:last td:eq(3)').html($("#unitShow").val());
                            $('#productTable tr:last td:eq(4)').html($("#priceShow").val());
                            $('#proDesShow').val("");
                            $('#proCodShow').val("");
                            $('#priceShow').val("");
                            $('#amountShow').val(1);
                            updateAll();
                        }
                    }
                });
            });
          
            $.validator.messages.max = "Stock superado";
            
            $.validator.addMethod("codePattern", function (value, element) {
                return /^[0-9]{3}-[0-9]{6}$/.test(value);
            }, "Patrón: [0-9]{3}-[0-9]{6}");
            
            $.validator.addMethod("verifiedValue", function (value, element) {
                return value != "";
            }, "Ingrese datos correctos");
            
            $.validator.addMethod("discountTop", function (value, element) {
                return value <= 100;
            }, "Descuento <= 100%");
            
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
                var total = ((1 - Number($('#porDes').val() / 100))*subTotal).toFixed(2);
                $('#facTot').val(total);

                if ($("#productTable tr").length > 1) {
                    $("#register").prop('disabled', false);
                } else {
                    $("#register").prop('disabled', true);
                }
            }
            
            function changeIcon() {
                if(codeCriteria) {
                    $('#iconCriteria').removeClass("fa-chevron-left").addClass("fa-chevron-right");
                    $('#proDesShow').attr('readOnly', false);
                    $('#proCodShow').attr('readOnly', true);                    
                    codeCriteria = false;
                } else {
                    $('#iconCriteria').removeClass("fa-chevron-right").addClass("fa-chevron-left");
                    $('#proCodShow').attr('readOnly', false);
                    $('#proDesShow').attr('readOnly', true);
                    codeCriteria = true;
                }
                
                $('#proDesShow').val("");
                $('#proCodShow').val("");
                $('#priceShow').val("");
                $('#amountShow').val(1);
            }
            
            function changeClientIcon() {                
                if(codeClientCriteria) {
                    $('#iconClientCriteria').removeClass("fa-chevron-left").addClass("fa-chevron-right");
                    $('#cliCodShow').attr('readOnly', true);
                    $("#tipoClienteCode").prop('disabled', true);
                    $('#cliDesShow').attr('readOnly', false); 
                    $("#desClienteCode").prop('disabled', false);
                    codeClientCriteria = false;
                    changeClientDescription();
                } else {
                    $('#iconClientCriteria').removeClass("fa-chevron-right").addClass("fa-chevron-left");
                    $('#cliCodShow').attr('readOnly', false);
                    $("#tipoClienteCode").prop('disabled', false);
                    $('#cliDesShow').attr('readOnly', true); 
                    $("#desClienteCode").prop('disabled', true);
                    $("#desClienteCode").val("1");                    
                    codeClientCriteria = true;
                    changeClientCode();
                }
                
                $('#cliCodShow').val("");
                $('#cliDesShow').val("");
            }
            
            function changeClientCode() {
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchClient", {
                            action: "tipo",
                            tipCliCod: $("#tipoClienteCode").val()
                        }
                    ).done(function (data) {
                        if (data.clients != null) {
                            var clientsCodes = new Array();
                            data.clients.forEach(function(client) {
                                clientsCodes.push(client.cliCod);
                            });
                            
                            $("#cliCodShow").autocomplete({
                                source: clientsCodes
                            });
                        }                        
                    });
            } 
            
            function changeClientDescription() {
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchClient", {
                            action: "descripcion"
                        }
                    ).done(function (data) {
                        if (data.clients != null) {
                            if($("#desClienteCode").val() == "1") { //Razón Social
                                var clientsRS = new Array();
                                data.clients.forEach(function(client) {
                                    clientsRS.push(client.cliRazSoc);
                                });
                                
                                $("#cliDesShow").autocomplete({
                                    source: clientsRS
                                });
                            } else if($("#desClienteCode").val() == "2") { //Nombre Comercial
                                var clientsNC = new Array();
                                data.clients.forEach(function(client) {
                                    clientsNC.push(client.cliNomCom);
                                });
                                
                                $("#cliDesShow").autocomplete({
                                    source: clientsNC
                                });
                            }                            
                        }                        
                    });
            } 
            
            function changeDiscount() {
                var total = ((1 - Number($('#porDes').val() / 100))*Number($('#facSub').val())).toFixed(2);
                $('#facTot').val(total);
            }
            
            $('#porDes').on('change', function() {
                changeDiscount();
            });
            
            $('#porDes').keyup(function () {
                changeDiscount();
            });
            
            $('#tipoClienteCode').on('change', function() {
                changeClientCode();
                $("#cliCodShow").val("");
                $("#cliDesShow").val("");
            });
            
            $('#desClienteCode').on('change', function() {
                changeClientDescription();
                $("#cliCodShow").val("");
                $("#cliDesShow").val("");
            });
                        
            $("#proCodShow").autocomplete({
                source: productCodes
            });

            $("#proDesShow").autocomplete({
                source: productDescriptions
            });

            $('#proCodShow').keyup(function () {
                if(codeCriteria) {
                    $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchProduct", {
                            proCod: $("#proCodShow").val(),
                            proDet: ""
                        }
                    ).done(function (data) {
                            if (data.proCod != null) {
                                $("#proDesShow").val(data.proDet);
                                $("#priceShow").val(data.proPreUni);
                                $('#amountShow')[0].max = data.proStk;
                                $('#unitShow').val(data.proUnit);
                            }
                            else {
                                $("#proDesShow").val("Desconocido");
                            }
                        });
                }
            });
            
            $('#proDesShow').keyup(function () {
                if(!codeCriteria) {
                    $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchProduct", {
                            proCod: "",
                            proDet: $("#proDesShow").val()
                        }
                    ).done(function (data) {
                            if (data.proCod != null) {
                                $("#proCodShow").val(data.proCod);
                                $("#priceShow").val(data.proPreUni);
                                $('#amountShow')[0].max = data.proStk;
                                $('#unitShow').val(data.proUnit);
                            }
                            else {
                                $("#proCodShow").val("Desconocido");
                            }
                        });
                }
            });

            $('#cliCodShow').keyup(function () {
                if(codeClientCriteria) {
                    $.post(
                            "${pageContext.request.contextPath}/secured/ventas/searchClient", {
                                action: "tipoSearch",
                                tipCliCod: $("#tipoClienteCode").val(),
                                cliCod: $("#cliCodShow").val()
                            }
                        ).done(function (data) {
                                if(data.cliCod != null) {
                                    $("#facCli").val(data.cliCod);
                                    $("#cliDesShow").val(data.cliRazSoc);                                      
                                } else {
                                    $("#facCli").val("");
                                    $("#cliDesShow").val("Desconocido");
                                }
                            });
                }
            });    
            
            $('#cliDesShow').keyup(function () {
                if(!codeClientCriteria) {
                    $.post(
                            "${pageContext.request.contextPath}/secured/ventas/searchClient", {
                                action: "desSearch",
                                tipCliDes: $("#desClienteCode").val(),
                                cliDes: $("#cliDesShow").val()
                            }
                        ).done(function (data) {
                                if(data.cliCod != null) {
                                    $("#facCli").val(data.cliCod);
                                    $("#cliCodShow").val(data.cliCod);    
                                    $("#tipoClienteCode").val(data.tipCliCod);                                    
                                } else {
                                    $("#facCli").val("");
                                    $("#cliCodShow").val("Desconocido");
                                }
                            });
                }
            });  
            
            $("#registerBill").validate({
                ignore: "",
                rules: {
                    facVenCabCod: {
                        required: true,
                        codePattern: true
                    },
                    cliCod: {
                        verifiedValue: true,
                        required: true
                    }, 
                    facVenCabFecEmi: {
                        required: true
                    },
                    facVenCabFecVen: {
                        required: true
                    },
                    facVenPorDes: {
                        required: true
                    }
                },
                messages: {
                    facVenCabCod: {
                        required: "Ingrese el código de la factura"
                    },
                    cliCod: {
                        required: "Ingrese cliente válido",
                    },
                    facVenCabFecEmi: {
                        required: "Seleccione una fecha"
                    },
                    facVenCabFecVen: {
                        required: "Seleccione una fecha"
                    },
                    facVenPorDes: {
                        required: "Considere descuento 0"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });  
        </script>
    </jsp:attribute>
</minierptemplate:template>
