<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuraciones - Unidades de Transporte</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <br>
        <div class="pagel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> Unidades de Transporte </h1>
                </div>        
            </div>
            <div class="row">
                <div class="col-xs-6 col-md-5">
                    <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#agregarModal"> Agregar Nuevo <i class="fa fa-plus"></i></button>
                    </c:if>
                </div>
            </div><br> 
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover" id="tablaDocClientes">
                        <thead>
                            <tr>    
                                <th>Tipo de unidad</th>
                                <th>Modelo</th>
                                <th>Marca</th>
                                <th>Peso</th>
                                <th>Número de placa</th>
                                <th>Estado de la unidad</th>
                                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <th class="text-left">Acciones</th>
                                </c:if>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${unTrs}" var="unTrs">
                                <tr>
                                    <td value="${unTrs}"> ${unTrs.taGzzTipoUniTransporte.tipUniTraDet} </td>
                                    <td value="${unTrs}"> ${unTrs.uniTraMod} </td>
                                    <td value="${unTrs}"> ${unTrs.uniTraMar} </td>
                                    <td value="${unTrs}"> ${unTrs.uniTraPes} </td>
                                    <td value="${unTrs}"> ${unTrs.uniTraNumPla} </td>
                                    <td value="${unTrs}"> ${unTrs.taGzzEstadoUniTransporte.estUniTraDet} </td>
                                    <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                        <td class="text-left">
                                            <a href="#" data-toggle="modal" data-target="#modificarModal" 
                                               title="Modificar Unidad de Transporte"
                                               data-untracod="${unTrs.uniTraCod}" data-tipuntracod="${unTrs.taGzzTipoUniTransporte.tipUniTraCod}" data-untramod="${unTrs.uniTraMod}" data-untramar="${unTrs.uniTraMar}" data-untrapes="${unTrs.uniTraPes}" data-untranumpla="${unTrs.uniTraNumPla}" data-estuntracod="${unTrs.taGzzEstadoUniTransporte.estUniTraCod}">
                                            <i class="fa fa-pencil-square-o fa-lg" style="color: black;"></i> </a> 
                                            <a href="#" data-toggle="modal" data-target="#eliminarModal" 
                                               title="Eliminar Unidad de Transporte"
                                               data-untracod="${unTrs.uniTraCod}" data-tipuntradet="${unTrs.taGzzTipoUniTransporte.tipUniTraDet}" data-tipuntracod="${unTrs.taGzzTipoUniTransporte.tipUniTraCod}" data-untramod="${unTrs.uniTraMod}" data-untramar="${unTrs.uniTraMar}" data-untrapes="${unTrs.uniTraPes}" data-untranumpla="${unTrs.uniTraNumPla}" data-estuntracod="${unTrs.taGzzEstadoUniTransporte.estUniTraCod}">
                                            <i class="fa fa-trash-o fa-lg" style="color: black;"></i> </a>                                   
                                        </td>
                                    </c:if>
                                </tr> 
                            </c:forEach>		
                        </tbody>
                    </table>
                </div>
            </div>                        
        </div>       
        
        <!-- MODAL PARA AGREGAR -->
        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar unidad de transporte</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/unidadTransporte">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-group">
                                    <label> Código: </label><br/>
                                    <input type="text" class="form-control" name="unTraCod" id="unTraCod">
                            </div>
                            <div class="form-group"> 
                                    <label> Tipo de Unidad: </label><br/>
                                    <select name="tipUnTraCod" id="tipUnTraCod" class="form-control">
                                            <c:forEach items="${tipUn}" var="tipUn">
                                                    <option value="${tipUn.tipUniTraCod}">${tipUn.tipUniTraDet}</option>
                                            </c:forEach>
                                    </select>
                            </div>
                            <div class="form-group">
                                    <label> Modelo: </label><br/>
                                    <input type="text" class="form-control" name="unTraMod" id="unTraMod">
                            </div>
                            <div class="form-group">
                                    <label> Marca: </label><br/>
                                    <input type="text" class="form-control" name="unTraMar" id="unTraMar">
                            </div>
                            <div class="form-group">
                                    <label> Peso: </label><br/>
                                    <input type="text" class="form-control" name="unTraPes" id="unTraPes">
                            </div>
                            <div class="form-group">
                                    <label> Número de placa: </label><br/>
                                    <input type="text" class="form-control" name="unTraNumPla" id="unTraNumPla">
                            </div>
                            <%--Por si se quiere agregar el estado--%>
                            <%--div class="form-group">
                                <label> Estado de la unidad: </label><br/>
                                <select name="estUnTraCod" id="updtEstUnTraCod" class="form-control">
                                    <!c:forEach items="$!{estUn}" var="estUn">
                                        <option value="$!{estUn.estUniTraCod}">$!{estUn.estUniTraDet}</option>
                                    <!/c:forEach>
                                </select>
                            </div--%>
                        </div>   
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Agregar</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div>
        
        <!-- MODAL PARA MODIFICAR -->
        <div id="modificarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar datos de unidad de transporte</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/unidadTransporte">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="update">  
                            <input type="hidden" name="unTraCod" id="updtUnTraCod">
                            <div class="form-group"> 
                                <label> Tipo de Unidad: </label><br/>
                                <select name="tipUnTraCod" id="updtTipUnTraCod" class="form-control">
                                    <c:forEach items="${tipUn}" var="tipUn">
                                        <option value="${tipUn.tipUniTraCod}">${tipUn.tipUniTraDet}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label> Modelo: </label><br/>
                                <input type="text" class="form-control" name="unTraMod" id="updtUnTraMod">
                            </div>
                            <div class="form-group">
                                <label> Marca: </label><br/>
                                <input type="text" class="form-control" name="unTraMar" id="updtUnTraMar">
                            </div>
                            <div class="form-group">
                                <label> Peso: </label><br/>
                                <input type="text" class="form-control" name="unTraPes" id="updtUnTraPes">
                            </div>
                            <div class="form-group">
                                <label> Número de placa: </label><br/>
                                <input type="text" class="form-control" name="unTraNumPla" id="updtUnTraNumPla">
                            </div>
                            <div class="form-group">
                                <label> Estado de la unidad: </label><br/>
                                <select name="estUnTraCod" id="updtEstUnTraCod" class="form-control">
                                    <c:forEach items="${estUn}" var="estUn">
                                        <option value="${estUn.estUniTraCod}">${estUn.estUniTraDet}</option>
                                    </c:forEach>
                                </select>
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
        </div>
        
        <!-- MODAL PARA ELIMINAR -->
        <div id="eliminarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Documento</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/unidadTransporte">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" class="form-control" name="unTraCod" id="delTraCod">
                            <input type="hidden" class="form-control" name="tipUnTraCod" id="delTipUnTraCod">
                            <input type="hidden" class="form-control" name="unTraMod" id="delUnTraMod">
                            <input type="hidden" class="form-control" name="unTraMar" id="delUnTraMar">
                            <input type="hidden" class="form-control" name="unTraPes" id="delUnTraPes">
                            <input type="hidden" class="form-control" name="unTraNumPla" id="delUnTraNumPla">
                            <input type="hidden" class="form-control" name="estUnTraCod" id="delEstUnTraCod">
                            <p> ¿Desea dar de baja a la unidad de transporte: <span id="delTraMarca"></span> - <span id="delTraModel"></span>, tipo: <span id="delTraTipo"></span> con número de placa: <span id="delTraPlaca"></span>?</p>
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
            $('#tablaDocClientes').DataTable({
                responsive: true
            });
            var updateModal = $("#modificarModal");
            var deleteModal = $("#eliminarModal");
            
            var updttraCod = $("#updtUnTraCod"); 
            var updttipUnTraCod = $("#updtTipUnTraCod"); 
            var updtunTraMod = $("#updtUnTraMod");
            var updtunTraMar = $("#updtUnTraMar");
            var updtunTraPes = $("#updtUnTraPes");
            var updtunTraNumPla = $("#updtUnTraNumPla"); 
            var updtestUnTraCod = $("#updtEstUnTraCod");
            
            var deltraCod = $("#delTraCod"); 
            var deltipUnTraCod = $("#delTipUnTraCod"); 
            var delunTraMod = $("#delUnTraMod");
            var delunTraMar = $("#delUnTraMar");
            var delunTraPes = $("#delUnTraPes");
            var delunTraNumPla = $("#delUnTraNumPla"); 
            var delestUnTraCod = $("#delEstUnTraCod");
            
            var delTraMarca = $('#delTraMarca');
            var delTraModel = $('#delTraModel');
            var delTraPlaca = $('#delTraPlaca');
            var delTraTipo = $('#delTraTipo');
         
            
            
            updateModal.on('show.bs.modal', function(e){
                updttraCod.val( $(e.relatedTarget).data('untracod')); 
                updttipUnTraCod.val( $(e.relatedTarget).data('tipuntracod')); 
                updtunTraMod.val( $(e.relatedTarget).data('untramod'));
                updtunTraMar.val( $(e.relatedTarget).data('untramar'));
                updtunTraPes.val( $(e.relatedTarget).data('untrapes'));
                updtunTraNumPla.val( $(e.relatedTarget).data('untranumpla')); 
                updtestUnTraCod.val( $(e.relatedTarget).data('estuntracod'));
            });
            
            deleteModal.on('show.bs.modal', function(e){
                deltraCod.val( $(e.relatedTarget).data('untracod')); 
                deltipUnTraCod.val( $(e.relatedTarget).data('tipuntracod')); 
                delunTraMod.val( $(e.relatedTarget).data('untramod'));
                delunTraMar.val( $(e.relatedTarget).data('untramar'));
                delunTraPes.val( $(e.relatedTarget).data('untrapes'));
                delunTraNumPla.val( $(e.relatedTarget).data('untranumpla')); 
                delestUnTraCod.val( $(e.relatedTarget).data('estuntracod'));
                delTraMarca.text($(e.relatedTarget).data('untramar'));
                delTraModel.text($(e.relatedTarget).data('untramod'));
                delTraPlaca.text($(e.relatedTarget).data('untranumpla'));
                delTraTipo.text($(e.relatedTarget).data('tipuntradet'));
            });
            $("#createForm").validate({
                rules: {
                    unTraPes: {
                        number: true
                        }
                },
                messages: {
                    unTraPes: {
                        number: "Ingrese sólo números."
                       }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
            
            $("#updateForm").validate({
                rules: {
                    unTraPes: {
                        number: true
                        }
                },
                messages: {
                    unTraPes: {
                        number: "Ingrese sólo números."
                       }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        </script>    
     
    </jsp:attribute>
</minierptemplate:template>
