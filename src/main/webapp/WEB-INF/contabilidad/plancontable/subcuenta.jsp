<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Contabilidad</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="well">
                        <h4>Cuenta N° ${cuenta.cueNum}</h4>
                        <p>${cuenta.cueDes}</p>
                    </div>
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            Subcuentas
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Número</th>
                                            <th>Descripción</th>
                                            <th class="text-right">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="child" items="${cuenta.enP3mCuentas}">
                                            <minierptemplate:nodeTree node="${child}"/>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="panel-footer text-center">
                            <a href="${pageContext.request.contextPath}/secured/contabilidad/plan" type="button" class="btn btn-outline btn-default">Regresar al Plan Contable General</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="agregarModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-sm">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Agregar cuenta</h4>
                        </div>
                        <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/plan/subcuenta">
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Número de cuenta</label>
                                    <div class="input-group">
                                        <input type="hidden" name="accion" value="create">
                                        <input type="hidden" name="origen" value="${cuenta.cueCod}">
                                        <input type="hidden" name="cuePad" id="addCuePad">
                                        <input type="hidden" name="cueNiv" id="addCueNiv">
                                        <input class="form-control" name="cueNum1" id="addCueNum1" readonly>
                                        <span class="input-group-addon">-</span>
                                        <select class="form-control" name="cueNum2">
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
                                <div class="form-group">
                                    <label>Nombre de cuenta:</label>
                                    <input class="form-control" id="addCueDes" name="cueDes">
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
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Modificar cuenta</h4>
                        </div>
                        <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/plan/subcuenta">
                            <div class="modal-body">
                                <div class="form-group">
                                    <label>Número de cuenta</label>
                                    <div class="input-group">
                                        <input type="hidden" name="accion" value="update">
                                        <input type="hidden" name="origen" value="${cuenta.cueCod}">
                                        <input type="hidden" name="cuePad" id="updateCuePad">
                                        <input type="hidden" name="cueNiv" id="updateCueNiv">
                                        <input class="form-control" name="cueNum1" id="updateCueNum" readonly>
                                        <span class="input-group-addon">-</span>
                                        <select class="form-control" name="cueNum2">
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
                                <div class="form-group">
                                    <label>Nombre de cuenta:</label>
                                    <input class="form-control" id="updateCueDes" name="cueDes">
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
        </div>
                                        
        <script>
            var addModal = $("#agregarModal");
            var updateModal = $("#modificarModal");
            
            var addCuePad = $("#addCuePad");
            var addCueNiv = $("#addCueNiv");
            var addCueNum = $("#addCueNum1");
            
            var updateCuePad = $("#updateCuePad");
            var updateCueNiv = $("#updateCueNiv");
            var updateCueNum = $("#updateCueNum");
            var updateCueDes = $("#updateCueDes");
            
            addModal.on('show.bs.modal', function(e){
                addCuePad.val($(e.relatedTarget).data('codigo'));
                addCueNiv.val($(e.relatedTarget).data('nivel') + 1);
                addCueNum.val($(e.relatedTarget).data('numero'));
            });
            
            updateModal.on('show.bs.modal', function(e){
                updateCuePad.val($(e.relatedTarget).data('codigo'));
                updateCueNiv.val($(e.relatedTarget).data('nivel'));
                updateCueNum.val($(e.relatedTarget).data('numero'));
                updateCueDes.val($(e.relatedTarget).data('nombre'));
            });
            
            $("#createForm").validate({
                rules: {
                    cueDes: {
                        required: true,
                    }
                },
                messages: {
                    cueDes: {
                        required: "Ingrese el nombre de cuenta",
                    }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
            
        </script>
    </jsp:attribute>
</minierptemplate:template>