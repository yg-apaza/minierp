<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuraciones - Sucursal</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
            
        <div class="panel-body">
           <!--Contenido de Sucursal-->
           <div id="sucursal">
		<div class="row">
                    <div class="col-lg-12">
			<h1 class="page-header"> Sucursales 
                            <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
                            <a href="#" class="btn btn-info btn-circle" data-toggle="modal" data-target="#estadosModal"><i class="fa fa-eye"></i></a>
                        </h1>
                    </div>        
		</div>
               <div class="row">
                   <div class="col-lg-12">
                       <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover" id="productTableM">
                                    <tr>    
                                        <th> Código </th>
                                        <th>Descripción</th>
                                        <th>Dirección</th>
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
                                              <a href="#" data-toggle="modal" data-target="#disableModal" data-cod="${sucursales.sucCod}" data-des="${sucursales.sucDes}" data-dir="${sucursales.sucDir}" >
                                                <i class="fa fa-trash-o fa-2x"></i> </a>                                   
                                           </td>
                                        </tr> 

                                    </c:forEach>		
                            </table>
                        </div>
                   </div>
               </div>
            </div>            
                                
        </div>       
        
        <div id="agregarModal" class="modal fade" role="dialog">
           
            <div class="modal-dialog modal-sm" >
                
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
        </div>
        
         
        <div id="estadosModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Reactivar o Eliminar Sucursal</h4>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Cod Sucursal</th>
                                        <th>Det Sucursal</th>
                                        <th>Dirección</th>
                                        <th>Registro</th>
                                        <th class="text-right">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="inactivos" items="${inactivos}">
                                        <tr>
                                          <td value="${inactivos}"> ${inactivos.sucCod} </td> 
                                          <td value="${inactivos}"> ${inactivos.sucDes} </td> 
                                          <td value="${inactivos}"> ${inactivos.sucDir} </td>
                                          <td value="${inactivos}"> ${inactivos.estRegCod} </td>
                                            <td class="text-right">
                                                <a href="#" data-toggle="modal" data-target="#activeModal" data-cod="${inactivos.sucCod}" data-des="${inactivos.sucDes}" data-dir="${inactivos.sucDir}">
                                                    <i class="fa fa-check fa-2x" style="color: green;"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#eliminarModal" data-cod="${inactivos.sucCod}" data-des="${inactivos.sucDes}" data-dir="${inactivos.sucDir}">
                                                    <i class="fa fa-trash-o fa-2x" style="color: red;"></i>
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
                        
                         <div id="activeModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Activar sucursal</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/sucursal">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="activate">
                            <input type="hidden" name="sucCod" id="activeSucCod">
                            <p> ¿Desea activar la sucursal <span id="activeSucDes"></span> ubicado en <span id="activeSucDir"></span>?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>  
                   
                        
        <div id="disableModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Desactivar sucursal</h4>
                    </div>
                    <form id="disableForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/sucursal">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="disable">
                            <input type="hidden" name="sucCod" id="disableSucCod">
                            <p> ¿Desea desactivar la sucursal <span id="disableSucDes"></span> ubicado en <span id="disableSucDir"></span>?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
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
                            <p> ¿Desea eliminar la sucursal <span id="deleteSucDes"></span> ubicado en <span id="deleteSucDir"></span>?</p>
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
            var activeModal = $("#activeModal");
            var disableModal = $("#disableModal");
                        
            var updateSucCod = $("#updateSucCod"); 
            var updateSucDes = $("#updateSucDes");
            var updateSucDir = $("#updateSucDir");
         
            var deleteSucCod = $("#deleteSucCod");
            var deleteSucDes = $("#deleteSucDes");
            var deleteSucDir = $("#deleteSucDir");
            
            var activeSucCod = $("#activeSucCod");
            var activeSucDes = $("#activeSucDes");
            var activeSucDir = $("#activeSucDir");
            
            var disableSucCod = $("#disableSucCod");
            var disableSucDes = $("#disableSucDes");
            var disableSucDir = $("#disableSucDir");
                        
            updateModal.on('show.bs.modal', function(e){
                updateSucCod.val($(e.relatedTarget).data('cod'));
                updateSucDes.val($(e.relatedTarget).data('des'));
                updateSucDir.val($(e.relatedTarget).data('dir'));
            });
            
            activeModal.on('show.bs.modal', function(e){
                activeSucCod.val($(e.relatedTarget).data('cod'));
                activeSucDes.text($(e.relatedTarget).data('des'));
                activeSucDir.text($(e.relatedTarget).data('dir'));
            });
            
            disableModal.on('show.bs.modal', function(e){
                disableSucCod.val($(e.relatedTarget).data('cod'));
                disableSucDes.text($(e.relatedTarget).data('des'));
                disableSucDir.text($(e.relatedTarget).data('dir'));
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
