<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Logistica - Inventario</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <form id="formLote" role="form" action="" method="post">
            <div class="panel-body">
                <div class="form-group">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Inventario</h1>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            
                            <a href="${pageContext.request.contextPath}/secured/compras/addInventario" class="btn btn-success">Nuevo Inventario <i class="fa fa-plus"></i></a>
                            
                        </div>
                        <div class="col-md-3">
                            <div class="form-group input-group" >
                                <span class="input-group-addon">Flujo Efectivo:</span>
                                <a  href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=flujoefectivo&&jdbc=true&&key=null&&value=null" class="btn btn-danger" >
                                    <i class="fa fa-file-pdf-o"></i>
                                </a>
                                <a  href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=flujoefectivo&&jdbc=true&&key=null&&value=null" class="btn  btn-primary" >
                                    <i class="fa fa-file-word-o"></i>
                                </a>
                            </div>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">    
                                <table class="table table-striped table-bordered table-hover" id="tableInventarios">
                                    <thead>
                                        <tr>
                                            
                                            <th style="text-align: center">Código</th>
                                            <th style="text-align: center">Usuario</th>
                                            <th style="text-align: center">Fecha</th>
                                            <th style="text-align: center">Vista</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${invetariosCab}" var="c">
                                            <tr>
                                               
                                                <td style="text-align: center"> <c:out value="${c.invCabCod}"/></td>
                                                <td style="text-align: center"> <c:out value="${c.enP1mUsuario.usuNom} ${c.enP1mUsuario.usuApePat} ${c.enP1mUsuario.usuApeMat}"/></td>
                                                <td style="text-align: center"> <c:out value="${c.invCabFec}"/></td>
                                                <td style="text-align: center">
                                                    <a onclick='viewInventory("${c.invCabCod}")' title="Vista Detallada de Inventario">
                                                        <i class="fa fa-list-alt fa-lg" style="color: black;"></i>
                                                    </a> 
                                                </td>
                                               
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>  
                            </div>
                        </div>
                    </div>
<!--                    <div class="row">
                        <div class="col-lg-4">
                            <a href="$pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=registroventas&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-danger">
                                <i class="fa fa-file-pdf-o"></i>
                                Descargar Registro [PDF]
                            </a>
                        </div>
                        <div class="col-lg-4"></div>        
                    </div>-->
                </div>
            </div>
            
            
        </form>
        <div id="errorMessageModal" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Error</h4>
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
        <div class="modal fade" id="viewInventory">
            <div class="modal-dialog modal-lg">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3 class="modal-title">Inventario</h3>
                    </div>
                    <div class="modal-body " style="max-height: calc(100vh - 210px);overflow-y: auto;">   
                        <div class="panel-body">
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#general" data-toggle="tab">Información General</a></li>
                                <li><a href="#detail" data-toggle="tab">Detalle de Inventario</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="general"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="col-xs-12">
                                            <div class="col-xs-12 col-md-4">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">Inventario</span>
                                                    <input type="text" class="form-control" id="codInvCab" readOnly>
                                                    <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-12">
                                            <div class="col-xs-12 col-md-6">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">Usuario</span>
                                                    <input type="text" class="form-control" id="usuInvCabNom" readOnly>
                                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-md-6">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">Codigo</span>
                                                    <input type="text" class="form-control" id="usuInvCabCod" readOnly>
                                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-12">
                                            <div class="col-xs-12 col-md-4">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon">Fecha</span>
                                                    <input type="text" class="form-control" id="fecInvCab" readOnly>
                                                    <span class="input-group-addon"><i class="fa fa-arrow-down"></i></span>
                                                </div>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="detail"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="invCabDet">
                                                <thead align="center">
                                                    <tr >
                                                        <th style="text-align: center">Producto</th>
                                                        <th style="text-align: center">Diferencia</th>
                                                        <th style="text-align: center">Estado</th>
                                                        <th style="text-align: center">Cant. Real</th>
                                                        <th style="text-align: center">Cant. Virtual</th>
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
        
        <div id="loading" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-body">
                        <p align="center">Cargando ... </p>
                    </div>
                </div>         
            </div>
        </div>
                    
        <script language="javascript">
            var codeRefund = "";
            var typeRefund = "";
            
            $(document).ready(function () {
                $('#tableInventarios').DataTable({
                    responsive: true
                });
            });

            
            
            function viewInventory(invCabCod) {
                $("#loading").modal('show');
                $.post(
                        "${pageContext.request.contextPath}/secured/compras/searchInventory", {
                            invCabCod: invCabCod
                        }
                ).done(function (data) {
                    $("#codInvCab").val(data.cod);
                    $("#usuInvCabNom").val(data.usuNom);
                    $("#fecInvCab").val(data.fec);
                    $("#usuInvCabCod").val(data.usuCod);
                    $('#invCabDet').DataTable().clear().draw();
                    $('#invCabDet').DataTable().destroy();
                    data.detailList.forEach(function (detail) {
                        $('#invCabDet tbody').append('<tr><td width="40%" align="center"></td><td width="16%" align="center"></td><td width="20%" align="center"></td><td width="20%" align="center"></td><td width="20%" align="center"></td></tr>');
                        $('#invCabDet tr:last td:eq(0)').html(detail.proDet);
                        $('#invCabDet tr:last td:eq(1)').html(detail.proDif);
                        $('#invCabDet tr:last td:eq(2)').html(detail.proFal);
                        $('#invCabDet tr:last td:eq(3)').html(detail.proVir);
                        $('#invCabDet tr:last td:eq(4)').html(detail.proTot);
                    });
                    $('#invCabDet').DataTable({
                        responsive: true
                    });
                    $("#loading").modal('hide');
                    $("#viewInventory").modal('show');
                });
            }
            
            
            
        </script>
    </jsp:attribute>
</minierptemplate:template>
