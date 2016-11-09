<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Compras - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <div class="form-group">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Factura de Compra</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <form role=form" method="get" action="${pageContext.request.contextPath}/secured/compras/factura/addFactura">
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <button type="submit" class="btn btn-success">Crear Factura <i class="fa fa-plus"></i></button>
                                </cc:if>

                        </form>
                    </div>
                    <div class="col-lg-4">
                        <div class="col-lg-5">
                            <label>Flujo Efectivo</label>
                        </div> 
                        <div class="col-lg-7">
                            <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=flujoefectivo&&jdbc=true&&key=null&&value=null" class="btn btn-danger" >
                                <i class="fa fa-file-pdf-o"></i>
                            </a>

                            <a  href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=flujoefectivo&&jdbc=true&&key=null&&value=null" class="btn  btn-primary" >
                                <i class="fa fa-file-word-o"></i>
                            </a>
                        </div>
                    </div>
                </div><br>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="table-responsive">    
                            <table class="table table-striped table-bordered table-hover" id="tablePurchases">
                                <thead>
                                    <tr>
                                        <th>Fecha</th>
                                        <th>Factura</th>
                                        <th>Proveedor</th>
                                        <th>Importe</th>
                                        <th>Tipo</th>
                                        <th>Vistas</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${facturasCompra}" var="c">
                                        <tr>
                                            <td width="10%" align="center">${c.facComCabFecEmi}</td>
                                            <td width="15%" align="center">${c.facComCabCod}</td>
                                            <td width="40%">${c.enP4mProveedor.prvDet}</td>
                                            <td width="10%" align="center">${c.facComCabTot}</td>                            
                                            <td width="15%" align="center">${c.taGzzTipoPagoFactura.tipPagDet}</td>
                                            <td width="10%" align="center">
                                                <a onclick='viewPurchaseBill("${c.facComCabCod}")'>
                                                    <i class="fa fa-list-alt fa-2x" style="color: black;"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>  
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <a href="" class="btn btn-outline btn-danger">
                            <i class="fa fa-file-pdf-o"></i>
                            Descargar Registro [PDF]
                        </a>
                    </div>
                    <div class="col-lg-4"></div>        
                </div>
            </div>
        </div>
        <div class="modal fade" id="viewPurchaseBill">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3 class="modal-title">Factura de Compra</h3>
                    </div>
                    <div class="modal-body">   
                        <div class="panel-body">
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#general" data-toggle="tab">Información General</a></li>
                                <li><a href="#detail" data-toggle="tab">Detalle de Compra</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="general"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="col-xs-12 col-md-6">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Factura</span>
                                                <input type="text" class="form-control" id="facComCabCod" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-6">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Almacenero</span>
                                                <input type="text" class="form-control" id="facComCabUsuNom" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Proveedor</span>
                                                <input type="text" class="form-control" id="facComCabPrvNomCom" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-shopping-cart"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="detail"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="facComDetPro">
                                                <thead align="center">
                                                    <tr >
                                                        <th>Cant.</th>
                                                        <th>Descripción</th>
                                                        <th>Precio</th>
                                                        <th>Importe</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
        <div id="loading" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-body">
                        <p align="center">Cargando ... </p>
                    </div>
                </div>         
            </div>
        </div>
        <script>
            $(document).ready(function () {
                $('#tablePurchases').DataTable({
                    responsive: true
                });
            });
            
            function viewPurchaseBill(facComCabCod) {
                $("#loading").modal('show');
                $.post(
                        "${pageContext.request.contextPath}/secured/compras/searchBill", {
                            facComCabCod: facComCabCod
                        }
                ).done(function (data) {
                    $("#facComCabCod").val(data.cod);
                    $("#facComCabUsuNom").val(data.usuNom);
                    $("#facComCabPrvNomCom").val(data.pvrNomCom);                    
                    $('#facComDetPro').DataTable().clear().draw();
                    $('#facComDetPro').DataTable().destroy();
                    data.detailList.forEach(function (detail) {
                        $('#facComDetPro tbody').append('<tr><td width="16%" align="center"></td><td width="44%"></td><td width="20%" align="center"></td><td width="20%" align="center"></td></tr>');
                        $('#facComDetPro tr:last td:eq(0)').html(detail.detCan);
                        $('#facComDetPro tr:last td:eq(1)').html(detail.proDet);
                        $('#facComDetPro tr:last td:eq(2)').html(detail.valUni);
                        $('#facComDetPro tr:last td:eq(3)').html((Number(detail.detImp)).toFixed(2));
                    });
                    $('#facComDetPro').DataTable({
                        responsive: true
                    });
                    $("#loading").modal('hide');
                    $("#viewPurchaseBill").modal('show');
                });
            }
        </script>
    </jsp:attribute>
</minierptemplate:template>
