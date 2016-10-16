<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">       
        <div id="pagel-body">
            <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/ventas/factura/addFactura">
                <div class="row">
                    <div class="col-md-4"><br>
                        <h1 class="page-header"> Factura de Venta</h1>
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
                                            <div class="col-md-5">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    <input type="text" class="form-control" name="facVenCabCod" placeholder="Número de Factura" pattern="[0-9]{3}-[0-9]{6}">
                                                </div>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Cliente</span>
                                                    <input type="hidden" class="form-control" name="cliCod" id="clientCode">
                                                    <input type="text" class="form-control" id="clienteCodigo" readonly>
                                                    <span class="input-group-addon">
                                                        <a href="#" data-toggle="modal" data-target="#searchClient">
                                                            <i class="fa fa-pencil-square-o" style="color: black;"></i>
                                                        </a>
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">IGV</span>
                                                    <input type="number" class="form-control" name="facVenCabIgv" value="${empresa.empIgv}" id="facIgv" readOnly>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                    <input type="date" class="form-control" name="facVenCabFec">
                                                </div>
                                            </div>
                                            <div class="col-md-5">
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
                                    <div class="col-xs-6 col-md-4">
                                        <textarea class="form-control" rows="6" name="facVenCabObs" placeholder="Observaciones"></textarea>
                                    </div>
                                </div>                             
                            </div>                          
                            <div class="panel-body">
                                <h4>Detalle de Venta</h4><br>
                                <form id="detailsForm">
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
                                                    <button type="button" class="btn btn-success" id="addDetail" onclick="addNewDetail()"><i class="fa fa-plus-square-o fa-1x"></i></button>
                                                </div>
                                            </div>
                                        </div>                                    
                                    </div>
                                </form>
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
                                <input type="hidden" class="form-control" name="productsAmounts" id="proAmo">
                                <input type="hidden" class="form-control" name="productsDescriptions" id="proDes">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">SubTotal</span>
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
                                    <button type="submit" class="btn btn-primary">Registrar Factura</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="modal fade" id="searchClient">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">Buscar Cliente</h4>
                    </div>
                    <div class="modal-body">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="tableClients">
                            <thead>
                                <tr>
                                    <th colspan="2">Datos</th>
                                    <th>Teléfono</th>
                                    <th>Email</th>                                    
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${clientes}" var="c">
                                    <tr id="${c.cliCod}">
                                        <td align="center">
                                            <input type="checkbox">
                                        </td>
                                        <td>${c.cliNom} ${c.cliApePat} ${c.cliApeMat}</td>
                                        <td>${c.cliTelCel}</td>
                                        <td>${c.cliEmail}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>                            
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                        <button type="button" class="btn btn-success" data-dismiss="modal" onclick="getClient('tableClients')">Aceptar</button>
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
                            $('#priceSelected').val(${product.proPreUni});
                            $('#amountSelected')[0].max = ${product.proStk};
                        }
                    </c:forEach>
                    if (tag) {
                        $('#priceSelected').val("");
                    }
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
                } else {
                    putPrice();
                }
            }

            $.validator.messages.max = "Stock superado";
            
            $(document).ready(function () {
                $('#addDetail').on('click', function () {
                    $('input[name="canPro"]').valid();
                });
            });
            
            $(document).ready(function () {
                $('#productSelected').change(putPrice);
            });
            
            /*$(document).ready(function () {
                if($('#productSelected').val()==''){
                    alert('Please, choose an option');
                    return false;
                }
            });*/
            
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

            function addNewDetail() {
                $('#productTable tbody').append('<tr align="center"><td width="20%">First Value</td><td width="10%">Second Value</td><td width="55%">Third Value</td><td width="10%">Fourth Value</td><td width="5%"><button type="button" class="btn btn-danger" onclick="deleteRow()"><i class="fa fa-trash-o fa-1x"></i></button></td></tr>');         
            }
        </script>
    </jsp:attribute>
</minierptemplate:template>