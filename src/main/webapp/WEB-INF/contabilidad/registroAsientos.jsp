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
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4>Configuración a partir de plantilla de asiento</h4>
                    <div class="row">
                        <form method="get" action="${pageContext.request.contextPath}/secured/contabilidad/asientos">
                            <div class="col-md-8">
                                <select name="plaCod" id="plaCod" class="form-control">
                                    <option value="0">Ninguno</option>
                                    <c:forEach var="p" items="${plantillas}">
                                        <option value="${p.plaCod}">${p.plaDet}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-md-4">
                                <button type="submit" class="btn btn-info btn-block">Utilizar esta plantilla</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="panel-body">
                    <h4>Configuración manual</h4>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/asientos">
                        <div class="row">
                            <div class="col-md-8 col-sm-8">
                                <div class="form-group">
                                    <label>Glosa:</label>
                                    <input class="form-control" name="asiCabGlo" value="${glosa}">
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label>Fecha:</label>
                                    <div class='input-group date' id='asiCabFec'>
                                        <input type='text' name="asiCabFec" class="form-control" />
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-4">
                                <div class="form-group">
                                    <label>Tipo de Comprobante:</label>
                                    <select name="tipComCod" id="tipComCod" class="form-control">
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
                                    <input id="asiCabNumCom" class="form-control" name="asiCabNumCom" readonly>
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
                                <label>Detalle de Asiento</label>
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
                                    <input id="asiDetMon" type="number" min="0" placeholder="Monto" class="form-control">
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
                                                <th width="20%">Cuenta</th>
                                                <th width="40%">Denominación</th>
                                                <th width="15%">Debe</th>
                                                <th width="15%">Haber</th>
                                                <th width="10%">Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                                </div>
                                <input type="hidden" name="numDet" value="0" id="numDet">
                                <input type="hidden" name="cuadre" value="0" id="cuadre">
                            </div>
                        </div>
                        <button type="submit" class="btn btn-outline btn-success">Agregar</button>
                    </form>
                </div>
            </div>
        </div>
        <div id="errorMessageModal" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Error en detalle de Asiento</h4>
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
            $('#asiCabFec').datetimepicker({
                    locale: 'es',
                    format: 'DD/MM/YYYY',
                    defaultDate: new Date()
            });
            $('#tipComCod').on('change', function() {
                var value = $(this).val();
                if($(this).val() == 0)
                    $('#asiCabNumCom').prop('readonly', true);
                else
                    $('#asiCabNumCom').prop('readonly', false);
            });
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
                if ($('#cueNum').val().length < 2) {
                    errors += "Cuenta contable debe ser al menos de nivel 2.";
                    showError = true;
                }
                if ($('#cueDes').val() == "Incorrecto" || $('#cueDes').val() == "") {
                    errors += "Cuenta contable incorrecta.";
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
                    $('#detallesTable tbody').append('<tr align="center"><td></td><td></td><td></td><td></td><td><button type="button" class="btnDelete btn btn-danger"><i class="fa fa-trash-o fa-1x"></i></button></td></tr>');
                    $('#detallesTable tr:last td:eq(0)').html('<input type="text" name="cueNum" class="form-control" value="'+ $("#cueNum").val() +'" readonly>');
                    $('#detallesTable tr:last td:eq(1)').html('<input type="text" class="form-control" value="'+ $("#cueDes").val() +'" readonly>');
                    if($("#asiDetDebHab").val() == "DEBE")
                    {
                        $('#detallesTable tr:last td:eq(2)').html('<input type="text" name="asiDetDeb" class="form-control" value="'+ $("#asiDetMon").val() +'" readonly>');
                        $('#detallesTable tr:last td:eq(3)').html('<input type="text" name="asiDetHab" class="form-control" value="'+ 0 +'" readonly>');
                    }
                    else
                    {
                        $('#detallesTable tr:last td:eq(2)').html('<input type="text" name="asiDetDeb" class="form-control" value="'+ 0 +'" readonly>');
                        $('#detallesTable tr:last td:eq(3)').html('<input type="text" name="asiDetHab" class="form-control" value="'+ $("#asiDetMon").val() +'" readonly>');
                    }
                    var debe = $("#createForm :input[name='asiDetDeb']");
                    var haber = $("#createForm :input[name='asiDetHab']");
                    var total = 0;
                    for(i = 0; i < debe.length; i++)
                    {
                        total = total + 1 * $(debe[i]).val();
                        total = total - 1 * $(haber[i]).val();
                    }
                    $('#cuadre').val(total);
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
                    cuadre: {
                        range: [0, 0]
                    },
                    numDet: {
                        min: 2
                    }
                },
                messages: {
                    cuadre: {
                        range: "El balance de asientos no cuadra."
                    },
                    numDet: {
                        min: "Ingrese al menos 2 líneas de detalle."
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>