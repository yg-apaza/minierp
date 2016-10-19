<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
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
            <div class="row">
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
            <br>
            <div class="row">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <div class="form-horizontal">
                            <div class="form-group">
                                <form  method="post" action="${pageContext.request.contextPath}/secured/ventas/pagos">
                                    <div class="col-md-6">
                                        <label class="control-label">Código Factura</label>                    
                                        <input type="text" class="form-control" placeholder="Código Factura" name="CodCabFac">
                                    </div>
                                    <div class="col-md-3">
                                        <button type="submit" class="btn btn-default btn-block" name="buscarFactura">Buscar <i class="fa fa-search-plus fa-1x"></i></button>
                                    </div>
                                    <div class="col-md-3">
                                        <button type="submit" class="btn btn-default btn-block" name="todos">Todos <i class="fa fa-child"></i></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-striped table-hover ">
                        <thead>
                            <tr>
                                <th>Cod. Factura</th>
                                <th>Total Cuotas</th>
                                <th>Cuotas Pagadas</th>
                                <th>Deuda Total</th>
                                <th>Fecha Inicio</th>
                                <th>Fecha Fin</th>
                                <th>Fecha Pago</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${cabeceraPagos}" var="c">
                                <tr>                            
                                    <td>${c.enP1mFacturaVentaCab.facVenCabCod}</td>
                                    <td>${c.pagCuoNum}</td>
                                    <td>${c.pagCuoNumPag}</td>
                                    <td>${c.pagCuoDeuTot}</td>
                                    <td><fmt:formatDate value="${c.pagCuoFecIni}" pattern="dd/MM/yyyy"/></td>
                                    <td><fmt:formatDate value="${c.pagCuoFecFin}" pattern="dd/MM/yyyy"/></td>
                                    <td><fmt:formatDate value="${c.pagCuoFecPag}" pattern="dd/MM/yyyy"/></td>
                                    <td class="text-center">
                                        <!--
                                        <a href="#" data-toggle="modal" data-target="#modificarModal">
                                           <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                        </a>
                                        -->
                                        <a href="#" data-toggle="modal" data-target="#pagarModal" 
                                           data-faccab="${c.facVenCabCod}" 
                                           data-deutot="${c.pagCuoDeuTot}" data-deupag="${c.pagCuoTotPag}" 
                                           data-cuotot="${c.pagCuoNum}" data-cuopend="${c.pagCuoNumPag}">
                                            <i class="fa fa-dollar fa-2x" style="color: black;"></i>
                                        </a>
                                    </td>
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
                                            <input type="text" class="form-control" id="pagarFacCab"  name="facVenCabCod" readonly>
                                        </div>
                                        <div class="col-sm-4">
                                            <label class="control-label">Deuda Total</label>
                                            <input type="number" class="form-control" id="pagarDeuTot"  name="deuTot" readonly>
                                        </div>
                                        <div class="col-sm-4">
                                            <label class="control-label">Deuda Pagada</label>
                                            <input type="number" class="form-control" id="pagarDeuPag"  name="deuPag" readonly>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-4">
                                            <label class="control-label">Cuotas Totales</label>
                                            <input type="number" class="form-control" id="pagarCuoTot"  name="numCuoTot" readonly>
                                        </div>
                                        <div class="col-sm-4">
                                            <label class="control-label">Cuotas Pagadas</label>
                                            <input type="number" class="form-control" id="pagarCuoPag"  name="numCuoPag" readonly>
                                        </div>
                                        <div class="col-sm-4">
                                            <label class="control-label">Monto Pago</label>
                                            <input type="text" class="form-control" name="pagCuoTotPag">
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
            var updateModal = $("#modificarModal");
            var pagarModal = $("#pagarModal");
            
            var updateNumCuo=$("#updateNumCuo");
            
            
            var pagarFacCab=$("#pagarFacCab");
            var pagarDeuTot=$("#pagarDeuTot");
            var pagarDeuPag=$("#pagarDeuPag");
            var pagarCuoTot=$("#pagarCuoTot");
            var pagarCuoPag=$("#pagarCuoPag");
            
           // var pagarPago=$("#pagarPago");
            
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
                console.log(pagarFacCab);
                //pagarPago.val($(e.relatedTarget).data('pagar'));
            });
            
        </script>
    </jsp:attribute>
</minierptemplate:template>