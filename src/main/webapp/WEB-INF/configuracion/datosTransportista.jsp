<%-- 
    Document   : datosTransportista
    Created on : 03-nov-2016, 21:45:07
    Author     : Bryan
--%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuraciones - Transportistas</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <br>
        <div class="pagel-body">
            <h1 class="page-header"> Transportistas
                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
                </c:if>
            </h1>
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover" id="tablaDocClientes">
                        <thead>
                            <tr>    
                                <th>Nombre completo</th>
                                <th>Razón social</th>
                                <th>Nombre de compañía</th>
                                <th>Dominio fiscal</th>
                                <th>Teléfono</th>
                                <th>E-mail</th>
                                <th>Dirección</th>
                                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <th class="text-left">Acciones</th>
                                </c:if>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${trs}" var="trs">
                                <tr>
                                    <td value="${trs}"> ${trs.traApePat} ${trs.traApeMat}, ${trs.traNom} </td>
                                    <td value="${trs}"> ${trs.traRazSoc} </td>
                                    <td value="${trs}"> ${trs.traNomCom} </td>
                                    <td value="${trs}"> ${trs.traDomFis} </td>
                                    <td value="${trs}"> ${trs.traTel} </td>
                                    <td value="${trs}"> ${trs.traEmail} </td>
                                    <td value="${trs}"> ${trs.traDir} </td>
                                    <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <td class="text-left">
                                        <a href="#" data-toggle="modal" data-target="#modificarModal" data-tracod="${trs.traCod}" data-tranom="${trs.traNom}" data-traapepat="${trs.traApePat}" data-traapemat="${trs.traApeMat}" data-trarazsoc="${trs.traRazSoc}" data-tranomcom="${trs.traNomCom}" data-tradomfis="${trs.traDomFis}" data-tratel="${trs.traTel}" data-traemail="${trs.traEmail}" data-tradir="${trs.traDir}" >
                                        <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a> 
                                        <a href="#" data-toggle="modal" data-target="#eliminarModal" data-tracod="${trs.traCod}" data-tranom="${trs.traNom}" data-traapepat="${trs.traApePat}" data-traapemat="${trs.traApeMat}" data-trarazsoc="${trs.traRazSoc}" data-tranomcom="${trs.traNomCom}" data-tradomfis="${trs.traDomFis}" data-tratel="${trs.traTel}" data-traemail="${trs.traEmail}" data-tradir="${trs.traDir}" >
                                        <i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a>                                   
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
            <div class="modal-dialog modal-lg">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar transportista</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/datosTransportista">
                        <div class="modal-body">
                        <input type="hidden" name="accion" value="create">
                            <div class="form-horizontal">    
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label> Código: </label><br/>
                                        <input type="text" class="form-control" name="traCod" id="traCod">
                                    </div>
                                    <div class="col-sm-6">
                                        <label> Nombre: </label><br/>
                                        <input type="text" class="form-control" name="traNom" id="traNom">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label> Apellido paterno: </label><br/>
                                        <input type="text" class="form-control" name="traApePat" id="traApePat">
                                    </div>
                                    <div class="col-sm-6">
                                        <label> Apellido materno: </label><br/>
                                        <input type="text" class="form-control" name="traApeMat" id="traApeMat">
                                    </div>
                                </div>                                
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label> Razón social: </label><br/>
                                        <input type="text" class="form-control" name="traRazSoc" id="traRazSoc">
                                    </div>
                                    <div class="col-sm-6">
                                        <label> Nombre de la compañía: </label><br/>
                                        <input type="text" class="form-control" name="traNomCom" id="traNomCom">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label> Dominio fiscal: </label><br/>
                                        <input type="text" class="form-control" name="traDomFis" id="traDomFis">
                                    </div>
                                    <div class="col-sm-6">
                                        <label> Teléfono: </label><br/>
                                        <input type="text" class="form-control" name="traTel" id="traTel">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label> E-mail: </label><br/>
                                        <input type="text" class="form-control" name="traEmail" id="traEmail">
                                    </div>
                                    <div class="col-sm-6">
                                        <label> Dirección: </label><br/>
                                        <input type="text" class="form-control" name="traDir" id="traDir">
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
        
        <!-- MODAL PARA MODIFICAR -->
        <div id="modificarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar datos de transportista</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/datosTransportista">
                        <div class="modal-body">
                            <div class="form-group">
                            <input type="hidden" name="accion" value="update">
                            <input type="hidden" name="traCod" id="updtTraCod">
                            <div class="form-group">
                                <label> Nombre: </label><br/>
                                <input type="text" class="form-control" name="traNom" id="updtTraNom">
                            </div>
                            <div class="form-group">
                                <label> Apellido paterno: </label><br/>
                                <input type="text" class="form-control" name="traApePat" id="updtTraApePat">
                            </div>
                            <div class="form-group">
                                <label> Apellido materno: </label><br/>
                                <input type="text" class="form-control" name="traApeMat" id="updtTraApeMat">
                            </div>
                            <div class="form-group">
                                <label> Razón social: </label><br/>
                                <input type="text" class="form-control" name="traRazSoc" id="updtTraRazSoc">
                            </div>
                            <div class="form-group">
                                <label> Nombre de la compañía: </label><br/>
                                <input type="text" class="form-control" name="traNomCom" id="updtTraNomCom">
                            </div>
                            <div class="form-group">
                                <label> Dominio fiscal: </label><br/>
                                <input type="text" class="form-control" name="traDomFis" id="updtTraDomFis">
                            </div>
                            <div class="form-group">
                                <label> Teléfono: </label><br/>
                                <input type="text" class="form-control" name="traTel" id="updtTraTel">
                            </div>
                            <div class="form-group">
                                <label> E-mail: </label><br/>
                                <input type="text" class="form-control" name="traEmail" id="updtTraEmail">
                            </div>
                            <div class="form-group">
                                <label> Dirección: </label><br/>
                                <input type="text" class="form-control" name="traDir" id="updtTraDir">
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
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/datosTransportista">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" class="form-control" name="traCod" id="delTraCod">
                            <input type="hidden" class="form-control" name="traNom" id="delTraNom">
                            <input type="hidden" class="form-control" name="traApePat" id="delTraApePat">
                            <input type="hidden" class="form-control" name="traApeMat" id="delTraApeMat">
                            <input type="hidden" class="form-control" name="traRazSoc" id="delTraRazSoc">
                            <input type="hidden" class="form-control" name="traNomCom" id="delTraNomCom">
                            <input type="hidden" class="form-control" name="traDomFis" id="delTraDomFis">
                            <input type="hidden" class="form-control" name="traTel" id="delTraTel">
                            <input type="hidden" class="form-control" name="traEmail" id="delTraEmail">
                            <input type="hidden" class="form-control" name="traDir" id="delTraDir">
                            <p> ¿Desea eliminar al transportista <span id="delTraNomComp"></span> de la compañía <span id="delTraComp"></span>?</p>
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
            
            var updtTraCod = $("#updtTraCod"); 
            var updtTraNom = $("#updtTraNom"); 
            var updtTraApePat = $("#updtTraApePat");
            var updtTraApeMat = $("#updtTraApeMat");
            var updtTraRazSoc = $("#updtTraRazSoc");
            var updtTraNomCom = $("#updtTraNomCom"); 
            var updtTraDomFis = $("#updtTraDomFis"); 
            var updtTraTel = $("#updtTraTel");
            var updtTraEmail = $("#updtTraEmail");
            var updtTraDir = $("#updtTraDir");
         
            
            var delTraCod = $("#delTraCod"); 
            var delTraNom = $("#delTraNom"); 
            var delTraApePat = $("#delTraApePat");
            var delTraApeMat = $("#delTraApeMat");
            var delTraRazSoc = $("#delTraRazSoc");
            var delTraNomCom = $("#delTraNomCom"); 
            var delTraDomFis = $("#delTraDomFis"); 
            var delTraTel = $("#delTraTel");
            var delTraEmail = $("#delTraEmail");
            var delTraDir = $("#delTraDir");
            var delTraNomComp = $("#delTraNomComp");
            var delTraComp = $("#delTraComp");
            
            updateModal.on('show.bs.modal', function(e){
                updtTraCod.val($(e.relatedTarget).data('tracod'));
                updtTraNom.val($(e.relatedTarget).data('tranom'));
                updtTraApePat.val($(e.relatedTarget).data('traapepat'));
                updtTraApeMat.val($(e.relatedTarget).data('traapemat'));
                updtTraRazSoc.val($(e.relatedTarget).data('trarazsoc'));
                updtTraNomCom.val($(e.relatedTarget).data('tranomcom'));
                updtTraDomFis.val($(e.relatedTarget).data('tradomfis'));
                updtTraTel.val($(e.relatedTarget).data('tratel'));
                updtTraEmail.val($(e.relatedTarget).data('traemail'));
                updtTraDir.val($(e.relatedTarget).data('tradir'));
            });
            
            deleteModal.on('show.bs.modal', function(e){
                delTraCod.val($(e.relatedTarget).data('tracod'));
                delTraNom.val($(e.relatedTarget).data('tranom'));
                delTraApePat.val($(e.relatedTarget).data('traapepat'));
                delTraApeMat.val($(e.relatedTarget).data('traapemat'));
                delTraRazSoc.val($(e.relatedTarget).data('trarazsoc'));
                delTraNomCom.val($(e.relatedTarget).data('tranomcom'));
                delTraDomFis.val($(e.relatedTarget).data('tradomfis'));
                delTraTel.val($(e.relatedTarget).data('tratel'));
                delTraEmail.val($(e.relatedTarget).data('traemail'));
                delTraDir.val($(e.relatedTarget).data('tradir'));
                delTraNomComp.text($(e.relatedTarget).data('traapepat')+" "+$(e.relatedTarget).data('traapemat')+", "+$(e.relatedTarget).data('tranom') );
                delTraComp.text($(e.relatedTarget).data('tranomcom'));
            });
            $("#createForm").validate({
                rules: {
                    traEmail: {
                        email: true
                        }
                },
                messages: {
                    traEmail: {
                        email: "Ingrese una dirección de e-mail válida."
                       }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
            
            $("#updateForm").validate({
                rules: {
                    traEmail: {
                        email: true
                    }
                },
                messages: {
                    traEmail: {
                        email: "Ingrese una dirección de e-mail válida."
                    }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        </script>    
     
    </jsp:attribute>
</minierptemplate:template>
