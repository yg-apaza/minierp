<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Cátalogo de Rutas</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">Catálogo de Rutas
                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
                <a href="#" class="btn btn-info btn-circle" data-toggle="modal" data-target="#estadosModal"><i class="fa fa-eye"></i></a>
                </c:if>
            </h1>     
            <!--<div class="row">
                <div class="col-md-4">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=pdf&&report=puntodeventa" class="btn btn-outline btn-danger btn-lg btn-block">
                        <i class="fa fa-file-pdf-o"></i>
                        Reporte [PDF]
                    </a></div>
                <div class="col-md-4">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=pdf&&report=puntodeventa" class="btn btn-outline btn-success btn-lg btn-block">
                        <i class="fa fa-file-excel-o"></i>
                        Reporte [XLS]
                    </a></div>
                <div class="col-md-4">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=pdf&&report=puntodeventa" class="btn btn-outline btn-primary btn-lg btn-block">
                        <i class="fa fa-file-word-o"></i>
                        Reporte [DOC]
                    </a></div>
            </div>-->
                        
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Código de Ruta</th>
                                <th>Detalle de la Ruta</th>
                                <th>Clientes de la Ruta</th>
                                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <th>Acciones</th>
                                </c:if>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cr" items="${catRutas}">
                                <tr>
                                    <td>${cr.catRutCod}</td>
                                    <td>${cr.catRutDet}</td>
                                    <td>
                                        <c:forEach var="cli" items="${cr.enP1mClientesRutases}">
                                            ${cli.enP1mCliente.cliCod} - ${cli.enP1mCliente.cliRazSoc}<br>
                                        </c:forEach>
                                    </td>
                                    <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <td class="text-right">
                                        <a href="#" data-toggle="modal" data-target="#modificarModal" 
                                           title ="Modificar Ruta"
                                           data-catrutcod="${cr.catRutCod}" data-catrutdet="${cr.catRutDet}">
                                            <i class="fa fa-pencil-square-o fa-lg" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#disableModal" 
                                           title="InHabilitar Ruta" 
                                           data-catrutcod="${cr.catRutCod}" data-catrutdet="${cr.catRutDet}">
                                            <i class="fa fa-trash-o fa-lg" style="color: black;"></i>
                                        </a>
                                    </td>
                                    </c:if>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar Ruta</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/catalogoRutas">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-group">
                                <label>Codigo de Ruta:</label>
                                <input class="form-control" name="catRutCod">
                            </div>
                            <div class="form-group">
                                <label>Descripcion de la Ruta:</label>
                                <input class="form-control" name="catRutDet">
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
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar Ruta</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/catalogoRutas">
                        <div class="modal-body">
                            <div class="form-group">
                                <input type="hidden" name="accion" value="update">
                                <label>Codigo de Ruta:</label>
                                <input class="form-control" name="catRutCod" id="updateCatRutCod" readonly>
                            </div>
                            <div class="form-group">
                                <label>Descripcion de la Ruta:</label>
                                <input class="form-control" name="catRutDet" id="updateCatRutDet">
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
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Inhabilitar Ruta</h4>
                    </div>
                    <form id="disableForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/catalogoRutas">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="disable">
                            <input type="hidden" name="catRutCod" id="disableCatRutCod">
                            <p> ¿Desea inhabilitar la Ruta: <span id="disableCatRutAll"></span> ?</p>
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
            <div class="modal-dialog modal-lg">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Reactivar o Eliminar Rutas</h4>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>Codigo de Ruta</th>
                                        <th>Detalle de la Ruta</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cri" items="${inactivos}">
                                        <tr>
                                            <td>${cri.catRutCod}</td>
                                            <td>${cri.catRutDet}</td>
                                            <td>
                                                <a href="#" data-toggle="modal" data-target="#activateModal" 
                                                   title="Re-Activar Ruta"
                                                   data-catrutcod="${cri.catRutCod}" data-catrutdet="${cri.catRutDet}">
                                                    <i class="fa fa-check fa-lg" style="color: green;"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#deleteModal" 
                                                   title="Eliminar Ruta"
                                                   data-catrutcod="${cri.catRutCod}" data-catrutdet="${cri.catRutDet}">
                                                    <i class="fa fa-trash-o fa-lg" style="color: red;"></i>
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
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Activar Ruta</h4>
                    </div>
                    <form id="activateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/catalogoRutas">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="activate">
                            <input type="hidden" name="catRutCod" id="activateCatRutCod">
                            <p> ¿Desea habilitar la Ruta: <span id="activateCatRutAll"></span> ?</p>
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
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Ruta</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/catalogoRutas">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" name="catRutCod" id="deleteCatRutCod">
                            <p> ¿Desea Eliminar la Ruta: <span id="deleteCatRutAll"></span> ?</p>
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

            var updateCatRutCod = $("#updateCatRutCod");
            var updateCatRutDet = $("#updateCatRutDet");
            
            var disableCatRutCod = $("#disableCatRutCod");
            var disableCatRutDet = $("#disableCatRutDet");
            var disableCatRutAll = $("#disableCatRutAll");

            var activateCatRutCod = $("#activateCatRutCod");
            var activateCatRutDet = $("#activateCatRutDet");
            var activateCatRutAll = $("#activateCatRutAll");

            var deleteCatRutCod = $("#deleteCatRutCod");
            var deleteCatRutDet = $("#deleteCatRutDet");
            var deleteCatRutAll = $("#deleteCatRutAll");

            updateModal.on('show.bs.modal', function (e) {
                updateCatRutCod.val($(e.relatedTarget).data('catrutcod'));
                updateCatRutDet.val($(e.relatedTarget).data('catrutdet'));
            });

            disableModal.on('show.bs.modal', function (e) {
                disableCatRutCod.val($(e.relatedTarget).data('catrutcod'));
                disableCatRutDet.val($(e.relatedTarget).data('catrutdet'));
                disableCatRutAll.text($(e.relatedTarget).data('catrutcod') + " - "+ $(e.relatedTarget).data('catrutdet'));
            });

            activateModal.on('show.bs.modal', function (e) {
                activateCatRutCod.val($(e.relatedTarget).data('catrutcod'));
                activateCatRutDet.val($(e.relatedTarget).data('catrutdet'));
                activateCatRutAll.text($(e.relatedTarget).data('catrutcod') + " - "+ $(e.relatedTarget).data('catrutdet'));
            });

            deleteModal.on('show.bs.modal', function (e) {
                deleteCatRutCod.val($(e.relatedTarget).data('catrutcod'));
                deleteCatRutDet.val($(e.relatedTarget).data('catrutdet'));
                deleteCatRutAll.text($(e.relatedTarget).data('catrutcod') + " - "+ $(e.relatedTarget).data('catrutdet'));
            });

            $("#createForm").validate({
                rules: {
                    catRutCod: {
                        required: true,
                        number: true
                    }
                    ,
                    catRutDet:
                    {
                        required: true
                    }
                },
                messages: {
                    catRutCod: {
                        required: "El codigo es requerido",
                        number: "El codigo debe ser numerico"
                    },
                    catRutDet:
                    {
                        required: "Ingrese una descripcion"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            $("#udpdateForm").validate({
                rules: {
                    catRutCod: {
                        required: true,
                        number: true
                    }
                    ,
                    catRutDet:
                    {
                        required: true
                    }
                },
                messages: {
                    catRutCod: {
                        required: "El codigo es requerido",
                        number: "El codigo debe ser numerico"
                    },
                    catRutDet:
                    {
                        required: "Ingrese una descripcion"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

        </script>
    </jsp:attribute>
</minierptemplate:template>
