<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Puntos de Venta</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">Documentos de los Usuarios
                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
                <a href="#" class="btn btn-info btn-circle" data-toggle="modal" data-target="#estadosModal"><i class="fa fa-eye"></i></a>
                </c:if>
            </h1>  
            <!--
            <div class="row">
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
            </div>
            <br>-->
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover" id="tablaDocUsuarios">
                        <thead>
                            <tr>
                                <th>Cod Usuario</th>
                                <th>Nombres y Apellidos</th>
                                <th>Tipo de Documento</th>
                                <th>Número de Documento</th>
                                <th>Registro</th>
                                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <th class="text-right">Acciones</th>
                                </c:if>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="docusu" items="${docUsuAct}">
                                <tr>
                                    <td>${docusu.id.usuCod}</td>
                                    <td>${docusu.enP1mUsuario.usuNom} ${docusu.enP1mUsuario.usuApePat} ${docusu.enP1mUsuario.usuApeMat}</td>
                                    <td>${docusu.id.tipDocUsuCod} - ${docusu.taGzzTipoDocUsuario.tipDocUsuDet}</td>
                                    <td>${docusu.docUsuNum}</td>
                                    <td>${docusu.estRegCod}</td>
                                    <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <td class="text-right">
                                        <a href="#" data-toggle="modal" data-target="#modificarModal" 
                                           data-usucod="${docusu.id.usuCod}" data-tipdocusucod="${docusu.id.tipDocUsuCod}" data-docusunum="${docusu.docUsuNum}" 
                                           data-usunom="${docusu.enP1mUsuario.usuNom}" data-usuapepat="${docusu.enP1mUsuario.usuApePat}" data-usuapemat="${docusu.enP1mUsuario.usuApeMat}" 
                                           data-tipdocusudet="${docusu.taGzzTipoDocUsuario.tipDocUsuDet}" >
                                            <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#disableModal" 
                                           data-usucod="${docusu.id.usuCod}" data-tipdocusucod="${docusu.id.tipDocUsuCod}"
                                           data-usunom="${docusu.enP1mUsuario.usuNom}" data-usuapepat="${docusu.enP1mUsuario.usuApePat}" 
                                           data-usuapemat="${docusu.enP1mUsuario.usuApeMat}" data-tipdocusudet="${docusu.taGzzTipoDocUsuario.tipDocUsuDet}">
                                            <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
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
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar Documento del Usuario</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/documentoUsuario">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-group">
                                <label>Usuarios:</label>
                                <select class="form-control" name="usuCod">
                                    <c:forEach var="usu" items="${usuarios}">
                                        <option value="${usu.usuCod}">${usu.usuCod} - ${usu.usuNom} ${usu.usuApePat} ${usu.usuApeMat}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Tipo de Documento:</label>
                                <select class="form-control" name="tipDocUsuCod">
                                    <c:forEach var="tdu" items="${tiposDocUsu}">
                                        <option value="${tdu.tipDocUsuCod}">${tdu.tipDocUsuCod} - ${tdu.tipDocUsuDet}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Numero del Documento:</label>
                                <input class="form-control" name="docUsuNum">
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
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar Documento de Usuario</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/documentoUsuario">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="update">
                            <div class="form-group">
                                <label>Usuarios:</label>
                                <input type="hidden" name="usuCod" id="updateUsuCod">
                                <input class="form-control" id="updateUsuCodNam" readonly>
                            </div>
                            <div class="form-group">
                                <label>Tipo de Documento:</label>
                                <input type="hidden" name="tipDocUsuCod" id="updateTipDocUsuCod">
                                <input class="form-control" id="updateTipDocUsuCodNam" readonly>
                            </div>
                            <div class="form-group">
                                <label>Numero del Documento:</label>
                                <input class="form-control" name="docUsuNum" id="updateDocUsuNum">
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
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Inhabilitar Documento de Usuario</h4>
                    </div>
                    <form id="disableForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/documentoUsuario">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="disable">
                            <input type="hidden" name="usuCod" id="disableUsuCod">
                            <input type="hidden" name="tipDocUsuCod" id="disableTipDocUsuCod">
                            <p> ¿Desea inhabilitar el Documento: <span id="disableArgument"></span> ?</p>
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
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Reactivar o Eliminar Punto de Venta</h4>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                            <tr>
                                <th>Cod Usuario</th>
                                <th>Nombres y Apellidos</th>
                                <th>Tipo de Documento</th>
                                <th>Numero de Documento</th>
                                <th>Registro</th>
                                <th class="text-right">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="docusu" items="${docUsuInc}">
                                <tr>
                                    <td>${docusu.id.usuCod}</td>
                                    <td>${docusu.enP1mUsuario.usuNom} ${docusu.enP1mUsuario.usuApePat} ${docusu.enP1mUsuario.usuApeMat}</td>
                                    <td>${docusu.id.tipDocUsuCod} - ${docusu.taGzzTipoDocUsuario.tipDocUsuDet}</td>
                                    <td>${docusu.docUsuNum}</td>
                                    <td>${docusu.estRegCod}</td>
                                    <td class="text-right">
                                        <a href="#" data-toggle="modal" data-target="#activateModal" 
                                           data-usucod="${docusu.id.usuCod}" data-tipdocusucod="${docusu.id.tipDocUsuCod}"
                                           data-usunom="${docusu.enP1mUsuario.usuNom}" data-usuapepat="${docusu.enP1mUsuario.usuApePat}" 
                                           data-usuapemat="${docusu.enP1mUsuario.usuApeMat}" data-tipdocusudet="${docusu.taGzzTipoDocUsuario.tipDocUsuDet}">
                                            <i class="fa fa-check fa-2x" style="color: green;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#deleteModal" 
                                           data-usucod="${docusu.id.usuCod}" data-tipdocusucod="${docusu.id.tipDocUsuCod}"
                                           data-usunom="${docusu.enP1mUsuario.usuNom}" data-usuapepat="${docusu.enP1mUsuario.usuApePat}" 
                                           data-usuapemat="${docusu.enP1mUsuario.usuApeMat}" data-tipdocusudet="${docusu.taGzzTipoDocUsuario.tipDocUsuDet}">
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
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Activar Documento de Usuario</h4>
                    </div>
                    <form id="activateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/documentoUsuario">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="activate">
                            <input type="hidden" name="usuCod" id="activateUsuCod">
                            <input type="hidden" name="tipDocUsuCod" id="activateTipDocUsuCod">
                            <p> ¿Desea habilitar el Documento: <span id="activateArgument"></span> ?</p>
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
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Documento de Usuario</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/documentoUsuario">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" name="usuCod" id="deleteUsuCod">
                            <input type="hidden" name="tipDocUsuCod" id="deleteTipDocUsuCod">
                            <p> ¿Desea Eliminar el Documento: <span id="deleteArgument"></span> ? (Operacion Irreversible)</p>
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
            $('#tablaDocUsuarios').DataTable({
                responsive: true
            });
            var updateModal = $("#modificarModal");
            var disableModal = $("#disableModal");
            var activateModal = $("#activateModal");
            var deleteModal = $("#deleteModal");

            var updateUsuCod = $("#updateUsuCod");
            var updateTipDocUsuCod = $("#updateTipDocUsuCod");
            var updateDocUsuNum = $("#updateDocUsuNum");
            var updateUsuCodNam = $("#updateUsuCodNam");
            var updateTipDocUsuCodNam = $("#updateTipDocUsuCodNam");
            
            var disableUsuCod = $("#disableUsuCod");
            var disableTipDocUsuCod = $("#disableTipDocUsuCod");
            var disableArgument = $("#disableArgument");
            
            var activateUsuCod = $("#activateUsuCod");
            var activateTipDocUsuCod = $("#activateTipDocUsuCod");
            var activateArgument = $("#activateArgument");
            
            var deleteUsuCod = $("#deleteUsuCod");
            var deleteTipDocUsuCod = $("#deleteTipDocUsuCod");
            var deleteArgument = $("#deleteArgument");
            
            updateModal.on('show.bs.modal', function (e) {
                updateUsuCodNam.val($(e.relatedTarget).data('usucod') + " - " + 
                        $(e.relatedTarget).data('usunom') + " " + $(e.relatedTarget).data('usuapepat') + " " + 
                        $(e.relatedTarget).data('usuapemat'));
                updateTipDocUsuCodNam.val($(e.relatedTarget).data('tipdocusucod') + " - " + $(e.relatedTarget).data('tipdocusudet'));
                updateUsuCod.val($(e.relatedTarget).data('usucod'));
                updateTipDocUsuCod.val($(e.relatedTarget).data('tipdocusucod'));
                updateDocUsuNum.val($(e.relatedTarget).data('docusunum'));
            });

            disableModal.on('show.bs.modal', function (e) {
                disableUsuCod.val($(e.relatedTarget).data('usucod'));
                disableTipDocUsuCod.val($(e.relatedTarget).data('tipdocusucod'));
                disableArgument.text("Tipo: " + $(e.relatedTarget).data('tipdocusudet') + ", del Usuario: " + 
                        $(e.relatedTarget).data('usunom') + $(e.relatedTarget).data('usuapepat') + 
                        $(e.relatedTarget).data('usuapemat'));
            });

            activateModal.on('show.bs.modal', function (e) {
                activateUsuCod.val($(e.relatedTarget).data('usucod'));
                activateTipDocUsuCod.val($(e.relatedTarget).data('tipdocusucod'));
                activateArgument.text("Tipo: " + $(e.relatedTarget).data('tipdocusudet') + ", del Usuario: " + 
                        $(e.relatedTarget).data('usunom') + $(e.relatedTarget).data('usuapepat') + 
                        $(e.relatedTarget).data('usuapemat'));
            });

            deleteModal.on('show.bs.modal', function (e) {
                deleteUsuCod.val($(e.relatedTarget).data('usucod'));
                deleteTipDocUsuCod.val($(e.relatedTarget).data('tipdocusucod'));
                deleteArgument.text("Tipo: " + $(e.relatedTarget).data('tipdocusudet') + ", del Usuario: " + 
                        $(e.relatedTarget).data('usunom') + $(e.relatedTarget).data('usuapepat') + 
                        $(e.relatedTarget).data('usuapemat'));
            });

            $("#createForm").validate({
                rules: {
                    docUsuNum: {
                        required: true
                    }
                },
                messages: {
                    docUsuNum: {
                        required: "Se requiere un codigo"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            $("#updateForm").validate({
                rules: {
                    docUsuNum: {
                        required: true
                    }
                },
                messages: {
                    docUsuNum: {
                        required: "Se requiere un codigo"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

        </script>
    </jsp:attribute>
</minierptemplate:template>
