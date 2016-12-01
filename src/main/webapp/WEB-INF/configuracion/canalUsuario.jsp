<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Canales de Venta de Usuarios</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Canales de Venta de Usuarios</h1>
                </div>        
            </div>
            <div class="row">
                <div class="col-xs-6 col-md-5">
                    <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#agregarModal"> Agregar Nuevo <i class="fa fa-plus"></i></button>
                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#estadosModal"> Ver Inhabilitados <i class="fa fa-eye"></i></button>
                    </c:if>
                </div>
            </div><br>                      
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover" id="tableCanalesUsu">
                        <thead>
                            <tr>
                                <th>Codigo del Canal</th>
                                <th>Detalle del Canal</th>
                                <th>Precio Final</th>
                                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <th>Acciones</th>
                                </c:if>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="c" items="${canales}">
                                <tr>
                                    <td>${c.canUsuCod}</td>
                                    <td>${c.canUsuDet}</td>
                                    <td>
                                        <fmt:formatNumber type="number" 
                                                      minFractionDigits="2" 
                                                      maxFractionDigits="2" 
                                                      value="${c.canUsuPorAdd*100}" /> %
                                        
                                    </td>
                                    <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <td class="text-right">
                                        <a href="#" data-toggle="modal" data-target="#modificarModal" 
                                           title ="Modificar Canal de Venta"
                                           data-canusucod="${c.canUsuCod}" 
                                           data-canusudet="${c.canUsuDet}"
                                           data-canusuporadd="${c.canUsuPorAdd}">
                                            <i class="fa fa-pencil-square-o fa-lg" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#disableModal" 
                                           title="InHabilitar Canal de Venta" 
                                           data-canusucod="${c.canUsuCod}" 
                                           data-canusudet="${c.canUsuDet}">
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
                        <h4 class="modal-title">Agregar Canal de Venta</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/canalUsuario">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-group">
                                <label>Código del Canal de Venta:</label>
                                <input class="form-control" name="canUsuCod">
                            </div>
                            <div class="form-group">
                                <label>Descripción del Canal de Venta:</label>
                                <input class="form-control" name="canUsuDet">
                            </div>
                            <div class="form-group input-group" >
                                <span class="input-group-addon">Precio Final:</span>                                                            
                                <input type="number" class="form-control" name="canUsuPorAdd" min="0.00" max="999.00" step="any" value="100.0">
                                <span class="input-group-addon"><i class="fa fa-percent"></i></span>
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
                        <h4 class="modal-title">Modificar Canal de Venta</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/canalUsuario">
                        <div class="modal-body">
                            <div class="form-group">
                                <input type="hidden" name="accion" value="update">
                                <label>Código del Canal de Venta:</label>
                                <input class="form-control" name="canUsuCod" id="updateCanUsuCod" readonly>
                            </div>
                            <div class="form-group">
                                <label>Descripción del Canal de Venta:</label>
                                <input class="form-control" name="canUsuDet" id="updateCanUsuDet">
                            </div>
                            <div class="form-group input-group" >
                                <span class="input-group-addon">Precio Final:</span>                                                            
                                <input type="number" class="form-control" name="canUsuPorAdd" id="updateCanUsuPorAdd" min="0.00" max="999.00" step="any">
                                <span class="input-group-addon"><i class="fa fa-percent"></i></span>
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
                        <h4 class="modal-title">Inhabilitar Canal de Venta</h4>
                    </div>
                    <form id="disableForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/canalUsuario">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="disable">
                            <input type="hidden" name="canUsuCod" id="disableCanUsuCod">
                            <p> ¿Desea inhabilitar el Canal de Venta: <span id="disableCanUsuDet"></span> ?</p>
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
                        <h4 class="modal-title">Reactivar o Eliminar el Canal de Venta</h4>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover" id="tableCanalesUsuInactivos">
                                <thead>
                                    <tr>
                                        <th>Codigo del Canal</th>
                                        <th>Detalle del Canal</th>
                                        <th>Porcentaje Adicional al Precio</th>
                                        <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                            <th>Acciones</th>
                                        </c:if>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="c" items="${inactivos}">
                                        <tr>
                                            <td>${c.canUsuCod}</td>
                                            <td>${c.canUsuDet}</td>
                                            <td>${c.canUsuPorAdd}</td>
                                            <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                <td class="text-right">
                                                    <a href="#" data-toggle="modal" data-target="#activateModal" 
                                                       title="Re-Activar Canal de Venta" 
                                                       data-canusucod="${c.canUsuCod}" 
                                                       data-canusudet="${c.canUsuDet}">
                                                        <i class="fa fa-check fa-lg" style="color: green;"></i>
                                                    </a>
                                                    <a href="#" data-toggle="modal" data-target="#deleteModal" 
                                                       title="Eliminar Canal de Venta" 
                                                       data-canusucod="${c.canUsuCod}" 
                                                       data-canusudet="${c.canUsuDet}">
                                                        <i class="fa fa-trash-o fa-lg" style="color: red;"></i>
                                                    </a>
                                                </td>
                                            </c:if>
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
                        <h4 class="modal-title">Activar Canal de Venta</h4>
                    </div>
                    <form id="activateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/canalUsuario">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="activate">
                            <input type="hidden" name="canUsuCod" id="activateCanUsuCod">
                            <p> ¿Desea habilitar el Canal de Venta: <span id="activateCanUsuDet"></span> ?</p>
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
                        <h4 class="modal-title">Eliminar Canal de Venta</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/canalUsuario">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" name="canUsuCod" id="deleteCanUsuCod">
                            <p> ¿Desea Eliminar el Canal de Venta: <span id="deleteCanUsuDet"></span> ?</p>
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
            $('#tableCanalesUsu').DataTable({
                responsive: true
            });
            $('#tableCanalesUsuInactivos').DataTable({
                responsive: true
            });
            
            var updateModal = $("#modificarModal");
            var disableModal = $("#disableModal");
            var activateModal = $("#activateModal");
            var deleteModal = $("#deleteModal");

            var updateCanUsuCod = $("#updateCanUsuCod");
            var updateCanUsuDet = $("#updateCanUsuDet");
            var updateCanUsuPorAdd = $("#updateCanUsuPorAdd");
            
            var disableCanUsuCod = $("#disableCanUsuCod");
            var disableCanUsuDet = $("#disableCanUsuDet");

            var activateCanUsuCod = $("#activateCanUsuCod");
            var activateCanUsuDet = $("#activateCanUsuDet");

            var deleteCanUsuCod = $("#deleteCanUsuCod");
            var deleteCanUsuDet = $("#deleteCanUsuDet");

            updateModal.on('show.bs.modal', function (e) {
                updateCanUsuCod.val($(e.relatedTarget).data('canusucod'));
                updateCanUsuDet.val($(e.relatedTarget).data('canusudet'));
                updateCanUsuPorAdd.val(($(e.relatedTarget).data('canusuporadd')*100).toFixed(2));
            });

            disableModal.on('show.bs.modal', function (e) {
                disableCanUsuCod.val($(e.relatedTarget).data('canusucod'));
                disableCanUsuDet.val($(e.relatedTarget).data('canusudet'));
            });

            activateModal.on('show.bs.modal', function (e) {
                activateCanUsuCod.val($(e.relatedTarget).data('canusucod'));
                activateCanUsuDet.val($(e.relatedTarget).data('canusudet'));
            });

            deleteModal.on('show.bs.modal', function (e) {
                deleteCanUsuCod.val($(e.relatedTarget).data('canusucod'));
                deleteCanUsuDet.val($(e.relatedTarget).data('canusudet'));
            });

            $("#createForm").validate({
                rules: {
                    canUsuCod: {
                        required: true,
                        number: true
                    }
                    ,
                    canUsuDet: {
                        required: true
                    }
                    ,
                    canUsuPorAdd: {
                        required: true
                    }
                },
                messages: {
                    canUsuCod: {
                        required: "Codigo Requerido",
                        number: "El Codigo debe ser Numerico"
                    }
                    ,
                    canUsuDet: {
                        required: "El Detalle es Requerido"
                    }
                    ,
                    canUsuPorAdd: {
                        required: "El Porcentaje Adicional al Precio es Requerido"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            $("#udpdateForm").validate({
                rules: {
                    canUsuDet: {
                        required: true
                    }
                    ,
                    canUsuPorAdd: {
                        required: true
                    }
                },
                messages: {
                    canUsuDet: {
                        required: "El Detalle es Requerido"
                    }
                    ,
                    canUsuPorAdd: {
                        required: "El Porcentaje Adicional al Precio es Requerido"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

        </script>
    </jsp:attribute>
</minierptemplate:template>

