<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<minierptemplate:template>
     <jsp:attribute name="titulo">
        <title>Guia Remision Transportista</title>
    </jsp:attribute>
     <jsp:attribute name="contenido">
         <form id="formLote" role="form" action="" method="post">
             <div class="panel-body">
                 <div class="form-group">
                     <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Guia Remision Transportista</h1>
                        </div>
                    </div>
                     <div class="row">
                         <div class="col-lg-12">
                             <div class="table-responsive">
                                 <table class="table table-striped table-bordered table-hover" id="tableGuiaRemision">
                                     <thead>
                                         <tr>
                                            <th style="text-align: center">Código</th>
                                            <th style="text-align: center">Nombre</th>
                                            <th style="text-align: center">Transportista</th>
                                            <th style="text-align: center">Uni.Transporte</th>
                                            <th style="text-align: center">Empresa</th>
                                            <th style="text-align: center">Num. Registro</th>
                                            <th style="text-align: center">Tipo Destinataraio</th>
                                            <th style="text-align: center">Destino</th>
                                            <th style="text-align: center">Acción</th>
                                         </tr>
                                     </thead>
                                     <tbody>
                                         <c:forEach items="${guias}" var="c">
                                             <tr>
                                         <td><c:out value="${c.guiRemTraNum}"/></td>
                                         <td><c:out value="${c.guiRemTraDen}"/></td>
                                         <td><c:out value="${c.enP2mTransportista.traNom} ${c.enP2mTransportista.traApePat} ${c.enP2mTransportista.traApeMat}"/></td>                                         
                                         <td><c:out value="${c.enP2mUnidadTransporte.uniTraMod}"/></td>                                         
                                         <td><c:out value="${c.enP1mEmpresa.empNomCom}"/></td>                                         
                                         <td><c:out value="${c.guiRemTraNumReg}"/></td>                                         
                                         <td><c:out value="${c.taGzzTipoDestinatario.tipDstDet}"/></td>                                         
                                         <td><c:out value="${c.guiRemTraDes}"/></td>                                         
                                         <td>
                                            <a onclick='viewFactura("${c.guiRemTraNum}")' title="Vista detallada de guía">
                                                <i class="fa fa-list-alt fa-2x" style="color: black;"></i>
                                            </a>
                                         </td>
                                         </c:forEach>
                                 </tr>
                                     </tbody>
                                 </table>
                             </div>
                         </div>
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
             </div>
         </form>
        <div class="modal fade" id="viewFactura">
            <div class="modal-dialog modal-lg">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3 class="modal-title">Facturas</h3>
                    </div>
                    <div class="modal-body">   
                        <div class="panel-body">
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#generalFacturas" data-toggle="tab">Facturas</a></li>                                
                                <!--
                                <li><a href="#detalleFactura" data-toggle="tab">Detalles</a></li>                                
                                <li><a href="#clienteFactura" data-toggle="tab">Clientes</a></li>
                                <li><a href="#facts" data-toggle="tab">Facturas</a></li>
                                -->
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="generalFacturas"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="guiFacturas">
                                                <thead align="center">
                                                    <tr >
                                                        <th>Código</th>
                                                        <th>F/B</th>
                                                        <th>Cliente</th>
                                                        <th>Usuario</th>
                                                        <th>Fecha</th>
                                                        <th>Total+IGV</th>
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
            var codeRefund = "";
            var typeRefund = "";
            
            $(document).ready(function () {
                $('#tableGuiaRemision').DataTable({
                    responsive: true
                });
            });

          function viewFactura(guiRemTraNum){                
                $("#loading").modal('show');
		$.post(
                        "${pageContext.request.contextPath}/secured/ventas/buscarFacturasEnGuiaRemTransporte", {
                            guiRemTraNum: guiRemTraNum
                        }						
                    ).done(function (data){
                        $('#guiFacturas').DataTable().clear().draw();
                        $('#guiFacturas').DataTable().destroy();
                        data.facturas.forEach(function (generalFacturas){                    
                            $('#guiFacturas tbody').append('<tr><td width="15%" align="center"></td><td width="5%" align="center"></td><td width="35%"></td><td width="35%"></td><td width="15%" align="center"></td><td width="10%" align="center"></td><td width="10%" align="center"></td></tr>');
                            $('#guiFacturas tr:last td:eq(0)').html(generalFacturas.facCabCod);
                            $('#guiFacturas tr:last td:eq(1)').html(generalFacturas.fb);
                            $('#guiFacturas tr:last td:eq(2)').html(generalFacturas.cliente);
                            $('#guiFacturas tr:last td:eq(3)').html(generalFacturas.usuario);
                            $('#guiFacturas tr:last td:eq(4)').html(generalFacturas.fecha);
                            $('#guiFacturas tr:last td:eq(5)').html((Number(generalFacturas.totaligv)).toFixed(2));
                            $('#guiFacturas tr:last td:eq(6)').html((Number(generalFacturas.subtotal)).toFixed(2));                                                      
                        });
                        $('#guiFacturas').DataTable({
                            responsive: true
                        });
                        $("#loading").modal('hide');
                        $("#viewFactura").modal('show');
                    });
                
            }
        </script>
     </jsp:attribute>
    
</minierptemplate:template>