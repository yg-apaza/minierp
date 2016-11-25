<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Contabilidad - Registro de Asientos</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">Registro de Asientos</h1>
            <br>
            <form method="post" action="${pageContext.request.contextPath}/secured/contabilidad/asientos">
                <input type="hidden" name="libDiaCod" value="${libDiaCod}">
                <div class="row">
                    <div class="col-md-2 col-sm-2">
                        <div class="form-group">
                            <label>Codigo:</label>
                            <input class="form-control" name="asiCabCod">
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="form-group">
                            <label>Glosa:</label>
                            <input class="form-control" name="asiCabGlo">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="form-group">
                            <label>Fecha:</label>
                            <input type="date" class="form-control valid" name="asiCabFec" value="2016-11-26" aria-required="true" aria-invalid="false">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="form-group">
                            <label>Tipo de Comprobante:</label>
                            <select name="tipComCod" id="TipComCod" class="form-control">
                                <option value="0">Ninguno</option>
                                <c:forEach var="c" items="${comprobantes}">
                                    <option value="${c.tipComCod}">${c.tipComDet}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="form-group">
                            <label>Nro. de Documento:</label>
                            <input class="form-control" name="asiCabNumCom">
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="form-group">
                            <label>Moneda:</label>
                            <select id="monCod" name="monCod" class="form-control">
                                <c:forEach var="m" items="${monedas}">
                                    <option value="${m.monCod}">${m.monSim} - ${m.monDet}</option>
                                </c:forEach>
                            </select>
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
                            <select id="asiDetDebHab" class="form-control">
                                <option value="DEBE">DEBE</option>
                                <option value="HABER">HABER</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-5">
                        <div class="form-group">
                            <input id="asiDetMon" type="number" placeholder="Monto" class="form-control">
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
                <button type="submit" class="btn btn-outline btn-success">Agregar</button>
            </form>
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
            $('#addDetail').on('click', function () {
                var errors = "";
                var showError = false;
                if ($('#cueDes').val() == "Incorrecto" || $('#cueDes').val() == "") {
                    errors += "Cuenta contable incorrecta.\n";
                    showError = true;
                }
                if($('#asiDetMon').val() <= 0){
                    errors += "Monto inválido, debe ser mayor que 0.";
                    showError = true;
                }
                if(showError)
                {
                    $("#errorMessage").text(errors);
                    $('#errorMessageModal').modal('show');
                }
                else
                {
                    $('#detallesTable tbody').append('<tr align="center"><td></td><td></td><td></td><td><button type="button" class="btnDelete btn btn-danger"><i class="fa fa-trash-o fa-1x"></i></button></td></tr>');
                    $('#detallesTable tr:last td:eq(0)').html('<input type="text" name="cueNum" class="form-control" value="'+ $("#cueNum").val() +'" readonly>');
                    $('#detallesTable tr:last td:eq(1)').html('<input type="text" name="asiDetDebHab" class="form-control" value="'+ $("#asiDetDebHab").val() +'" readonly>');
                    $('#detallesTable tr:last td:eq(2)').html('<input type="text" name="asiDetMon" class="form-control" value="'+ $("#asiDetMon").val() +'" readonly>');
                    $('#numDet').val($('#numDet').val() * 1 + 1);
                }
            });
            $("#detallesTable").on('click', '.btnDelete', function () {
                $(this).closest('tr').remove();
                $('#numDet').val($('#numDet').val() - 1);
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>