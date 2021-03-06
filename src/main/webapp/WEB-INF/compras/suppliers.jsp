<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Log�stica - Proveedores</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/jquery.PrintArea.js"></script>

        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> Proveedores </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-7">
                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                    <button type="button" data-toggle="modal" class="btn btn-success" id="addbtn" data-target="#addSupplier"> Agregar nuevo <i class="fa fa-plus"></i></button> 
                    </cc:if>
                </div>
                <div class=" col-lg-5">
                    <div class="col-lg-offset-4 col-lg-2">
                        <label>Reporte</label>
                    </div>
                    <div class="col-lg-6">
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=proveedores&&jdbc=false&&key=null&&value=null" class="btn btn-danger">
                            <i class="fa fa-file-pdf-o"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&report=proveedores&&jdbc=false&&key=null&&value=null" class="btn btn-success">
                            <i class="fa fa-file-excel-o"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=proveedores&&jdbc=false&&key=null&&value=null" class="btn  btn-primary">
                            <i class="fa fa-file-word-o"></i>
                        </a>
                    </div>

                </div>
                
            </div>
            <br>
             
            <div id="printarea">
                <div class="table-responsive">
                    <table class = "table table-bordered table-striped table-hover"  id = "id_table">
                        <thead>
                            <tr>
                                <th style="text-align: center">C�digo</th>
                                <th style="text-align: center">Nombre del proveedor</th>
                                <th style="text-align: center">Direcci�n</th>
                                <th style="text-align: center">Celular</th>
                                <th style="text-align: center">Email</th>
                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <th style="text-align: center">Acciones</th>
                                </cc:if>
                            </tr>               
                        </thead>
                        <tbody>
                            <c:forEach items = "${proveedores}" var = "proveedor">    
                                <tr>
                                    <td><c:out value="${proveedor.prvCod}"/> </td>
                                    <td><c:out value="${proveedor.prvDet}"/></td>
                                    <td><c:out value="${proveedor.prvDir}"/></td>
                                    <td style="text-align: center"><c:out value="${proveedor.prvTelCel}"/></td>
                                    <td style="text-align: center"><c:out value="${proveedor.prvEmail}"/></td>
                                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <td>
                                        <a href="#" data-toggle="modal" data-target="#editSupplier" 
                                           title="Modificar Proveedor"
                                           data-cod="${proveedor.prvCod}"
                                           data-det="${proveedor.prvDet}"
                                           data-con="${proveedor.prvCon}"
                                           data-dir="${proveedor.prvDir}"
                                           data-telfij="${proveedor.prvTelFij}"
                                           data-telcel="${proveedor.prvTelCel}"
                                           data-email="${proveedor.prvEmail}"
                                           data-pagweb="${proveedor.prvPagWeb}"
                                           data-obs="${proveedor.prvObs}">
                                            <i class="fa fa-pencil-square-o fa-lg" style="color: black;"></i>
                                        </a> 
                                        <a href="#" data-toggle="modal" data-target="#deleteSupplier" 
                                           title="Eliminar Proveedor"
                                           data-cod="${proveedor.prvCod}"
                                           data-det="${proveedor.prvDet}">
                                            <i class="fa fa-trash-o fa-lg" style="color: black;"></i>
                                        </a> 
                                    </td>
                                    </cc:if>
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
                    <form id="addSupplierform" role = "form" method = "post" action="${pageContext.request.contextPath}/secured/compras/proveedores">
                        <input type="hidden" name="accion" value="insert">
                        <div class="modal-body">
                            <div class = "form-horizontal">
                                <div class = "panel panel-default">
                                    <div class = "panel-heading">
                                        <div class="form-group">
                                            <div class="col-sm-6">                               
                                                <input type="text" class="form-control" placeholder="C�digo Proveedor" name="codPro">
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
                                                <label class="control-label">Direcci�n</label>
                                                <input type="text" class="form-control" placeholder="Direcci�n" name="dirPro">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <label class="control-label">Tel�fono Fijo</label>
                                                <input type="text" class="form-control" placeholder="Tel�fono Fijo" name="telFijPro">
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">Tel�fono Celular</label>
                                                <input type="text" class="form-control" placeholder="Tel�fono Celular" name="telCelPro">
                                            </div>                                
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <label class="control-label">Email</label>
                                                <input type="text" class="form-control" placeholder="Email" name="emailPro">
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">P�gina Web</label>
                                                <input type="text" class="form-control" placeholder="P�gina web" name="pagWebPro">
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
                                                <label class="control-label">Direcci�n</label>
                                                <input type="text" class="form-control" name="dirPro" id = "updProDir">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <label class="control-label">Tel�fono Fijo</label>
                                                <input type="text" class="form-control" name="telFijPro" id = "updProTelFij">
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">Tel�fono Celular</label>
                                                <input type="text" class="form-control" name="telCelPro" id = "updProTelCel">
                                            </div>                                
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <label class="control-label">Email</label>
                                                <input type="text" class="form-control" name="emailPro" id = "updProEmail">
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">P�gina Web</label>
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
                                        <p>�Desea eliminar al proveedor?</p>
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
            $('#id_table').DataTable({
                responsive: true
            });
            
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
            
            $.validator.addMethod("codePattern", function (value, element) {
                return /^[0-9]{11}$/.test(value);
            }, "RUC: Debe tener 11 digitos");
            
            $("#addSupplierform").validate({
                rules: {
                    codPro: {
                        required: true,
                        codePattern: true
                    },
                    detPro: {
                        required: true
                    },
                    conPro: {
                        required: true
                    },
                    dirPro: {
                        required: true
                    }
                },
                messages: {
                    codPro: {
                        required: "Ingrese RUC de Proveedor"
                    },
                    detPro: {
                        required: "Ingrese nombre de proveedor"
                    },
                    conPro: {
                        required: "Ingrese contacto de proveedor"
                    },
                    dirPro: {
                        required: "Ingrese direcci�n"
                    }    
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
            
        </script>
    </jsp:attribute>  
</minierptemplate:template>
