<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Puntos de Venta</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">Puntos de Venta
                <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
                <a href="#" class="btn btn-info btn-circle" data-toggle="modal" data-target="#estadosModal"><i class="fa fa-eye"></i></a>
            </h1>     
            <br>
            <br>
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/secured/reporte?type=pdf&&report=puntodeventa" class="btn btn-outline btn-danger btn-lg btn-block">
                    <i class="fa fa-file-pdf-o"></i>
                    Reporte [PDF]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/reporte?type=xls&&report=puntodeventa" class="btn btn-outline btn-success btn-lg btn-block">
                    <i class="fa fa-file-excel-o"></i>
                    Reporte [XLS]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/reporte?type=doc&&report=puntodeventa" class="btn btn-outline btn-primary btn-lg btn-block">
                    <i class="fa fa-file-word-o"></i>
                    Reporte [DOC]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/configuracion" class="btn btn-outline btn-default btn-lg btn-block">
                    <i class="fa fa-arrow-left"></i>
                    Regresar
                </a>
                <br>
            </div>
            <br>
            <div class="col-md-9">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Cod Sucursal</th>
                                <th>Det Sucursal</th>
                                <th>Cod Punto de Venta</th>
                                <th>Descripcion</th>
                                <th>Estado de Registro</th>
                                <th class="text-right">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="pv" items="${puntoventa}">
                                <tr>
                                    <td>${pv.id.sucCod}</td>
                                    <td>${pv.enP1mSucursal.sucDes}</td>
                                    <td>${pv.id.punVenCod}</td>
                                    <td>${pv.punVenDes}</td>
                                    <td>${pv.estRegCod}</td>
                                    <td class="text-right">
                                        <a href="#" data-toggle="modal" data-target="#modificarModal" data-succod="${pv.id.sucCod}" data-sucdes="${pv.enP1mSucursal.sucDes}" data-punvencod="${pv.id.punVenCod}" data-punvendes="${pv.punVenDes}">
                                            <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#disableModal" data-succod="${pv.id.sucCod}" data-punvencod="${pv.id.punVenCod}" data-punvendes="${pv.punVenDes}">
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
                        <h4 class="modal-title">Agregar Punto de Venta</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/puntodeventa">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-group">
                                <label>Sucursal:</label>
                                <select class="form-control" name="sucCod">
                                    <c:forEach var="s" items="${sucursal}">
                                        <option value="${s.sucCod}">${s.sucCod} - ${s.sucDes}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Descripcion del Punto de Venta:</label>
                                <input class="form-control" name="punVenDes">
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
                        <h4 class="modal-title">Modificar Punto de Venta</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/puntodeventa">
                        <div class="modal-body">
                            <div class="form-group">
                                <input type="hidden" name="accion" value="update">
                                <input type="hidden" name="sucCod" id="updateSucCod">
                                <input type="hidden" name="punVenCod" id="updatePunVenCod">
                                <label>Sucursal:</label>
                                <input class="form-control" id="updateNamSucCod" readonly>
                            </div>
                            <div class="form-group">
                                <label>Descripcion del Punto de Venta:</label>
                                <input class="form-control" name="punVenDes" id="updatePunVenDes">
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

        <div id="disableModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Inhabilitar Punto de Venta</h4>
                    </div>
                    <form id="disableForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/puntodeventa">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="disable">
                            <input type="hidden" name="sucCod" id="disableSucCod">
                            <input type="hidden" name="punVenCod" id="disablePunVenCod">
                            <p> ¿Desea inhabilitar el Punto de Venta: <span id="disablePunVenDes"></span> ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="estadosModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="width: 800px; text-align:center">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Reactivar o Eliminar Punto de Venta</h4>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Cod Sucursal</th>
                                        <th>Det Sucursal</th>
                                        <th>Cod Punto de Venta</th>
                                        <th>Descripcion</th>
                                        <th>Estado de Registro</th>
                                        <th class="text-right">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="pvi" items="${inactivos}">
                                        <tr>
                                            <td>${pvi.id.sucCod}</td>
                                            <td>${pvi.enP1mSucursal.sucDes}</td>
                                            <td>${pvi.id.punVenCod}</td>
                                            <td>${pvi.punVenDes}</td>
                                            <td>${pvi.estRegCod}</td>
                                            <td class="text-right">
                                                <a href="#" data-toggle="modal" data-target="#activateModal" data-succod="${pvi.id.sucCod}" data-punvencod="${pvi.id.punVenCod}" data-punvendes="${pvi.punVenDes}">
                                                    <i class="fa fa-check fa-2x" style="color: green;"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#deleteModal" data-succod="${pvi.id.sucCod}" data-punvencod="${pvi.id.punVenCod}" data-punvendes="${pvi.punVenDes}">
                                                    <i class="fa fa-trash-o fa-2x" style="color: red;"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>  
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>                                        
            </div>
        </div>

        <div id="activateModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Activar Punto de Venta</h4>
                    </div>
                    <form id="activateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/puntodeventa">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="activate">
                            <input type="hidden" name="sucCod" id="activateSucCod">
                            <input type="hidden" name="punVenCod" id="activatePunVenCod">
                            <p> ¿Desea habilitar el Punto de Venta: <span id="activatePunVenDes"></span> ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="deleteModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Punto de Venta</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/puntodeventa">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" name="sucCod" id="deleteSucCod">
                            <input type="hidden" name="punVenCod" id="deletePunVenCod">
                            <p> ¿Desea Eliminar el Punto de Venta: <span id="deletePunVenDes"></span> ?</p>
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
            var disableModal = $("#disableModal");
            var activateModal = $("#activateModal");
            var deleteModal = $("#deleteModal");

            var updateNamSucCod = $("#updateNamSucCod");
            var updateSucCod = $("#updateSucCod");
            var updateSucDes = $("#updateSucDes");
            var updatePunVenCod = $("#updatePunVenCod");
            var updatePunVenDes = $("#updatePunVenDes");

            var disableSucCod = $("#disableSucCod");
            var disablePunVenCod = $("#disablePunVenCod");
            var disablePunVenDes = $("#disablePunVenDes");

            var activateSucCod = $("#activateSucCod");
            var activatePunVenCod = $("#activatePunVenCod");
            var activatePunVenDes = $("#activatePunVenDes");

            var deleteSucCod = $("#deleteSucCod");
            var deletePunVenCod = $("#deletePunVenCod");
            var deletePunVenDes = $("#deletePunVenDes");

            updateModal.on('show.bs.modal', function (e) {
                updateNamSucCod.val($(e.relatedTarget).data('succod') + " - " + $(e.relatedTarget).data('sucdes'));
                updateSucCod.val($(e.relatedTarget).data('succod'));
                updateSucDes.val($(e.relatedTarget).data('sucdes'));
                updatePunVenCod.val($(e.relatedTarget).data('punvencod'));
                updatePunVenDes.val($(e.relatedTarget).data('punvendes'));
            });

            disableModal.on('show.bs.modal', function (e) {
                disableSucCod.val($(e.relatedTarget).data('succod'));
                disablePunVenCod.val($(e.relatedTarget).data('punvencod'));
                disablePunVenDes.text($(e.relatedTarget).data('punvendes'));
            });

            activateModal.on('show.bs.modal', function (e) {
                activateSucCod.val($(e.relatedTarget).data('succod'));
                activatePunVenCod.val($(e.relatedTarget).data('punvencod'));
                activatePunVenDes.text($(e.relatedTarget).data('punvendes'));
            });

            deleteModal.on('show.bs.modal', function (e) {
                deleteSucCod.val($(e.relatedTarget).data('succod'));
                deletePunVenCod.val($(e.relatedTarget).data('punvencod'));
                deletePunVenDes.text($(e.relatedTarget).data('punvendes'));
            });

            $("#createForm").validate({
                rules: {
                    sucCod: {
                        required: true
                    }
                },
                messages: {
                    sucCod: {
                        required: "Seleccione una Sucursal"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            $("#updateForm").validate({
                rules: {
                    sucCod: {
                        required: true
                    }
                },
                messages: {
                    sucCod: {
                        required: "Seleccione una Sucursal"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

        </script>
    </jsp:attribute>
</minierptemplate:template>
