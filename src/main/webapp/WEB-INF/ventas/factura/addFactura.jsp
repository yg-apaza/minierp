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
                    <div class="col-md-4 col-md-offset-4"><br>
                        <div class="col-md-6">
                            <div class="form-group input-group" >
                                <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                <input type="text" class="form-control" name="usuCod" value="${usuario.usuCod}" readonly>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group input-group" >
                                <span class="input-group-addon"><i class="fa fa-home"></i></span>
                                <input type="text" class="form-control" name="sucDes" value="${usuario.enP1mSucursal.sucCod}" readonly>
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
                                    <div class="col-xs-12 col-md-8">
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
                                                    <input class="form-control" type="text" name="cliApeMat" id="cliApeMatShow" placeholder="Apellido Paterno">
                                                    <span class="input-group-addon"></span>
                                                    <input class="form-control" type="text" name="cliApePat" id="cliApePatShow" placeholder="Apellido Materno">
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
                                    <div class="col-xs-12 col-md-4">
                                        <textarea class="form-control" rows="8" name="facVenCabObs" placeholder="Observaciones"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body">
                                <h4>Detalle de Venta</h4><br>
                                <div class="row">
                                    <div class="col-xs-12 col-md-12">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Clase</i></span>
                                                    <select class="form-control validate[required]" name="claProCod" id="classSelected" onchange="changingClasses()"> 
                                                        <c:forEach items="${clases}" var="clase">
                                                            <option value="${clase.claProCod}">${clase.claProDet}</option>
                                                        </c:forEach>
                                                    </select> 
                                                    <span class="input-group-addon"><i class="fa fa-sitemap"></i></span>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">SubClase</span>
                                                    <select class="form-control validate[required]" name="subClaProCod" id="subClassSelected" onchange="changingSubClasses()">
                                                        <c:forEach items="${subclases}" var="subclase">
                                                            <option value="${subclase.id.subClaProCod}">${subclase.subClaProDet}</option>
                                                        </c:forEach>
                                                    </select> 
                                                    <span class="input-group-addon"><i class="fa fa-tasks"></i></span>
                                                </div>
                                            </div> 
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Producto</i></span>
                                                    <select class="form-control validate[required]" name="proCod" id="productSelected">
                                                        <c:forEach items="${productos}" var="producto">
                                                            <option value="${producto.id.proCod}">${producto.proDet}</option>
                                                        </c:forEach>
                                                    </select> 
                                                    <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                    <input type="number" class="form-control" id="priceSelected" readOnly>                                                    
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">Cantidad</span>
                                                    <input type="number" class="form-control" id="amountSelected" min="0" step="any" value="0" name="canPro">
                                                    <span class="input-group-addon"><i class="fa fa-gear"></i></span>
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
            $(document).ready(function () {
                changingClasses();
            });

            $(document).ready(function () {
                changingSubClasses();
            });

            $(document).ready(function () {
                putPrice();
            });

            function putPrice() {
                if ($('#productSelected')[0].value != "") {
                    var codeCla = Number($("#classSelected").val());
                    var codeSub = Number($("#subClassSelected").val());
                    var codePro = Number($("#productSelected").val());
                    var tag = true;
            <c:forEach items="${productos}" var="product">
                    if ((${product.id.claProCod} == codeCla) && (${product.id.subClaProCod} == codeSub) && (${product.id.proCod} == codePro)) {
                        tag = false;
                        var price = Number(${product.proPreUni});
                        price.toFixed(2)
                        $('#priceSelected').val(price);
                        $('#amountSelected')[0].max = ${product.proStk - product.proStkPreVen};
                    }
            </c:forEach>
                    if (tag) {
                        $('#priceSelected').val("");                        
                    }
                    $('#amountSelected').val(0);
                }
            }

            function changingClasses() {
                $('#subClassSelected').empty();
                var code = Number($("#classSelected").val());
                var tag = true;
            <c:forEach items="${subclases}" var="subclass">
                if (${subclass.id.claProCod} == code) {
                    tag = false;
                    $('#subClassSelected').append($('<option>', {
                        value: "${subclass.id.subClaProCod}",
                        text: "${subclass.subClaProDet}"
                    }));
                }
            </c:forEach>
                if (tag) {
                    $('#subClassSelected').append($('<option>', {
                        value: "",
                        text: "No existen subclases"
                    }));
                    $('#priceSelected').val("");
                    $('#amountSelected').val("");
                }
                changingSubClasses();
            }

            function changingSubClasses() {
                $('#productSelected').empty();
                var codeCla = Number($("#classSelected").val());
                var codeSub = Number($("#subClassSelected").val());
                var tag = true;
            <c:forEach items="${productos}" var="product">
                if ((${product.id.claProCod} == codeCla) && (${product.id.subClaProCod} == codeSub)) {
                    tag = false;
                    $('#productSelected').append($('<option>', {
                        value: "${product.id.proCod}",
                        text: "${product.proDet}"
                    }));
                }
            </c:forEach>
                if (tag) {
                    $('#productSelected').append($('<option>', {
                        value: "",
                        text: "No existen productos"
                    }));
                    $('#priceSelected').val("");
                    $('#amountSelected').val("");
                } else {
                    putPrice();
                }
            }

            $.validator.messages.max = "Stock superado";
            
            var idRows = new Array();
            
            $(document).ready(function () {
                $('#addDetail').on('click', function () {
                    if ($('#classSelected').val() == '') {
                        $("#errorMessage").text("No se ha seleccionado una clase de producto. Para añadir un nuevo detalle de venta este campo es necesario");
                        $('#errorMessageModal').modal('show'); 
                    } else if ($('#subClassSelected').val() == '') {
                        $("#errorMessage").text("No se ha seleccionado una subclase de producto, debido a que la clase de producto seleccionada no posee subclases. Seleccione otra clase para añadir un nuevo detalle de venta");                        
                        $('#errorMessageModal').modal('show');
                    } else if ($('#productSelected').val() == '') {
                        $("#errorMessage").text("No se ha seleccionado ningún producto, debido a que la subclase de producto seleccionada no posee productos. Seleccione otra subclase para añadir un nuevo detalle de venta");
                        $('#errorMessageModal').modal('show');
                    } else if (!$('input[name="canPro"]').valid()) {
                        $("#errorMessage").text("Se ha sobrepasado el stock disponible del producto seleccionado. Seleccione otro o reduzca la cantidad pedida");
                        $('#errorMessageModal').modal('show');
                    } else {
                        var idRow = $("#classSelected").val() + "-" + $("#subClassSelected").val() + "-" + $("#productSelected").val();
                        var finalValidation = true;
                        $("#productTable tr").find('td:eq(0)').each(function () {
                            if(idRow == $(this).html()) {
                                finalValidation = false;
                                $("#errorMessage").text("El producto ya ha sido ingresado en la descripción.");
                                $('#errorMessageModal').modal('show');
                                return false;
                            }
                        });
                        
                        if(finalValidation) {
                            $('#productTable tbody').append('<tr align="center"><td width="20%"></td><td width="10%"></td><td width="55%"></td><td width="10%"></td><td width="5%"><button type="button" class="btnDelete btn btn-danger")><i class="fa fa-trash-o fa-1x"></i></button></td></tr>');
                            $('#productTable tr:last td:eq(0)').html($("#classSelected").val() + "-" + $("#subClassSelected").val() + "-" + $("#productSelected").val());
                            $('#productTable tr:last td:eq(1)').html($("#amountSelected").val());
                            $('#productTable tr:last td:eq(2)').html($("#productSelected option:selected").text());
                            $('#productTable tr:last td:eq(3)').html($("#priceSelected").val());               
                            updateAll();
                        }                              
                    }
                });
            });

            $(document).ready(function () {
                $('#productSelected').change(putPrice);
            });

            function getClient(tableID) {
                try {
                    var table = document.getElementById(tableID);
                    var rowCount = table.rows.length;

                    for (var i = 1; i < rowCount; i++) {
                        var row = table.rows[i];
                        var chkbox = row.cells[0].childNodes[1];
                        if (true == chkbox.checked) {
                            $('#clienteCodigo').val(row.cells[1].childNodes[0].data);
                            $('#clientCode').val(row.id);
                            break;
                        }
                    }
                } catch (e) {
                    alert(e);
                }
            }
           
            $(document).ready(function(){
                $("#productTable").on('click','.btnDelete',function(){
                    $(this).closest('tr').remove();
                    updateAll();
                });
            });
            
            function updateAll() {
                var productsCodes = new Array();
                var amounts = new Array();
                var prices = new Array();
                var subTotal = 0;
                $("#productTable tbody tr").each(function () {
                    productsCodes.push($(this)[0].childNodes[0].textContent);
                    amounts.push($(this)[0].childNodes[1].textContent);
                    prices.push($(this)[0].childNodes[3].textContent);                    
                    subTotal += Number($(this)[0].childNodes[1].textContent)*Number($(this)[0].childNodes[3].textContent);
                });
                $('#proCodes').val(productsCodes);
                $('#proAmo').val(amounts);
                $('#proPrices').val(prices);                
                subTotal = (subTotal*(1 + Number($('#facIgv').val()/100))).toFixed(2);
                $('#facSub').val(subTotal);
                var total =  (subTotal - Number($('#facDes').val())).toFixed(2);
                $('#facTot').val(total);
                
                activateRegister();
            }
            
            $(document).ready(function () {
                $("#facDes").change(function () {
                    var total = (Number($('#facSub').val()) - Number($('#facDes').val())).toFixed(2)
                    $('#facTot').val(total);
                });
            });
            
            $.validator.addMethod("codePattern", function (value, element) {
                return /^[0-9]{3}-[0-9]{6}$/.test(value);
            }, "Patrón: [0-9]{3}-[0-9]{6}");
            
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
                    facVenCabFec: {
                        required: true
                    }
                },
                messages: {
                    facVenCabCod: {
                        required: "Ingrese el código de la factura"
                    },
                    cliCod: {
                        required: "Seleccione un cliente",
                        digits: "Ingresar solo dígitos",
                        minlength: "Mínimo 8 digitos",
                        maxlength: "Máximo 11 digitos"
                    },
                    facVenCabFec: {
                        required: "Seleccione una fecha"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
            
            function activateRegister() {
                if($("#productTable tr").length > 1) {
                    $("#register").prop('disabled', false);
                } else {
                    $("#register").prop('disabled', true);
                }
            }
            
            var clientDocs = new Array();
            <c:forEach items="${documentos}" var="d">
                clientDocs.push("${d.docCliNum}");
            </c:forEach>
            $("#cliCodShow").autocomplete({
                source: clientDocs
            });
            
            $('#cliCodShow').keyup(function() {
                $.post(
                    "${pageContext.request.contextPath}/secured/ventas/factura/busquedaCliente",
                    {docCliNum: $("#cliCodShow").val()})
                .done(function(data) {
                    if(data.cliCod != null)
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
        </script>
    </jsp:attribute>
</minierptemplate:template>
