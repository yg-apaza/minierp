<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Almacén</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Almacén</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6 col-md-4">
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#agregarModal"> Agregar nuevo <i class="fa fa-plus"></i></button>                
                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#estadosModal"> Ver Inhabilitados <i class="fa fa-eye"></i></button>    
                </div>
            </div>
            <br>
            <div class="form-horizontal">
                <div class="col-sm-12">      
                    <table class="table table-bordered table-striped table-hover" id="tablaAlmacenes">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Nombre</th>
                                <th>Sucursal</th>
                                <th>Volumen Total</th>
                                <th>Observaciones</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>                           
                            <c:forEach var="u" items="${almacenes}">
                                <tr>
                                    <td>${u.almCod}</td>
                                    <td>${u.almDet}</td>
                                    <td>${u.enP1mSucursal.sucDes}</td>
                                    <td>${u.almVolTot}</td>
                                    <td>${u.almObs}</td>
                                    <td class="text-center">
                                         <a onclick='verProductos("${u.almCod}")' title="Productos del Almacén">
                                             <i class="fa fa-eye fa-lg" style="color: black;"></i> 
                                         </a>
                                        <a href="#" data-toggle="modal" data-target="#modificarModal" 
                                           title="Modificar Almacén"
                                           data-almcod="${u.almCod}" data-almdet="${u.almDet}" data-succod="${u.enP1mSucursal.sucCod}"
                                           data-almvoltot="${u.almVolTot}" data-almobs="${u.almObs}">
                                           <i class="fa fa-pencil-square-o fa-lg" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#disableModal" 
                                           title="Inhabilitar Almacén"
                                           data-almcod="${u.almCod}" data-almdet="${u.almDet}" data-succod="${u.enP1mSucursal.sucCod}"
                                           data-almvoltot="${u.almVolTot}" data-almobs="${u.almObs}">
                                           <i class="fa fa-trash-o fa-lg" style="color: black;"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>                    
                </div>                                
            </div>            
        </div>
        
        
        <div id="verProductos" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Productos Almacén</h4>
                    </div>
                    <div class="modal-body">
                        <div class="panel-body">
                                <div class="col-md-12" id="prod">                                                        
                                    <div class="table-responsive">
                                        <table width="100%" class="table table-striped table-bordered table-hover" id="tablaProductos">
                                            <thead align="center">
                                                <tr>
                                                    <th>Código</th>
                                                    <th>Cod. Barra</th>
                                                    <th>Nombre</th>
                                                    <th>SubClase</th>
                                                    <th>Clase</th>
                                                    <th>Pre.Uni.Venta</th>
                                                    <th>Pre.Uni.Compra</th>
                                                </tr>
                                            </thead>
                                        </table>
                                    </div>                        
                                </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>                    
            </div>
        </div>
        </div>
        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content" style="overflow-y: auto">
                   <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar Almacén</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/logistica/almacen">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label class="control-label">Código Almacén</label>
                                        <input type="text" class="form-control" placeholder="Código Almacén" name="almCod">
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Nombre Almacén</label>
                                        <input type="text" class="form-control" placeholder="Nombre Almacén" name="almDet">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Sucursal</label>
                                        <select class="form-control" name="sucCod">
                                            <c:forEach var="u" items="${sucursales}">
                                                <option value="${u.sucCod}">${u.sucCod} - ${u.sucDes}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Volumen de Almacenamiento</label>
                                        <input type="number" class="form-control" placeholder="Volumen de Almacenamiento" name="almVolTot">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12"> 
                                        <label class="control-label">Observaciones</label>
                                        <input type="text" class="form-control" placeholder="Observaciones" name="almObs">
                                    </div>
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

        <div id="modificarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar Almacén</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/logistica/almacen">
                        <div class="modal-body">
                            <div class="form-horizontal">
                                <input type="hidden" name="accion" value="update">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label class="control-label">Código Almacén</label>
                                        <input type="text" class="form-control" id="updateAlmCod" placeholder="Código Almacén" name="almCod" readonly>
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Nombre Almacén</label>
                                        <input type="text" class="form-control" name="almDet" id="updateAlmDet" placeholder="Nombre Almacén" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Sucursal</label>
                                        <select class="form-control" name="sucCod" id="updateSucCod">
                                            <c:forEach var="u" items="${sucursales}">
                                                <option value="${u.sucCod}">${u.sucCod} - ${u.sucDes}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Volumen de Almacenamiento</label>
                                        <input type="number" class="form-control" id="updateAlmVolTot" placeholder="Volumen de Almacenamiento" name="almVolTot">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12"> 
                                        <label class="control-label">Observaciones</label>
                                        <input type="text" class="form-control" id="updateAlmObs" placeholder="Observaciones" name="almObs">
                                    </div>
                                </div>                                                                
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
                        <h4 class="modal-title">Inhabilitar Almacén</h4>
                    </div>
                    <form id="disableForm" method="post" action="${pageContext.request.contextPath}/secured/logistica/almacen">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="disable">
                            <input type="hidden" name="almCod" id="disableAlmCod">
                            <p> ¿Desea inhabilitar el Almacén <span id="disableAlmDet"></span> ?</p>
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
                <div class="modal-content" >
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Reactivar o Eliminar Almacén</h4>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table class="table table-hover" id="tablaUsuarios">                                                                
                                <thead>
                                    <tr>
                                        <th>Código</th>
                                        <th>Nombre</th>
                                        <th>Sucursal</th>
                                        <th>Volumen de Almacenamiento</th>
                                        <th>Observaciones</th>                                                                                
                                        <th class="text-right">Acciones </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="u" items="${inactivos}">
                                        <tr>
                                            <td>${u.almCod}</td>
                                            <td>${u.almDet}</td>
                                            <td>${u.enP1mSucursal.sucDes}</td>
                                            <td>${u.almVolTot}</td>
                                            <td>${u.almObs}</td>
                                            <td class="text-center">
                                                <a href="#" data-toggle="modal" data-target="#activateModal"
                                                   title="Re-Activar Almacén"
                                                   data-almcod="${u.almCod}" data-almdet="${u.almDet}">
                                                    <i class="fa fa-check fa-lg" style="color: green;"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#deleteModal" 
                                                   title="Eliminar Almacén"
                                                   data-almcod="${u.almCod}" data-almdet="${u.almDet}">
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
                        <h4 class="modal-title">Activar Almacén</h4>
                    </div>
                    <form id="activateForm" method="post" action="${pageContext.request.contextPath}/secured/logistica/almacen">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="activate">
                            <input type="hidden" name="almCod" id="activateAlmCod">
                            <p> ¿Desea Habilitar el Almacén <span id="activateAlmNom"></span> ?</p>
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
                        <h4 class="modal-title">Eliminar Almacén</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/logistica/almacen">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" name="almCod" id="deleteAlmCod">
                            <p> ¿Desea Eliminar el Almacén <span id="deleteAlmDet"></span> ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <script language="javascript">
            //$('#tablaUsuarios').DataTable({
              //  responsive: true
            //});
            $(document).ready(function () {
                $('#tablaAlmacenes').DataTable({
                    responsive: true
                });
            });
            function verProductos(almCod){
                $("#loading").modal('show');
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/buscarProductosAlmacen", {
                            action: "ver",
                            almCod: almCod
                        }
                ).done(function (data) {                    
                    $('#tablaProductos').DataTable().clear().draw();
                    $('#tablaProductos').DataTable().destroy();
                    data.productos.forEach(function (prod){
                        $('#tablaProductos tbody').append('<tr><td width="16%" align="center"></td><td width="16%" align="center"></td><td width="25%" align="center"></td><td width="16%" align="center"></td><td width="16%" align="center"></td><td width="16%" align="center"></td><td width="16%" align="center"></td>');
                        $('#tablaProductos tr:last td:eq(0)').html(prod.proCod);
                        $('#tablaProductos tr:last td:eq(1)').html(prod.proCodBar);
                        $('#tablaProductos tr:last td:eq(2)').html(prod.proDet);
                        $('#tablaProductos tr:last td:eq(3)').html(prod.subClaProd);
                        $('#tablaProductos tr:last td:eq(4)').html(prod.claProd);
                        $('#tablaProductos tr:last td:eq(5)').html((Number(prod.preUniCom)).toFixed(2));
                        $('#tablaProductos tr:last td:eq(6)').html((Number(prod.preUniVen)).toFixed(2));
                    });
                    $('#tablaProductos').DataTable({
                        responsive: true
                    });
                    
                    
                    $("#loading").modal('hide');
                    $("#verProductos").modal('show');
            });
            
        }
            
            var updateModal = $("#modificarModal");
            var disableModal = $("#disableModal");
            var activateModal = $("#activateModal");
            var deleteModal = $("#deleteModal");

            
            var updateAlmCod= $("#updateAlmCod");
            var updateAlmDet= $("#updateAlmDet");
            var updateSucCod= $("#updateSucCod");
            var updateAlmVolTot= $("#updateAlmVolTot");
            var updateAlmObs= $("#updateAlmObs");
            
            var disableAlmCod = $("#disableAlmCod");
            var disableAlmDet = $("#disableAlmDet");
            
            var activateAlmCod = $("#activateAlmCod");
            var activateAlmDet = $("#activateAlmDet");
            
            var deleteAlmCod = $("#deleteAlmCod");
            var deleteAlmDet = $("#deleteAlmDet");
                      
            updateModal.on('show.bs.modal', function (e) {          
                updateAlmCod.val($(e.relatedTarget).data('almcod'));
                updateAlmDet.val($(e.relatedTarget).data('almdet'));
                updateSucCod.val($(e.relatedTarget).data('succod'));
                updateAlmVolTot.val($(e.relatedTarget).data('almvoltot'));
                updateAlmObs.val($(e.relatedTarget).data('almobs'));
            });
            disableModal.on('show.bs.modal', function (e) {
                disableAlmCod.val($(e.relatedTarget).data('almcod'));
                disableAlmDet.text($(e.relatedTarget).data('almdet'));
            });

            activateModal.on('show.bs.modal', function (e) {
                activateAlmCod.val($(e.relatedTarget).data('almcod'));
                activateAlmDet.text($(e.relatedTarget).data('almdet') );
            });

            deleteModal.on('show.bs.modal', function (e) {
                deleteAlmCod.val($(e.relatedTarget).data('almcod'));
                deleteAlmDet.text($(e.relatedTarget).data('almdet'));
            });
            
            $("#createForm").validate({
                rules: {
                    usuCod: {
                        required: true,
                        number: true
                    }
                },
                messages: {
                    usuCod: {
                        required: "El Código de Usuario es Requerido",
                        number: "El Código de Usuario debe ser Numérico"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

        </script>
    </jsp:attribute>
</minierptemplate:template>
