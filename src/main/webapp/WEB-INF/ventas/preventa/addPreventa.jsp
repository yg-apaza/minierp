<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Ventas - Preventa</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div id="panel-body">
            <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/ventas/preventa/addPreventa">
                <input type="hidden" class="form-control" name="productsAmounts" id="proAmo">
                <input type="hidden" class="form-control" name="productsCodes" id="proCodes">
                <input type="hidden" class="form-control" name="productsPrices" id="proPrices">
                <input class="hidden" type="text" name="cliCod" id="preCli">
                <div class="row">
                    <div class="col-md-8">
                        <br><h1 class="page-header">Preventa</h1>
                    </div>
                    <div class="col-md-4"><br>
                        <div class="form-group input-group">
                            <span class="input-group-addon">Vendedor</span>
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
                                            <input type="text" class="form-control" name="preVenCabCod" placeholder="Número de Preventa">
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Emisión</span>
                                            <input type="date" class="form-control" name="preVenCabFecEmi">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-md-4" >
                                        <div class="form-group input-group" >
                                                    <span class="input-group-addon">Moneda</i></span>
                                                    <select class="form-control" name="monCod">
                                                        <c:forEach items="${monedas}" var="moneda">
                                                            <option value="${moneda.monCod}">${moneda.monDet}</option>
                                                        </c:forEach>
                                                    </select>
                                                    <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                </div>
                                        
                                        
                                        <div class="form-group input-group" style='display:none;'>
                                            <span class="input-group-addon">Vencimiento</span>
                                            <input type="date" class="form-control" name="preVenCabFecVen">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-9">
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
                                            <div class="col-md-6" style='display:none;'>
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
                                            <div class="col-md-6" style='display:none;'>
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Plazo (días)</span>
                                                    <input type="number" class="form-control" name="preVenCabPla" value="1" min="1">
                                                    <span class="input-group-addon"><i class="fa fa-thumb-tack"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-3">                                        
                                        <textarea class="form-control" rows="5" name="preVenCabObs" placeholder="Observaciones"></textarea>
                                    </div>                                    
                                </div>
                            </div>
                            <div class="panel-body">
                                <h4>Detalle de Preventa</h4><br>
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
                                            <input type="number" class="form-control" id="tipDesVal" readonly>
                                            <span class="input-group-addon"><i class="fa fa-sort-amount-asc"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-md-2">                                        
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">IGV</span>
                                            <input type="number" class="form-control" name="preVenCabIgv" value="${empresa.empIgv}" id="preIgv" readOnly>
                                        </div>
                                    </div>
                                    <div class="col-md-4">      
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">SubTotal + IGV</span>
                                            <input type="number" class="form-control" name="preVenCabSubTot" id="preSub" value="0" readonly>
                                            <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-9">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Total</i></span>
                                            <input type="number" class="form-control" name="preVenCabTot" id="preTot" value="0" readonly>
                                            <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                        </div>
                                    </div>
                                </div>
                                <div align="right">
                                    <button type="submit" id="register" class="btn btn-primary" disabled>Registrar Preventa</button>
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
            var discounts = new Array();
            
            <c:forEach items="${productos}" var="p" varStatus="loop">
                productCodes.push("${p.id.claProCod}-${p.id.subClaProCod}-${p.id.proCod}");
                productDescriptions.push("${p.proDet}");
            </c:forEach>
            
            <c:forEach items="${tiposDescuentos}" var="t" varStatus="loop">
                discounts.push("${t.tipDesPor}");
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
                            $('#productTable tbody').append('<tr align="center"><td width="20%"></td><td width="10%"></td><td width="40%"></td><td width="15%"></td><td width="10%"></td><td width="5%"><button type="button" class="btnDelete btn btn-danger")><i class="fa fa-trash-o fa-1x"></i></button></td></tr>');
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
                console.log(value);
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
                subTotal = (subTotal * (1 + Number($('#preIgv').val() / 100))).toFixed(2);
                $('#preSub').val(subTotal);
                var total = ((1 - Number($('#tipDesVal').val() / 100))*subTotal).toFixed(2);
                $('#preTot').val(total);

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
                
                $('#proCodShow').val("");
                $('#proDesShow').val("");
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
                var index = $("#selectDiscount option:selected").index();
                $('#tipDesVal').val(discounts[index]);
                var total = ((1 - Number($('#tipDesVal').val() / 100))*Number($('#preSub').val())).toFixed(2);
                $('#preTot').val(total);
            }
            
            $('#selectDiscount').on('change', function() {
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
                                    $("#preCli").val(data.cliCod);
                                    $("#cliDesShow").val(data.cliRazSoc);                                      
                                } else {
                                    $("#preCli").val("");
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
                                    $("#preCli").val(data.cliCod);
                                    $("#cliCodShow").val(data.cliCod);    
                                    $("#tipoClienteCode").val(data.tipCliCod);                                    
                                } else {
                                    $("#preCli").val("");
                                    $("#cliCodShow").val("Desconocido");
                                }
                            });
                }
            });  
            
            $("#registerBill").validate({
                ignore: "",
                rules: {
                    preVenCabCod: {
                        required: true,
                        codePattern: true
                    },
                    cliCod: {
                        verifiedValue: true,
                        required: true
                    }, 
                    preVenCabFecEmi: {
                        required: true
                    }, 
                    preVenCabFecVen: {
                        required: true
                    }
                },
                messages: {
                    preVenCabCod: {
                        required: "Ingrese el código de la preventa"
                    },
                    cliCod: {
                        required: "Ingrese cliente válido",
                    },
                    preVenCabFecEmi: {
                        required: "Seleccione una fecha"
                    },
                    preVenCabFecVen: {
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
