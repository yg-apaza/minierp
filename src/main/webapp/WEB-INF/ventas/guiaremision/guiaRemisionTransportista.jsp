<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Guía Remisión Transportista</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Guía Remisión Transportista</h1>
                </div>
            </div>
            <div class="table-responsive">
                <table width="100%" class="table table-striped table-bordered table-hover" id="tableGuiaRemision">
                    <thead>
                        <tr>
                            <th style="text-align: center">Código</th>
                            <th style="text-align: center">Transportista</th>
                            <th style="text-align: center">Transporte</th>
                            <th style="text-align: center">Tipo Destinatario</th>
                            <th style="text-align: center">Acción</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${guias}" var="c">
                            <tr>
                                <td><c:out value="${c.guiRemTraNum}"/></td>
                                <td><c:out value="${c.enP2mTransportista.traNom} ${c.enP2mTransportista.traApePat} ${c.enP2mTransportista.traApeMat}"/></td>                                         
                                <td><c:out value="${c.enP2mUnidadTransporte.uniTraNumPla}"/></td>                                         
                                <td><c:out value="${c.taGzzTipoDestinatario.tipDstDet}"/></td>                                         
                                <td>
                                    <a onclick='viewCarrierGuide("${c.guiRemTraNum}")' title="Vista Detallada de Guía R. Transportista">
                                        <i class="fa fa-truck fa-lg" style="color: black;"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=registroventas&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-danger">
                        <i class="fa fa-file-pdf-o"></i>
                        Descargar Registro [PDF]
                    </a>
                </div>
                <div class="col-lg-4"></div>                           
            </div>
        </div>
        <div class="modal fade" id="viewCarrierGuide">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3 class="modal-title">Guía de Remisión Transportista</h3>
                    </div>
                    <div class="modal-body">   
                        <div class="panel-body">
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#generalguiTra" data-toggle="tab">Información General</a></li>
                                <li><a href="#detailgui" data-toggle="tab">Detalles</a></li>
                                <li><a href="#client" data-toggle="tab">Clientes</a></li>
                                <li><a href="#facts" data-toggle="tab">Facturas</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="generalguiTra"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Número de Guía de Transportista</span>
                                                <input type="text" class="form-control" id="guiRemTraNum" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Transportista</span>
                                                <input type="text" class="form-control" id="traNomCom" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Vehiculo</span>
                                                <input type="text" class="form-control" id="vehiculo" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-car"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Remitente(Empresa)</span>
                                                <input type="text" class="form-control" id="remitente" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-building"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Destinatario(Cliente)</span>
                                                <input type="text" class="form-control" id="destinatario" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-building"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Ruta</span>
                                                <input type="text" class="form-control" id="ruta" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-road"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="detailgui"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="guiTraDetPro">
                                                <thead align="center">
                                                    <tr >
                                                        <th>Cant.</th>
                                                        <th>Descripción</th>
                                                        <th>Precio</th>
                                                        <th>Importe</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="client"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="guiTraCli">
                                                <thead align="center">
                                                    <tr >
                                                        <th>Código</th>
                                                        <th>Nombre Comercial</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="facts"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="guiTraFac">
                                                <thead align="center">
                                                    <tr >
                                                        <th>Código</th>
                                                        <th>Fecha</th>
                                                        <th>Total</th>
                                                        <th>SubTotal</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
        <script language="javascript">

            $(document).ready(function () {
                $('#tableGuiaRemision').DataTable({
                    responsive: true
                });
            });

            function viewCarrierGuide(guiRemTraNum) {
                $("#loading").modal('show');
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchCarrierGuide", {
                            action: "view",
                            guiRemTraNum: guiRemTraNum
                        }
                ).done(function (data) {
                    $("#guiRemTraNum").val(data.guiRemTraNum);
                    $("#traNomCom").val(data.traNomCom);
                    $("#vehiculo").val(data.vehiculo);
                    $("#remitente").val(data.remitente);
                    $("#destinatario").val(data.destinatario);
                    $("#ruta").val(data.ruta);

                    $('#guiTraDetPro').DataTable().clear().draw();
                    $('#guiTraDetPro').DataTable().destroy();
                    data.traList.forEach(function (detailgui) {                        
                        $('#guiTraDetPro tbody').append('<tr><td width="16%" align="center"></td><td width="44%"></td><td width="20%" align="center"></td><td width="20%" align="center"></td></tr>');
                        $('#guiTraDetPro tr:last td:eq(0)').html(detailgui.detCan);
                        $('#guiTraDetPro tr:last td:eq(1)').html(detailgui.proDet);
                        $('#guiTraDetPro tr:last td:eq(2)').html(detailgui.preUniVen);
                        $('#guiTraDetPro tr:last td:eq(3)').html((Number(detailgui.detImp)).toFixed(2));
                    });
                    $('#guiTraDetPro').DataTable({
                        responsive: true
                    });

                    $('#guiTraCli').DataTable().clear().draw();
                    $('#guiTraCli').DataTable().destroy();
                    data.traCliList.forEach(function (client) {
                        $('#guiTraCli tbody').append('<tr><td width="20%" align="center"></td><td width="80%"></td></tr>');
                        $('#guiTraCli tr:last td:eq(0)').html(client.cliCod);
                        $('#guiTraCli tr:last td:eq(1)').html(client.cliNomCom);
                    });
                    $('#guiTraCli').DataTable({
                        responsive: true
                    });

                    $('#guiTraFac').DataTable().clear().draw();
                    $('#guiTraFac').DataTable().destroy();
                    data.facVenList.forEach(function (guiTraFac) {
                        $('#guiTraFac tbody').append('<tr><td width="20%" align="center"></td><td width="20%"></td><td width="30%" align="center"></td><td width="30%" align="center"></td></tr>');
                        $('#guiTraFac tr:last td:eq(0)').html(guiTraFac.facVenCabCod);
                        $('#guiTraFac tr:last td:eq(1)').html(guiTraFac.facVenCabFecEmi);
                        $('#guiTraFac tr:last td:eq(2)').html(guiTraFac.facVenCabTot);
                        $('#guiTraFac tr:last td:eq(3)').html(guiTraFac.facVenCabSubTot);
                    });
                    $('#guiTraFac').DataTable({
                        responsive: true
                    });

                    $("#loading").modal('hide');
                    $("#viewCarrierGuide").modal('show');
                });
            }

        </script>
    </jsp:attribute>

</minierptemplate:template>