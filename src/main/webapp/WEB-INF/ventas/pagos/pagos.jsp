<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Pagos</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">Pagos
                <!--
                <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#pagarModal"><i class="fa fa-plus"></i></a>
                <a href="#" class="btn btn-info btn-circle" data-toggle="modal" data-target="#modificarModal"><i class="fa fa-eye"></i></a>
                <a href="#" class="btn btn-info btn-circle" data-toggle="modal" data-target="#estadosModal"><i class="fa fa-eye"></i></a>-->
            </h1> 
            <!--<div class="row">
                <div class="col-sm-4">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=pdf&&report=puntodeventa" class="btn btn-outline btn-danger btn-lg btn-block">
                        <i class="fa fa-file-pdf-o"></i>
                        Reporte [PDF]
                    </a>   
                </div>
                <div class="col-sm-4">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=xls&&report=puntodeventa" class="btn btn-outline btn-success btn-lg btn-block">
                        <i class="fa fa-file-excel-o"></i>
                        Reporte [XLS]
                    </a>   
                </div>
                <div class="col-sm-4">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=doc&&report=puntodeventa" class="btn btn-outline btn-primary btn-lg btn-block">
                        <i class="fa fa-file-word-o"></i>
                        Reporte [DOC]
                    </a>
                </div>                
            </div> 
            <br>-->
            
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover " id="tablaCuotas">
                        <thead>
                            <tr>
                                <th>Cod. Factura</th>
                                <th>Total Cuotas</th>
                                <th>Cuotas Pagadas</th>
                                <th>Deuda Total</th>
                                <th>Deuda Pagada</th>
                                <th>Monto de Cuota</th>
                                <th>Fecha Inicio</th>
                                <th>Fecha Fin</th>
                                <th>Fecha Pago</th>
                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <th>Acciones</th>
                                </cc:if>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${cabeceraPagos}" var="c">
                                <tr>                            
                                    <td>${c.enP1mFacturaVentaCab.facVenCabCod}</td>
                                    <td>${c.pagCuoNum}</td>
                                    <td>${c.pagCuoNumPag}</td>
                                    <td>${c.pagCuoDeuTot}</td>
                                    <td>${c.pagCuoTotPag}</td>
                                    <td>${c.pagCuoMonXcuo}</td>
                                    <td>${c.pagCuoFecIni}</td>
                                    <td>${c.pagCuoFecFin}</td>
                                    <td>${c.pagCuoFecPag}</td>
                                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <td class="text-center">
                                        <!--
                                        <a href="#" data-toggle="modal" data-target="#modificarModal">
                                           <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                        </a>
                                        -->
                                        <a href="#" data-toggle="modal" data-target="#pagarModal" 
                                           data-faccab="${c.facVenCabCod}" 
                                           data-deutot="${c.pagCuoDeuTot}" data-deupag="${c.pagCuoTotPag}" 
                                           data-cuotot="${c.pagCuoNum}" data-cuopag="${c.pagCuoNumPag}"
                                           data-monpag="${c.pagCuoMonXcuo}">
                                            <i class="fa fa-dollar fa-2x" style="color: black;"></i>
                                        </a>
                                    </td>
                                    </cc:if>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <div id="modificarModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Número de Cuotas</h4>
                        </div>
                        <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/pagos">
                            <div class="modal-body">
                                <div class=form-horizontal>
                                    <input type="hidden" name="accion" value="update">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <label class="control-label">Cuotas</label>                                        
                                        </div>  
                                        <div class="col-sm-8">
                                            <input type="number" class="form-control" id="updateNumCuo"  min="0" step="any" value="0" name="numCuo">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-outline btn-success">Modificar</button>
                                <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <div id="pagarModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-md">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Realizar Pago</h4>
                        </div>
                        <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/pagos">
                            <div class="modal-body">
                                <div class=form-horizontal>
                                    <input type="hidden" name="accion" value="addPago">
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <label class="control-label">Código Factura</label>
                                            <input class="form-control" id="pagarFacCab"  name="facVenCabCod" readonly>
                                        </div>
                                        <div class="col-sm-4">
                                            <label class="control-label">Deuda Total</label>
                                            <input class="form-control" id="pagarDeuTot"  name="deuTot" readonly>
                                        </div>
                                        <div class="col-sm-4">
                                            <label class="control-label">Deuda Pagada</label>
                                            <input class="form-control" id="pagarDeuPag"  name="deuPag" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <label class="control-label">Cuotas Totales</label>
                                            <input class="form-control" id="pagarCuoTot"  name="numCuoTot" readonly>
                                        </div>
                                        <div class="col-sm-4">
                                            <label class="control-label">Cuotas Pagadas</label>
                                            <input class="form-control" id="pagarCuoPag"  name="numCuoPag" readonly>
                                        </div>
                                        <div class="col-sm-4">
                                            <label class="control-label">Monto Pago</label>
                                            <input class="form-control" name="pagCuoTotPag" id="pagarMonXCuo">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-outline btn-success">Pagar</button>
                                <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
        <script>
            $('#tablaCuotas').DataTable({
                responsive: true
            });
            var updateModal = $("#modificarModal");
            var pagarModal = $("#pagarModal");
            
            var updateNumCuo=$("#updateNumCuo");
            
            
            var pagarFacCab=$("#pagarFacCab");
            var pagarDeuTot=$("#pagarDeuTot");
            var pagarDeuPag=$("#pagarDeuPag");
            var pagarCuoTot=$("#pagarCuoTot");
            var pagarCuoPag=$("#pagarCuoPag");
            var pagarMonXCuo=$("#pagarMonXCuo");
            
            updateModal.on('show.bs.modal',function(e){
                updateNumCuo.val($(e.relatedTarget).data('numcuo'));
            });
            
            pagarModal.on('show.bs.modal',function(e){
                console.log($(e.relatedTarget).data('faccab'));
                
                pagarDeuTot.val($(e.relatedTarget).data('deutot'));
                pagarDeuPag.val($(e.relatedTarget).data('deupag'));
                pagarCuoTot.val($(e.relatedTarget).data('cuotot'));
                pagarCuoPag.val($(e.relatedTarget).data('cuopag'));
                pagarFacCab.val($(e.relatedTarget).data('faccab'));
                pagarMonXCuo.val($(e.relatedTarget).data('monpag'));
                console.log(pagarFacCab);
                //pagarPago.val($(e.relatedTarget).data('pagar'));
            });
            
            $.validator.addMethod("codePattern", function (value, element) {
                return /^[0-9]{3}-[0-9]{6}$/.test(value);
            }, "Patrón: [0-9]{3}-[0-9]{6}");
            
            $("#Ingreso").validate({
                rules: {
                    CodCabFac: {
                        required: true,
                        codePattern: true
                    }
                },
                messages: {
                    CodCabFac: {
                        required: "Ingrese el código de la factura"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
            
        </script>
    </jsp:attribute>
</minierptemplate:template>