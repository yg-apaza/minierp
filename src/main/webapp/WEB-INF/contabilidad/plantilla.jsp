<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Contabilidad - Plantillas de Asientos</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">
                Plantillas de Asientos
                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
                </c:if>
            </h1>
            <br>
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Descripción</th>
                                <th>Glosa por defecto</th>
                                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <th class="text-right">Acciones</th>
                                </c:if>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="p" items="${plantillas}">
                                <tr>
                                    <td>${p.plaCod}</td>
                                    <td>${p.plaDet}</td>
                                    <td>${p.plaGlo}</td>
                                    <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                        <c:if test="${p.plaHab}">
                                            <td class="text-right">
                                                <a href="#" data-toggle="modal" data-target="#deleteModal" data-codigo="${p.plaCod}" data-descripcion="${p.plaDet}">
                                                    <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                                </a>
                                            </td>
                                        </c:if>
                                        <c:if test="${!p.plaHab}">
                                            <td class="text-right">No editable</td>
                                        </c:if>
                                    </c:if>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar plantilla</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/plantilla">
                        <div class="modal-body">
                            <div class="row">
                                <input type="hidden" name="accion" value="create">
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label>Descripción:</label>
                                        <input class="form-control" name="plaDet">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label>Glosa por defecto:</label>
                                        <input class="form-control" name="plaGlo">
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12">
                                    <label>Detalle de Plantilla</label>
                                </div>
                                <div class="col-md-7 col-sm-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Cuenta</span>
                                        <input class="form-control" id="cueNum" placeholder="Nro de Cuenta">
                                        <span class="input-group-addon">-</span>
                                        <input class="form-control" id="cueDes" placeholder="Descripción" disabled>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-5">
                                    <div class="form-group">
                                        <select id="plaDetDebHab" class="form-control">
                                            <option value="DEBE">DEBE</option>
                                            <option value="HABER">HABER</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-5">
                                    <div class="form-group">
                                        <input id="plaDetPor" type="number" placeholder="Porcentaje" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-1 col-sm-2">
                                    <div class="form-group">
                                        <button type="button" id="addDetail" class="btn btn-success"><i class="fa fa-plus fa-1x"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="table-responsive">
                                        <table id="detallesTable" class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th width="30%">Cuenta</th>
                                                    <th width="30%">Debe/Haber</th>
                                                    <th width="30%">Porcentaje</th>
                                                    <th width="10%">Acciones</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                    <input type="hidden" name="numDet" value="0" id="numDet">
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
        
        <div id="deleteModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar plantilla</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/plantilla">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" name="plaCod" id="deletePlaCod">
                            <p> ¿Desea eliminar la plantilla Nº <span id="deletePlaCodShow"></span> - <span id="deletePlaDet"></span>?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <div id="errorMessageModal" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Detalle de Plantilla</h4>
                    </div>
                    <div class="modal-body">
                        <p align="center"><span id="errorMessage"></span></p>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success" data-dismiss="modal">Aceptar</button>                                            
                    </div>
                </div>              
            </div>
        </div>
        <script>
            $('#cueNum').keyup(function() {
                $.post(
                    "${pageContext.request.contextPath}/secured/contabilidad/busquedaCuenta",
                    {cueNum: $("#cueNum").val()})
                .done(function(data) {
                    if(data.cueCod != null)
                    {
                        $("#cueDes").val(data.cueDes);
                    }
                    else
                    {
                        $("#cueDes").val("Incorrecto");
                    }
                });
            });
            
            var deleteModal = $('#deleteModal');
            var deletePlaCod = $('#deletePlaCod');
            var deletePlaCodShow = $('#deletePlaCodShow');
            var deletePlaDet = $('#deletePlaDet');
            
            deleteModal.on('show.bs.modal', function (e) {
                deletePlaCod.val($(e.relatedTarget).data('codigo'));
                deletePlaCodShow.text($(e.relatedTarget).data('codigo'));
                deletePlaDet.text($(e.relatedTarget).data('descripcion'));
            });
            
            $('#addDetail').on('click', function () {
                var errors = "";
                var showError = false;
                if ($('#cueDes').val() == "Incorrecto" || $('#cueDes').val() == "") {
                    errors += "Cuenta contable incorrecta.\n";
                    showError = true;
                }
                if($('#plaDetPor').val() <= 0){
                    errors += "Porcentaje inválido, debe ser mayor que 0%.";
                    showError = true;
                }
                if(showError)
                {
                    $("#errorMessage").text(errors);
                    $('#errorMessageModal').modal('show');
                }
                else
                {
                    $('#detallesTable tbody').append('<tr align="center"><td></td><td></td><td></td><td><button type="button" class="btnDelete btn btn-danger")><i class="fa fa-trash-o fa-1x"></i></button></td></tr>');
                    $('#detallesTable tr:last td:eq(0)').html('<input type="text" name="cueNum" class="form-control" value="'+ $("#cueNum").val() +'" readonly>');
                    $('#detallesTable tr:last td:eq(1)').html('<input type="text" name="plaDetDebHab" class="form-control" value="'+ $("#plaDetDebHab").val() +'" readonly>');
                    $('#detallesTable tr:last td:eq(2)').html('<input type="text" name="plaDetPor" class="form-control" value="'+ $("#plaDetPor").val() +'" readonly>');
                    $('#numDet').val($('#numDet').val() * 1 + 1);
                }
            });
            
            $("#detallesTable").on('click', '.btnDelete', function () {
                $(this).closest('tr').remove();
                $('#numDet').val($('#numDet').val() - 1);
            });
            
            $("#createForm").validate({
                ignore: "",
                rules: {
                    plaDet: {
                        required: true
                    },
                    plaGlo: {
                        required: true
                    },
                    numDet: {
                        min: 2
                    }
                },
                messages: {
                    plaDet: {
                        required: "Ingrese descripción de asiento"
                    },
                    plaGlo: {
                        required: "Ingrese glosa por defecto"
                    },
                    numDet: {
                        min: "Ingrese al menos 2 líneas de detalle"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>