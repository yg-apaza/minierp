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
                <div class="row">
                    <div class="col-md-4">
                        <br><h1 class="page-header"> Factura de Venta</h1>
                    </div>
                    <div class="col-md-6 col-md-offset-2"><br>
                        <div class="col-md-6">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                <input type="hidden" class="form-control" name="usuCod" value="${usuario.usuCod}" readonly>
                                <input type="text" class="form-control" value="${usuario.usuNom} ${usuario.usuApePat}" readonly>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group input-group">
                                <span class="input-group-addon"><i class="fa fa-home"></i></span>
                                <input type="text" class="form-control" value="${punto.id.sucCod}-${punto.id.punVenCod}" readonly>
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
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    <input type="text" class="form-control" name="facVenCabCod" placeholder="Número de Factura">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    <input type="date" class="form-control" name="facVenCabFec">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">Cliente</span>
                                                    <input class="form-control" type="text" name="cliCod" id="cliCodShow" placeholder="Nro de documento">
                                                    <span class="input-group-addon"></span>
                                                    <input class="form-control" type="text" name="cliNom" id="cliNomShow" placeholder="Nombres">
                                                    <span class="input-group-addon"></span>
                                                    <input class="form-control" type="text" name="cliApePat" id="cliApePatShow" placeholder="Apellido Paterno">
                                                    <span class="input-group-addon"></span>
                                                    <input class="form-control" type="text" name="cliApeMat" id="cliApeMatShow" placeholder="Apellido Materno">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">IGV</span>
                                                    <input type="number" class="form-control" name="facVenCabIgv" value="${empresa.empIgv}" id="facIgv" readOnly>
                                                </div>
                                            </div>
                                            <div class="col-md-8">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                    <select class="form-control" name="monCod">
                                                        <c:forEach items="${monedas}" var="moneda">
                                                            <option value="${moneda.monCod}">${moneda.monDet}</option>
                                                        </c:forEach>
                                                    </select>                                                   
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
                                        <textarea class="form-control" rows="8" name="facVenCabObs" placeholder="Observaciones"></textarea>
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
                                                    <input class="form-control" type="text" name="proCod" id="proCodShow" placeholder="Código" size="60" readOnly>
                                                    <span class="input-group-addon" onclick="changeIcon()"><i class="fa" id="iconCriteria"></i></span>
                                                    <input class="form-control" type="text" name="proDes" id="proDesShow" placeholder="Descripción" size="100" readOnly>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                    <input type="number" class="form-control" id="priceShow" readOnly>                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">Cant.</span>
                                                    <input type="number" class="form-control" id="amountShow" min="0" step="any" value="0" name="canPro">
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
                                                <th>Descripción del Producto</th>
                                                <th colspan="2">Precio Unitario</th>
                                            </tr>
                                        </thead>
                                        <tbody>                                        
                                        </tbody>
                                    </table>
                                </div>
                                <input type="hidden" class="form-control" name="productsAmounts" id="proAmo">
                                <input type="hidden" class="form-control" name="productsDescriptions" id="proDes">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">SubTotal + IGV</span>
                                            <input type="number" class="form-control" name="facVenCabSubTot" id="facSub" value="0" readonly>
                                            <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Descuento</span>
                                            <input type="number" class="form-control" name="facVenCabDes" min="0" step="any" value="0" id="facDes">
                                            <span class="input-group-addon"><i class="fa fa-sort-amount-asc"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
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
            var codeCriteria = true;
            var clientDocs = new Array();
            var productCodes = new Array();
            var productDescriptions = new Array();
            
            <c:forEach items="${documentos}" var="d">
                clientDocs.push("${d.docCliNum}");
            </c:forEach>
            <c:forEach items="${productos}" var="p" varStatus="loop">
                productCodes.push("${p.id.claProCod}-${p.id.subClaProCod}-${p.id.proCod}");
                productDescriptions.push("${p.proDet}");
            </c:forEach>
            
            $(document).ready(function () {
                $("#facDes").change(function () {
                    var total = (Number($('#facSub').val()) - Number($('#facDes').val())).toFixed(2)
                    $('#facTot').val(total);
                });
            });

            $(document).ready(function () {
                $("#productTable").on('click', '.btnDelete', function () {
                    $(this).closest('tr').remove();
                    updateAll();
                });
            });

            $(document).ready(function () {
                $("#iconCriteria").addClass("fa-chevron-left");
                $('#proCodShow').attr('readOnly', false);
                $('#proDesShow').attr('readOnly', true);                
            });
            
            $(document).ready(function () {
                $('#addDetail').on('click', function () {
                    if ($('#proCodShow').val() == "Desconocido" || $('#proDesShow').val() == "Desconocido") {
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
                            $('#productTable tbody').append('<tr align="center"><td width="20%"></td><td width="10%"></td><td width="55%"></td><td width="10%"></td><td width="5%"><button type="button" class="btnDelete btn btn-danger")><i class="fa fa-trash-o fa-1x"></i></button></td></tr>');
                            $('#productTable tr:last td:eq(0)').html($("#proCodShow").val());
                            $('#productTable tr:last td:eq(1)').html($("#amountShow").val());
                            $('#productTable tr:last td:eq(2)').html($("#proDesShow").val());
                            $('#productTable tr:last td:eq(3)').html($("#priceShow").val());
                            updateAll();
                        }
                    }
                });
            });
          
            $.validator.messages.max = "Stock superado";
            
            $.validator.addMethod("codePattern", function (value, element) {
                return /^[0-9]{3}-[0-9]{6}$/.test(value);
            }, "Patrón: [0-9]{3}-[0-9]{6}");
            
            function updateAll() {
                var productsCodes = new Array();
                var amounts = new Array();
                var prices = new Array();
                var subTotal = 0;
                $("#productTable tbody tr").each(function () {
                    productsCodes.push($(this)[0].childNodes[0].textContent);
                    amounts.push($(this)[0].childNodes[1].textContent);
                    prices.push($(this)[0].childNodes[3].textContent);
                    subTotal += Number($(this)[0].childNodes[1].textContent) * Number($(this)[0].childNodes[3].textContent);
                });
                $('#proCodes').val(productsCodes);
                $('#proAmo').val(amounts);
                $('#proPrices').val(prices);
                subTotal = (subTotal * (1 + Number($('#facIgv').val() / 100))).toFixed(2);
                $('#facSub').val(subTotal);
                var total = (subTotal - Number($('#facDes').val())).toFixed(2);
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
                    $('#proCodShow').val("");
                    $('#proDesShow').val("");
                    $('#priceShow').val("");
                    $('#amountShow').val(0);
                    codeCriteria = false;
                } else {
                    $('#iconCriteria').removeClass("fa-chevron-right").addClass("fa-chevron-left");
                    $('#proCodShow').attr('readOnly', false);
                    $('#proDesShow').attr('readOnly', true);
                    $('#proDesShow').val("");
                    $('#proCodShow').val("");
                    $('#priceShow').val("");
                    $('#amountShow').val(0);
                    codeCriteria = true;
                }
            }
                            
            $("#cliCodShow").autocomplete({
                source: clientDocs
            });
            
            $("#proCodShow").autocomplete({
                source: productCodes,
            });

            $("#proDesShow").autocomplete({
                source: productDescriptions
            });

            $('#proCodShow').keyup(function () {
                if(codeCriteria) {
                    $.post(
                        "${pageContext.request.contextPath}/secured/ventas/factura/searchProduct", {
                            proCod: $("#proCodShow").val(),
                            proDet: ""
                        }
                    ).done(function (data) {
                            if (data.proCod != null) {
                                $("#proDesShow").val(data.proDet);
                                $("#priceShow").val(data.proPreUni);
                                $('#amountShow')[0].max = data.proStk;
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
                        "${pageContext.request.contextPath}/secured/ventas/factura/searchProduct", {
                            proCod: "",
                            proDet: $("#proDesShow").val()
                        }
                    ).done(function (data) {
                            if (data.proCod != null) {
                                $("#proCodShow").val(data.proCod);
                                $("#priceShow").val(data.proPreUni);
                                $('#amountShow')[0].max = data.proStk;
                            }
                            else {
                                $("#proCodShow").val("Desconocido");
                            }
                        });
                }
            });

            $('#cliCodShow').keyup(function () {
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/factura/busquedaCliente",
                        {docCliNum: $("#cliCodShow").val()})
                        .done(function (data) {
                            if (data.cliCod != null)
                            {
                                $("#cliNomShow").val(data.cliNom);
                                $("#cliApePatShow").val(data.cliApePat);
                                $("#cliApeMatShow").val(data.cliApeMat);                                
                            }
                            else
                            {
                                $("#cliNomShow").val("Desconocido");
                                $("#cliApePatShow").val("Desconocido");
                                $("#cliApeMatShow").val("Desconocido");
                            }
                        });
            });    
            
            $("#registerBill").validate({
                rules: {
                    facVenCabCod: {
                        required: true,
                        codePattern: true
                    },
                    cliCod: {
                        required: true,
                        digits: true,
                        minlength: "8",
                        maxlength: "11"
                    },
                    cliNom: {
                        required: true,
                    },
                    cliApePat: {
                        required: true,
                    },
                    cliApeMat: {
                        required: true,
                    },
                    facVenCabFec: {
                        required: true
                    }
                },
                messages: {
                    facVenCabCod: {
                        required: "Ingrese el código de la factura"
                    },
                    cliCod: {
                        required: "Ingrese código de cliente",
                        digits: "Ingresar solo dígitos",
                        minlength: "Mínimo 8 digitos",
                        maxlength: "Máximo 11 digitos"
                    },
                    cliNom: {
                        required: "Ingrese nombre de cliente"
                    },
                    cliApePat: {
                        required: "Ingrese apellido paterno"
                    },
                    cliApeMat: {
                        required: "Ingrese apellido materno"
                    },
                    facVenCabFec: {
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
