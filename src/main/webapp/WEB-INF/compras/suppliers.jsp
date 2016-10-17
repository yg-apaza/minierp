<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Logística - Proveedores</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/jquery.PrintArea.js"></script>

        <div id ="pagel-body">
            <div class="row">   
                <div class="col-lg-12">
                    <br><h1 class="page-header"> Proveedores </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-7">
                    <button type="button" data-toggle="modal" class="btn btn-success" id="addbtn" data-target="#addSupplier"> Agregar nuevo <i class="fa fa-plus"></i></button> 
                </div>
                <div class=" col-lg-5">
                    <div class="col-lg-offset-4 col-lg-2">
                        <label>Reporte</label>
                    </div>
                    <div class="col-lg-6">
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=proovedores&&jdbc=true&&key=null&&value=null" class="btn btn-danger">
                            <i class="fa fa-file-pdf-o"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&report=proovedores&&jdbc=true&&key=null&&value=null" class="btn btn-success">
                            <i class="fa fa-file-excel-o"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=proovedores&&jdbc=true&&key=null&&value=null" class="btn  btn-primary">
                            <i class="fa fa-file-word-o"></i>
                        </a>
                    </div>

                </div>
                
            </div>
            <br>
             
            <div id="printarea">
                <div class="table-responsive">
                    <table class = "table table-bordered table-condensed"  id = "id_table">
                        <thead>
                            <tr>
                                <th style="text-align: center">Código</th>
                                <th style="text-align: center">Nombre del proveedor</th>
                                <th style="text-align: center">Dirección</th>
                                <th style="text-align: center">Celular</th>
                                <th style="text-align: center">Email</th>
                                <th style="text-align: center">Acciones</th>
                            </tr>               
                        </thead>
                        <tbody>
                            <c:forEach items = "${proveedores}" var = "proveedor">    
                                <tr>
                                    <td><c:out value="${proveedor.proCod}"/> </td>
                                    <td><c:out value="${proveedor.proDet}"/></td>
                                    <td><c:out value="${proveedor.proDir}"/></td>
                                    <td style="text-align: center"><c:out value="${proveedor.proTelCel}"/></td>
                                    <td style="text-align: center"><c:out value="${proveedor.proEmail}"/></td>
                                    <td>
                                        <a href="#" data-toggle="modal" data-target="#editSupplier" data-cod="${proveedor.proCod}"
                                                                                                      data-det="${proveedor.proDet}"
                                                                                                      data-con="${proveedor.proCon}"
                                                                                                      data-dir="${proveedor.proDir}"
                                                                                                      data-telfij="${proveedor.proTelFij}"
                                                                                                      data-telcel="${proveedor.proTelCel}"
                                                                                                      data-email="${proveedor.proEmail}"
                                                                                                      data-pagweb="${proveedor.proPagWeb}"
                                                                                                      data-obs="${proveedor.proObs}">
                                            <i class="fa fa-pencil-square-o fa-2x"></i>
                                        </a> 
                                        <a href="#" data-toggle="modal" data-target="#deleteSupplier" data-cod="${proveedor.proCod}"
                                                                                                      data-det="${proveedor.proDet}">
                                            <i class="fa fa-trash-o fa-2x"></i>
                                        </a> 
                                    </td>
                                </tr>
                            </c:forEach>  
                        </tbody>
                    </table>       
                </div>  
            </div>
        </div>
        <div id="addSupplier" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class = "modal-content">
                    <div class = "modal-header">
                        <button type = "button" class = "close" data-dismiss = "modal">&times;</button>
                        <h4 class = "modal-title">Agregar Proveedor</h4>
                    </div>
                    <form role = "form" method = "post" action="${pageContext.request.contextPath}/secured/compras/proveedores">
                        <input type="hidden" name="accion" value="insert">
                        <div class="modal-body">
                            <div class = "form-horizontal">
                                <div class = "panel panel-default">
                                    <div class = "panel-heading">
                                        <div class="form-group">
                                            <div class="col-sm-6">                               
                                                <input type="text" class="form-control" placeholder="Código Proveedor" name="codPro">
                                            </div>
                                            <div class="col-sm-6">                               
                                                <input type="text" class="form-control" placeholder="Nombre Proveedor" name="detPro">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <label class="control-label">Nombre Contacto</label>
                                                <input type="text" class="form-control" placeholder="Nombre del Contacto" name="conPro">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <label class="control-label">Dirección</label>
                                                <input type="text" class="form-control" placeholder="Dirección" name="dirPro">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <label class="control-label">Teléfono Fijo</label>
                                                <input type="text" class="form-control" placeholder="Teléfono Fijo" name="telFijPro">
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">Teléfono Celular</label>
                                                <input type="text" class="form-control" placeholder="Teléfono Celular" name="telCelPro">
                                            </div>                                
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <label class="control-label">Email</label>
                                                <input type="text" class="form-control" placeholder="Email" name="emailPro">
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">Página Web</label>
                                                <input type="text" class="form-control" placeholder="Página web" name="pagWebPro">
                                            </div> 
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <label class="control-label">Observaciones</label>
                                                <textarea class="form-control" placeholder="Observaciones" name="obsPro" style="resize: vertical;"></textarea>    
                                            </div>                               
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-default">Agregar</button>
                                        <button type="button" class="btn btn-default"  data-dismiss="modal">Cancelar</button>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div id="editSupplier" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class = "modal-content">
                    <div class = "modal-header">
                        <button type = "button" class = "close" data-dismiss = "modal">&times;</button>
                        <h4 class = "modal-title">Modificar Proveedor</h4>
                    </div>
                    <form role = "form" method = "post" action="${pageContext.request.contextPath}/secured/compras/proveedores">
                        <input type="hidden" name="accion" value="update">
                        <input type="hidden" name="proCod" id="updProCod">
                        <div class="modal-body">
                            <div class = "form-horizontal">
                                <div class = "panel panel-default">
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <label class="control-label">Nombre Proveedor</label>
                                                <input type="text" class="form-control" name = "proDes" id = "updProDes">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <label class="control-label">Nombre Contacto</label>
                                                <input type="text" class="form-control" name="conPro" id = "updProCon">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <label class="control-label">Dirección</label>
                                                <input type="text" class="form-control" name="dirPro" id = "updProDir">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <label class="control-label">Teléfono Fijo</label>
                                                <input type="text" class="form-control" name="telFijPro" id = "updProTelFij">
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">Teléfono Celular</label>
                                                <input type="text" class="form-control" name="telCelPro" id = "updProTelCel">
                                            </div>                                
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <label class="control-label">Email</label>
                                                <input type="text" class="form-control" name="emailPro" id = "updProEmail">
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">Página Web</label>
                                                <input type="text" class="form-control" name="pagWebPro" id = "updProPagWeb">
                                            </div> 
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <label class="control-label">Observaciones</label>
                                                <textarea class="form-control" name="obsPro" id ="updProObs" style="resize: vertical;"></textarea>    
                                            </div>                               
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-outline btn-success">Aceptar</button>
                                        <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div id="deleteSupplier" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class = "modal-content">
                    <div class = "modal-header">
                        <button type = "button" class = "close" data-dismiss = "modal">&times;</button>
                        <h4 class = "modal-title">Eliminar Proveedor</h4>
                    </div>
                    <form role = "form" method = "post" action="${pageContext.request.contextPath}/secured/compras/proveedores">
                        <input type = "hidden" name = "accion" value = "delete">
                        <input type = "hidden" name = "proCod" id = "dltProCod">
                        <input type = "hidden" name = "proDet" id = "dltProDet">
                                                                                                     
                        <div class="modal-body">
                            <div class = "form-horizontal">
                                <div class = "panel panel-default">
                                    <div class="panel-body">
                                        <p>¿Desea eliminar al proveedor?</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="submit" class="btn btn-outline btn-success">Aceptar</button>
                                        <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script>
            var updateModal = $("#editSupplier");
            var deleteModal = $("#deleteSupplier");
            
            var updProCod = $("#updProCod");
            var updProDes = $("#updProDes");
            var updProCon = $("#updProCon");
            var updProDir = $("#updProDir");
            var updProTelFij = $("#updProTelFij");
            var updProTelCel = $("#updProTelCel");
            var updProEmail = $("#updProEmail");
            var updProPagWeb = $("#updProPagWeb");
            var updProObs = $("#updProObs");
         
            var dltProCod = $("#dltProCod");
            var dltProDet = $("#dltProDet");
            
            updateModal.on('show.bs.modal', function(e){
                updProCod.val($(e.relatedTarget).data('cod'));
                updProDes.val($(e.relatedTarget).data('det'));
                updProCon.val($(e.relatedTarget).data('con'));
                updProDir.val($(e.relatedTarget).data('dir'));
                updProTelFij.val($(e.relatedTarget).data('telfij'));
                updProTelCel.val($(e.relatedTarget).data('telcel'));
                updProEmail.val($(e.relatedTarget).data('email'));
                updProPagWeb.val($(e.relatedTarget).data('pagweb'));
                updProObs.val($(e.relatedTarget).data('obs'));
                
            });
            
            deleteModal.on('show.bs.modal', function(e){
                dltProCod.val($(e.relatedTarget).data('cod'));
                dltProDet.val($(e.relatedTarget).data('det'));
            });
        </script>
    </jsp:attribute>  
</minierptemplate:template>
