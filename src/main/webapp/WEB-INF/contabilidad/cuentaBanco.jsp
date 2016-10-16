<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Contabilidad - Cuentas Bancarias</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">Cuentas Bancarias
            <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a></h1>
            <br>
            <br>
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=cuentabancaria&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-danger btn-lg btn-block">
                    <i class="fa fa-file-pdf-o"></i>
                    Reporte [PDF]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&report=cuentabancaria&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-success btn-lg btn-block">
                    <i class="fa fa-file-excel-o"></i>
                    Reporte [XLS]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=cuentabancaria&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-primary btn-lg btn-block">
                    <i class="fa fa-file-word-o"></i>
                    Reporte [DOC]
                </a>
            </div>
            <br>
            <br>
            <div class="col-md-9">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>N°</th>
                                <th>Banco</th>
                                <th>Nro. de Cuenta Corriente</th>
                                <th>Cuenta Contable asociada</th>
                                <th class="text-right">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cb" items="${cuentasbanco}">
                                <tr>
                                    <td>${cb.cueBanCod}</td>
                                    <td>${cb.taGzzBanco.banDet}</td>
                                    <td>${cb.cueBanNum}</td>
                                    <td>${cb.enP3mCuenta.cueNum}</td>
                                    <td class="text-right">
                                        <a href="#" data-toggle="modal" data-target="#modificarModal" data-codigo="${cb.cueBanCod}" data-nrocuenta="${cb.cueBanNum}" data-codbanco="${cb.taGzzBanco.banCod}" data-cuenum="${cb.enP3mCuenta.cueNum}">
                                            <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#eliminarModal" data-codigo="${cb.cueBanCod}"data-nrocuenta="${cb.cueBanNum}" data-detbanco="${cb.taGzzBanco.banDet}">
                                            <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
                    
        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar cuenta bancaria</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/cuentabancaria">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-group">
                            <label>Banco:</label>
                                <select class="form-control" name="banCod">
                                <c:forEach var="b" items="${bancos}">
                                    <option value="${b.banCod}">${b.banDet}</option>
                                </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Nro de cuenta bancaria:</label>
                                <input class="form-control" name="cueBanNum">
                            </div>
                            <div class="form-group">
                                <label>Cuenta contable asociada:</label>
                                <div class="input-group">
                                    <input class="form-control" value="1041" readonly>
                                    <span class="input-group-addon">-</span>
                                    <select class="form-control" name="cueNum">
                                        <option value="0">0</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                        <option value="7">7</option>
                                        <option value="8">8</option>
                                        <option value="9">9</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Agregar</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div>
                        
        <div id="modificarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar cuenta bancaria</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/cuentabancaria">
                        <div class="modal-body">
                            <div class="form-group">
                            <input type="hidden" name="accion" value="update">
                            <input type="hidden" name="cueBanCod" id="updateCueBanCod">
                            <label>Banco:</label>
                                <select class="form-control" name="banCod" id="updateBanCod">
                                <c:forEach var="b" items="${bancos}">
                                    <option value="${b.banCod}">${b.banDet}</option>
                                </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Nro de cuenta bancaria:</label>
                                <input class="form-control" name="cueBanNum" id="updateCueBanNum">
                            </div>
                            <div class="form-group">
                                <label>Cuenta contable asociada:</label>
                                <input class="form-control" id="updateCueNum" readonly>
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
        
        <div id="eliminarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar cuenta bancaria</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/cuentabancaria">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" name="cueBanCod" id="deleteCueBanCod">
                            <p> ¿Desea eliminar la cuenta bancaria Nº <span id="deleteCueBanNum"></span> del banco <span id="deleteBanDet"></span>?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script>
            var updateModal = $("#modificarModal");
            var deleteModal = $("#eliminarModal");
            
            var updateCueBanCod = $("#updateCueBanCod");
            var updateCueBanNum = $("#updateCueBanNum");
            var updateBanCod = $("#updateBanCod");
            var updateCueNum = $("#updateCueNum");
            
            var deleteCueBanCod = $("#deleteCueBanCod");
            var deleteCueBanNum = $("#deleteCueBanNum");
            var deleteBanDet = $("#deleteBanDet");
            
            
            updateModal.on('show.bs.modal', function(e){
                updateCueBanCod.val($(e.relatedTarget).data('codigo'));
                updateCueBanNum.val($(e.relatedTarget).data('nrocuenta'));
                updateBanCod.val($(e.relatedTarget).data('codbanco'));
                updateCueNum.val($(e.relatedTarget).data('cuenum'));
            });
            
            deleteModal.on('show.bs.modal', function(e){
                deleteCueBanCod.val($(e.relatedTarget).data('codigo'));
                deleteCueBanNum.text($(e.relatedTarget).data('nrocuenta'));
                deleteBanDet.text($(e.relatedTarget).data('detbanco'));
            });
            
            $("#createForm").validate({
                rules: {
                    cueBanNum: {
                        required: true,
                        number: true
                    }
                },
                messages: {
                    cueBanNum: {
                        required: "Ingrese N° de cuenta bancaria",
                        number: "Solo puede contener números"
                    }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
            
            $("#updateForm").validate({
                rules: {
                    cueBanNum: {
                        required: true,
                        number: true
                    }
                },
                messages: {
                    cueBanNum: {
                        required: "Ingrese N° de cuenta bancaria",
                        number: "Solo puede contener números"
                    }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>
