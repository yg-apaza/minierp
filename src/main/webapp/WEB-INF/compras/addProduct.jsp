<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Compras y Logística</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
        <div id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <br><h1 class="page-header"> Añadir Nuevo Producto</h1>
                </div>
            </div>
            <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/compras/registerPurchase">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h4>Información General</h4>
                                <div class="col-md-4">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><i class="fa fa-shopping-cart"></i></span>
                                        <input type="text" class="form-control" name="facComCabCod" placeholder="Número de Factura">
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
                                <div class="col-md-6">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                        <input type="text" class="form-control" name="usuCod" value="${usuario.usuCod}" readonly>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><i class="fa fa-globe"></i></span>
                                        <input type="hidden" class="form-control" name="supplierCode" id="proCod">
                                        <input type="text" class="form-control" id="supCod" readonly>
                                        <span class="input-group-addon">
                                            <a href="#" data-toggle="modal" data-target="#searchSupplier">
                                                <i class="fa fa-pencil-square-o" style="color: black;"></i>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                                <div align="right">
                                    <button type="button" class="btn btn-success" onclick="addRow('productTable')"><i class="fa fa-plus"></i></button>
                                    <button type="button" class="btn btn-danger" onclick="deleteRow('productTable')"><i class="fa fa-minus"></i></button>
                                </div>
                            </div>
                            <div class="panel-body">
                                <table width="100%" class="table table-striped table-bordered table-hover" id="productTable">
                                    <h4>Detalle de Compra</h4>
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
                                                    <input type="number" class="form-control" min="0.0" step="any" value="0.0">
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
    </jsp:attribute>
</minierptemplate:template>
