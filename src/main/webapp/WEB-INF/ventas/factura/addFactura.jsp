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
            <div class="row">
                <div class="col-lg-12">
                    <br><h1 class="page-header"> Factura de Venta</h1>
                </div>
            </div>
            <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/ventas/factura/addFactura">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h4>Información General</h4>
                                <div class="col-md-4">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><i class="fa fa-shopping-cart"></i></span>
                                        <input type="text" class="form-control" name="facVenCabCod" placeholder="Número de Factura" pattern="[0-9]{3}-[0-9]{6}">
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        <input type="date" class="form-control" name="facVenCabFec">
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
                                <div class="col-md-6">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                        <input type="text" class="form-control" name="usuCod" value="${usuario.usuCod}" readonly>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><i class="fa fa-globe"></i></span>
                                        <input type="hidden" class="form-control" name="clientCode" id="clientCod">
                                        <input type="text" class="form-control" id="cliCod" readonly>
                                        <span class="input-group-addon">
                                            <a href="#" data-toggle="modal" data-target="#searchClient">
                                                <i class="fa fa-pencil-square-o" style="color: black;"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                                <div align="right">
                                    <button type="button" class="btn btn-success" onclick="addRow('productTable')"><i class="fa fa-plus-square-o fa-2x"></i></button>
                                    <button type="button" class="btn btn-danger" onclick="deleteRow('productTable')"><i class="fa fa-trash-o fa-2x"></i></button>
                                </div>
                            </div>
                            <div class="panel-body">
                                <table width="100%" class="table table-striped table-bordered table-hover" id="productTable">
                                    <h4>Detalle de Venta</h4>
                                    <thead>
                                        <tr>
                                            <th colspan="2" >Cantidad</th>
                                            <th>Descripción del Producto</th>
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
                                                    <input type="number" class="form-control" min="0" step="any" value="0">
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
                                                    <input type="number" class="form-control" min="0.0" step="any" readOnly>
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
                                <div>
                                    <div class="col-xs-12 col-sm-6 col-md-8">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                Observaciones<br><br><textarea class="form-control" rows="2" name="facComCabObs" placeholder="No hay comentarios"></textarea>
                                            </div>
                                            <div class="panel-body">
                                                <div class="col-md-12">
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
                                        <td>${c.cliNom} ${c.cliNom} ${c.cliApeMat}</td>
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
            var precios = new Array();
            var cantidades = new Array();
            var libres = new Array();
            var codigos = new Array();
            var descripciones = new Array();
            var seleccionados = new Array();
            <c:forEach items="${productos}" var="producto">
                precios.push(${producto.proPreUni});
                cantidades.push(${producto.proStkPreVen});
                libres.push(${producto.proStkPreVen});
                codigos.push("${producto.id.proCod}/${producto.id.subClaProCod}/${producto.id.claProCod}");
                descripciones.push("${producto.proDet}");
                seleccionados.push(false);
            </c:forEach>
            
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

            function getClient(tableID) {
                try {
                    var table = document.getElementById(tableID);
                    var rowCount = table.rows.length;

                    for (var i = 1; i < rowCount; i++) {
                        var row = table.rows[i];
                        var chkbox = row.cells[0].childNodes[1];
                        if (true == chkbox.checked) {
                            $('#cliCod').val(row.cells[1].childNodes[0].data);
                            $('#clientCod').val(row.id);
                            break;
                        }
                    }
                } catch (e) {
                    alert(e);
                }
            }

            function updateDescription() {
                try {
                    var amounts = new Array();
                    var descriptions = new Array();
                    var table = document.getElementById('productTable');
                    var rowCount = table.rows.length;
                    var subtotal = 0;

                    for (var i = 1; i < rowCount; i++) {
                        var row = table.rows[i];
                        var index = row.cells[2].childNodes[1].selectedIndex;
                        row.cells[1].childNodes[1].childNodes[3].max = libres[index];
                        row.cells[3].childNodes[1].childNodes[3].value = precios[index];
                        descriptions.push(row.cells[2].childNodes[1].value);
                        var quant = row.cells[1].childNodes[1].childNodes[3].value;   
                        libres[index] = cantidad[index]-quant;
                        amounts.push(quant);
                        row.cells[4].childNodes[1].childNodes[3].value = quant * precios[index];
                        subtotal += quant * precios[index];
                    }
                    $('#facSub').val(subtotal);
                    $('#facTot').val((subtotal * (1 + $('#facIgv').val()) / 100) - ($('#facDes').val()));
                    $('#proAmo').val(amounts);
                    $('#proDes').val(descriptions);                    
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
        </script>
    </jsp:attribute>
</minierptemplate:template>