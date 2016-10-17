<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuraciones - Documentos de clientes</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
            
        <div class="panel-body">
           <div id="sucursal">
		<div class="row">
			<h1 class="page-header"> Documentos de clientes 
                            <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
                        </h1>
                        
			<table class="table table-bordered table-striped table-hover" id="clientTable">
				<tr>    
					<th>Cliente</th>
                                        <th>Tipo de documento</th>
					<th>Número de documento</th>
                                        <th class="text-left">Acciones</th>
					
				</tr>
                                <c:forEach items="${docClientes}" var="docClientes">
                                    
                                    <tr>
                                      <td value="${docClientes}"> ${docClientes.enP1mCliente.cliApePat} ${docClientes.enP1mCliente.cliApeMat}, ${docClientes.enP1mCliente.cliNom} </td>
                                      <td value="${docClientes}"> ${docClientes.taGzzTipoDocCliente.tipDocCliDet} </td>
                                      <td value="${docClientes}"> ${docClientes.docCliNum} </td>
                                      <td class="text-left">
                                          <a href="#" data-toggle="modal" data-target="#modificarModal" data-clicod="${docClientes.enP1mCliente.cliCod}" data-cli="${docClientes.enP1mCliente.cliApePat} ${docClientes.enP1mCliente.cliApeMat}, ${docClientes.enP1mCliente.cliNom}" data-tipocod="${docClientes.taGzzTipoDocCliente.tipDocCliCod}" data-tipo="${docClientes.taGzzTipoDocCliente.tipDocCliDet}" data-num="${docClientes.docCliNum}" >
                                            <i class="fa fa-pencil-square-o fa-2x"></i> </a> 
                                          <a href="#" data-toggle="modal" data-target="#eliminarModal" data-clicod="${docClientes.enP1mCliente.cliCod}" data-cli="${docClientes.enP1mCliente.cliApePat} ${docClientes.enP1mCliente.cliApeMat}, ${docClientes.enP1mCliente.cliNom}" data-tipocod="${docClientes.taGzzTipoDocCliente.tipDocCliCod}" data-tipo="${docClientes.taGzzTipoDocCliente.tipDocCliDet}" data-num="${docClientes.docCliNum}" >
                                            <i class="fa fa-trash-o fa-2x"></i> </a>                                   
                                       </td>
                                    </tr> 
                                    
                                </c:forEach>		
			</table>
		</div>
            </div>            
                                
        </div>       
        
        <!-- MODAL PARA AGREGAR -->
        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar Documento de Cliente</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/documentoCliente">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-group">
                                <label> Cliente: </label><br/>
                                <select name="cliCod" >
                                    <c:forEach items="${cliente}" var="cliente">
                                        <option value="${cliente.cliCod}">${cliente.cliApePat} ${cliente.cliApeMat}, ${cliente.cliNom}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label> Tipo de Documento: </label><br/>
                                <select name="tipDocCliCod">
                                    <c:forEach items="${tipDocCli}" var="tipDocCli">
                                        <option value="${tipDocCli.tipDocCliCod}">${tipDocCli.tipDocCliDet}</option>
                                    </c:forEach>
                                </select>
                            </div>
                           
                            <div class="form-group">
                                <label>Número de Documento:</label>
                                <input class="form-control" name="docCliNum">
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
        
        <!-- MODAL PARA MODIFICAR -->
        <div id="modificarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar Documento de Cliente</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/documentoCliente">
                        <div class="modal-body">
                            <div class="form-group">
                            <input type="hidden" name="accion" value="update">
                            <input type="hidden" name="cliCod" id="updateDocCliCod">
                            <label>Cliente:</label>
                            <input class="form-control" name="docCli" id="updateDocCli" readonly>
                            
                            <div class="form-group">
                                <input type="hidden" name="tipDocCliCod" id="updateDocTipoCod">
                                <label>Tipo de Documento:</label>
                                <input class="form-control" name="tipDocCli" id="updateDocTipo" readonly>
                            </div>
                            
                            <div class="form-group">
                                <label>Número de Documento:</label>
                                <input class="form-control" name="docCliNum" id="updateDocNum">
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
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Documento</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/documentoCliente">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" class="form-control" name="cliCod" id="deleteDocCliCod">
                            <input type="hidden" class="form-control" name="tipDocCliCod" id="deleteTipDocCliCod">
                            <input type="hidden" class="form-control" name="docCliNum" id="deleteDocCliNum">
                            <p> ¿Desea eliminar el <span id="deleteDocTipo"></span> con número <span id="deleteDocNum"></span>, del cliente: <span id="deleteDocCli"></span>?</p>
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
            var updateModal = $("#modificarModal");
            var deleteModal = $("#eliminarModal");
            
            var updateDocCliCod = $("#updateDocCliCod"); 
            var updateDocCli = $("#updateDocCli"); 
            var updateDocTipoCod = $("#updateDocTipoCod");
            var updateDocTipo = $("#updateDocTipo");
            var updateDocNum = $("#updateDocNum");
         
            
            var deleteDocCliCod = $("#deleteDocCliCod");
            var deleteTipDocCliCod = $("#deleteTipDocCliCod");
            var deleteDocCliNum = $("#deleteDocCliNum");
            var deleteDocCli = $("#deleteDocCli");
            var deleteDocTipo = $("#deleteDocTipo");
            var deleteDocNum = $("#deleteDocNum");
            
            
            updateModal.on('show.bs.modal', function(e){
                updateDocCliCod.val($(e.relatedTarget).data('clicod'));
                updateDocCli.val($(e.relatedTarget).data('cli'));
                updateDocTipoCod.val($(e.relatedTarget).data('tipocod'));
                updateDocTipo.val($(e.relatedTarget).data('tipo'));
                updateDocNum.val($(e.relatedTarget).data('num'));
            });
            
            deleteModal.on('show.bs.modal', function(e){
                deleteDocCliCod.val($(e.relatedTarget).data('clicod'));
                deleteTipDocCliCod.val($(e.relatedTarget).data('tipocod'));
                deleteDocCliNum.val($(e.relatedTarget).data('num'));
                deleteDocCli.text($(e.relatedTarget).data('cli'));
                deleteDocTipo.text($(e.relatedTarget).data('tipo'));
                deleteDocNum.text($(e.relatedTarget).data('num'));
            });
            
            $("#createForm").validate({
                rules: {
                    docNum: {
                        required: true
                    }
                },
                messages: {
                    docNum: {
                        required: "Es necesario ingresar un número de documento."
                       }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
            
            $("#updateForm").validate({
                rules: {
                    docNum: {
                        required: true
                    }
                },
                messages: {
                    docNum: {
                        required: "Es necesario un número de documento."
                    }    
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        </script>    
     
    </jsp:attribute>
</minierptemplate:template>
