<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Configuraciones </title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
            
        <div class="pagel-body">
           <!--Contenido de Sucursal-->
           <div id="sucursal">
		<div class="row">
			<h2 class="page-header"> Sucursales 
                        <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a></h2>
            
			<table class="table table-bordered table-striped table-hover" id="productTableM">
				<tr>    
                                        <th> Codigo </th>
					<th>Descripcion</th>
					<th>Direccion</th>
                                        <th class="text-right">Acciones </th>
					
				</tr>
                                <c:forEach items="${sucursales}" var="sucursales">
                                    
                                    <tr>
                                      <td value="${sucursales}"> ${sucursales.sucCod} </td> 
                                      <td value="${sucursales}"> ${sucursales.sucDes} </td> 
                                      <td value="${sucursales}"> ${sucursales.sucDir} </td>
                                      <td class="text-left">
                                          <a href="#" data-toggle="modal" data-target="#modificarModal" data-cod="${sucursales.sucCod}" data-des="${sucursales.sucDes}" data-dir="${sucursales.sucDir}" >
                                            <i class="fa fa-pencil-square-o fa-2x"></i> </a> 
                                          <a href="#" data-toggle="modal" data-target="#eliminarModal" data-cod="${sucursales.sucCod}" data-des="${sucursales.sucDes}" data-dir="${sucursales.sucDir}" >
                                            <i class="fa fa-trash-o fa-2x"></i> </a>                                   
                                       </td>
                                    </tr> 
                                    
                                </c:forEach>		
			</table>
		</div>
            </div>            
                                
        </div>       
        
        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar Sucursal</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/sucursal">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-group">
                            <label> Nombre de Sucursal: </label>
                                <input class="form-control" name="sucDes">
                            </div>
                           
                            <div class="form-group">
                                <label>Direccion:</label>
                                <input class="form-control" name="sucDir">
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
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar Sucursal</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/sucursal">
                        <div class="modal-body">
                            <div class="form-group">
                            <input type="hidden" name="accion" value="update">
                            <input type="hidden" name="sucCod" id="updateSucCod">
                           
                            <div class="form-group">
                                <label>Nombre de Sucursal:</label>
                                <input class="form-control" name="sucDes" id="updateSucDes">
                            </div>
                            
                             <div class="form-group">
                                <label>Direccion:</label>
                                <input class="form-control" name="sucDir" id="updateSucDir">
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
        
        <div id="eliminarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar sucursal</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/sucursal">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" name="sucCod" id="deleteSucCod">
                            <p> ¿Desea eliminar la sucursal- <span id="deleteSucDes"></span> ubicado en <span id="deleteSucDir"></span>?</p>
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
            var updateSucCod = $("#updateSucCod"); 
            var updateSucDes = $("#updateSucDes");
            var updateSucDir = $("#updateSucDir");
         
            
            var deleteSucCod = $("#deleteSucCod");
            var deleteSucDes = $("#deleteSucDes");
            var deleteSucDir = $("#deleteSucDir");
            
            
            updateModal.on('show.bs.modal', function(e){
                updateSucCod.val($(e.relatedTarget).data('cod'));
                updateSucDes.val($(e.relatedTarget).data('des'));
                updateSucDir.val($(e.relatedTarget).data('dir'));
            });
            
            deleteModal.on('show.bs.modal', function(e){
                deleteSucCod.val($(e.relatedTarget).data('cod'));
                deleteSucDes.text($(e.relatedTarget).data('des'));
                deleteSucDir.text($(e.relatedTarget).data('dir'));
            });
            
            $("#createForm").validate({
                rules: {
                    sucDes: {
                        required: true
                        }
                },
                messages: {
                    sucDes: {
                        required: "Es necesario un nombre de sucursal"
                       }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
            
            $("#updateForm").validate({
                rules: {
                    sucDir: {
                        required: true
                    }
                },
                messages: {
                    sucDir: {
                        required: "Es necesario ingresar una Direccion"
                    }    
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        </script>    
     
    </jsp:attribute>
</minierptemplate:template>
