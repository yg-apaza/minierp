<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Logística - Productos</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header"> Clases </h1>
                        </div>
                    </div>            
                    <div class="row">
                        <div class="col-lg-6">
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addClass"> Agregar nueva <i class="fa fa-plus"></i></button>
                            </cc:if>
                        </div>
                    </div><br>
                    <div class="table-responsive">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="tableClasses">
                            <thead>
                                <tr>
                                    <th>Descripción</th>
                                    <th>Estado</th>
                                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <th>Acciones</th>
                                    </cc:if>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${clases}" var="c">
                                    <tr>
                                        <td width="450px">${c.claProDet}</td>
                                        <td class="text-center" width="50px">${c.estRegCod}</td>
                                        <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                        <td class="text-center" width="50px">
                                            <a href="#" data-toggle="modal" data-target="#modifyClass" data-cCod="${c.claProCod}" data-cDes="${c.claProDet}" data-cEst="${c.estRegCod}">
                                                <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#deleteClass" data-cCod="${c.claProCod}" data-cDes="${c.claProDet}" data-cEst="${c.estRegCod}">
                                                <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                            </a>
                                        </td>
                                        </cc:if>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>     
                    </div>
                    <div class="modal fade" id="addClass">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel">Añadir Clase</h4>
                                </div>
                                <form id="addClassForm" method="post" action="${pageContext.request.contextPath}/secured/compras/claseSubclase">
                                    <div class="modal-body">
                                        <input type="hidden" name="action" value="addClass">
                                        <div class="col-md-12 form-group input-group">
                                            <div class="col-xs-12 col-md-12">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon"><i class="fa fa-edit"></i></span>
                                                    <input type="text" class="form-control" name="claDetAdd" placeholder="Descripción de la Clase">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                        <button type="submit" class="btn btn-success">Aceptar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="modifyClass">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">Modificar Clase</h4>
                                </div>
                                <form id="modifyClassForm" method="post" action="${pageContext.request.contextPath}/secured/compras/claseSubclase">
                                    <input type="hidden" class="form-control" name="claCodUpd" id="udpClaCod">
                                    <input type="hidden" name="action" value="modifyClass">
                                    <div class="modal-body">
                                        <p align="center"><span id="udpClaError"></span></p>                                        
                                        <div class="col-md-12 form-group input-group">
                                            <div class="col-xs-12 col-md-12">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon"><i class="fa fa-edit"></i></span>
                                                    <input type="text" class="form-control" name="claDetUpd" placeholder="Descripción de la Clase" id="udpClaDes">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                        <button type="submit" id="udpClassAccept" class="btn btn-success">Aceptar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div id="deleteClass" class="modal fade">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Eliminar Producto</h4>
                                </div>
                                <form id="deleteClassForm" method="post" action="${pageContext.request.contextPath}/secured/compras/claseSubclase">
                                    <div class="modal-body">
                                        <input type="hidden" name="action" value="deleteClass">
                                        <input type="hidden" name="claCodDel" id="delClaCod">
                                        <span id="delClassMes"></span>                                
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                        <button type="submit" id="delClassAccept" class="btn btn-success">Aceptar</button>                                            
                                    </div>
                                </form>
                            </div>              
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header"> Subclases </h1>
                        </div>
                    </div>            
                    <div class="row">
                        <div class="col-lg-6">
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addSubclass"> Agregar nuevo <i class="fa fa-plus"></i></button>
                            </cc:if>                
                        </div>
                    </div><br>
                    <div class="table-responsive">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="tableSubClasses">
                            <thead>
                                <tr>
                                    <th>Descripción</th>
                                    <th>Estado</th>
                                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <th>Acciones</th>
                                    </cc:if>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${subclases}" var="s">
                                    <tr>
                                        <td width="450px">${s.subClaProDet}</td>
                                        <td class="text-center" width="50px">${s.estRegCod}</td>
                                        <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                        <td class="text-center" width="50px">
                                            <a href="#" data-toggle="modal" data-target="#modifySubclass" data-sCod="${s.id.subClaProCod}" data-sCla="${s.id.claProCod}" data-sDes="${s.subClaProDet}" data-sEst="${s.estRegCod}">
                                                <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#deleteSubclass" data-sCod="${s.id.subClaProCod}" data-sCla="${s.id.claProCod}" data-sDes="${s.subClaProDet}" data-sEst="${s.estRegCod}">
                                                <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                            </a>
                                        </td>
                                        </cc:if>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>     
                    </div>
                    <div class="modal fade" id="addSubclass">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel">Añadir Subclase</h4>
                                </div>
                                <form id="addSubclassForm" method="post" action="${pageContext.request.contextPath}/secured/compras/claseSubclase">
                                    <div class="modal-body">
                                        <input type="hidden" name="action" value="addSubclass">
                                        <div class="col-md-12 form-group input-group">
                                            <div class="col-xs-12 col-md-8">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">Clase</span>
                                                    <select class="form-control" name="subClaCodAdd">
                                                        <c:forEach items="${clasesActivas}" var="c">
                                                            <option value="${c.claProCod}">${c.claProDet}</option>
                                                        </c:forEach>
                                                        </select> 
                                                    <span class="input-group-addon"><i class="fa fa-book"></i></span>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-md-12">
                                                <div class="form-group input-group" >
                                                    <span class="input-group-addon"><i class="fa fa-edit"></i></span>
                                                    <input type="text" class="form-control" name="subDetAdd" placeholder="Descripción de la Subclase">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                        <button type="submit" class="btn btn-success">Aceptar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="modifySubclass">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">Modificar Subclase</h4>
                                </div>
                                <form id="modifySubclassForm" method="post" action="${pageContext.request.contextPath}/secured/compras/claseSubclase">
                                    <input type="hidden" class="form-control" name="subCodUpd" id="updSubCod">
                                    <input type="hidden" name="action" value="modifySubclass">
                                    <div class="modal-body">
                                        <p align="center"><span id="updSubError"></span></p>                                        
                                        <div class="col-md-12 form-group input-group">
                                            <div class="col-xs-12 col-md-12">
                                                <div class="col-xs-12 col-md-8">
                                                    <div class="form-group input-group">
                                                        <input type="hidden" id="updSubClaCod" name="subClaCodUpd">
                                                        <span class="input-group-addon">Clase</span>
                                                        <select class="form-control" id="updSubClaCodId">
                                                            <c:forEach items="${clases}" var="c">
                                                                <option value="${c.claProCod}">${c.claProDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-book"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-12">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-edit"></i></span>
                                                        <input type="text" class="form-control" name="subDetUpd" placeholder="Descripción de la Subclase" id="updSubDes">
                                                    </div>
                                                </div>
                                            </div>                                            
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                        <button type="submit" id="udpSubclassAccept" class="btn btn-success">Aceptar</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div id="deleteSubclass" class="modal fade">
                        <div class="modal-dialog modal-sm">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    <h4 class="modal-title">Eliminar Producto</h4>
                                </div>
                                <form id="deleteSubclassForm" method="post" action="${pageContext.request.contextPath}/secured/compras/claseSubclase">
                                    <div class="modal-body">
                                        <input type="hidden" name="action" value="deleteSubclass">
                                        <input type="hidden" name="subCodDel" id="delSubCod">
                                        <input type="hidden" name="subClaCodDel" id="delSubClaCod">
                                        <span id="delSubclassMes"></span>                                
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                        <button type="submit" id="delSubclassAccept" class="btn btn-success">Aceptar</button>                                            
                                    </div>
                                </form>
                            </div>              
                        </div>
                    </div>
                </div>
            </div>
        </div>       
        <script language="javascript">
            $('#tableClasses').DataTable({
                responsive: true
            });
            $('#tableSubClasses').DataTable({
                responsive: true
            });
            $("#addClassForm").validate({
                rules: {
                    claDetAdd: {
                        required: true
                    }
                },
                messages: {
                    claDetAdd: {
                        required: "Ingrese una descripción para la clase"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
            
            $("#addSubclassForm").validate({
                rules: {
                    subDetAdd: {
                        required: true
                    }
                },
                messages: {
                    subDetAdd: {
                        required: "Ingrese una descripción para la clase"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
            
            $("#modifyClass").on('show.bs.modal', function (e) {
                $("#udpClaCod").val($(e.relatedTarget).data('ccod'));
                $("#udpClaDes").val($(e.relatedTarget).data('cdes'));
                
                if ($(e.relatedTarget).data('cest') == 'A') {
                    $("#udpClaDes").prop("disabled", false);
                    $("#udpClaError").text("");
                    $("#udpClassAccept").prop("disabled", false);
                } else {
                    $("#udpClaDes").prop("disabled", true);
                    $("#udpClaError").text("El producto seleccionado se encuentra eliminado, por lo tanto sus atributos no se pueden modificar");
                    $("#udpClassAccept").prop("disabled", true);
                }
            });
            
            $("#modifySubclass").on('show.bs.modal', function (e) {
                $("#updSubClaCodId").val($(e.relatedTarget).data('scla'));
                $("#updSubClaCod").val($(e.relatedTarget).data('scla'));
                $("#updSubCod").val($(e.relatedTarget).data('scod'));
                $("#updSubDes").val($(e.relatedTarget).data('sdes'));                
                $("#updSubClaCodId").prop("disabled", true);

                if ($(e.relatedTarget).data('sest') == 'A') {
                    $("#updSubDes").prop("disabled", false);     
                    $("#updSubError").text("");
                    $("#updSubclassAccept").prop("disabled", false);                    
                } else {
                    $("#updSubDes").prop("disabled", true);                    
                    $("#updSubclassAccept").prop("disabled", true);
                    $("#updSubError").text("El producto seleccionado se encuentra eliminado, por lo tanto sus atributos no se pueden modificar");
                }
            });
            
            $("#deleteClass").on('show.bs.modal', function (e) {                
                if($(e.relatedTarget).data('cest') == 'E') {
                    $("#delClassMes").text("La clase ya ha sido eliminada");
                    $("#delClassAccept").prop("disabled", true);
                } else {
                    $("#delClaCod").val($(e.relatedTarget).data('ccod'));                    
                    $("#delClassMes").text("¿Desea eliminar la clase '" + $(e.relatedTarget).data('cdes') + "' de forma permanente? Tener en cuenta que se eliminarán todas las subclases y productos asociadas a esta clase");
                    $("#delClassAccept").prop("disabled", false);
                }                
            });
            
            $("#deleteSubclass").on('show.bs.modal', function (e) {                    
                if($(e.relatedTarget).data('sest') == 'E') {
                    $("#delSubclassMes").text("La subclase ya ha sido eliminada");
                    $("#delSubclassAccept").prop("disabled", true);
                } else {                   
                    $("#delSubCod").val($(e.relatedTarget).data('scod')); 
                    $("#delSubClaCod").val($(e.relatedTarget).data('scla')); 
                    $("#delSubclassMes").text("¿Desea eliminar la subclase '" + $(e.relatedTarget).data('sdes') + "' de forma permanente? Tener en cuenta que se eliminarán todos los productos asociados a esta subclase");
                    $("#delSubclassAccept").prop("disabled", false);
                }                
            });
            
            $("#modifyClassForm").validate({
                rules: {
                    claDetUpd: {
                        required: true
                    }
                },
                messages: {
                    claDetUpd: {
                        required: "Ingrese una descripción para la clase"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
            
            $("#modifySubclassForm").validate({
                rules: {
                    subDetUpd: {
                        required: true
                    }
                },
                messages: {
                    subDetUpd: {
                        required: "Ingrese una descripción para la clase"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
</script>
    </jsp:attribute>
</minierptemplate:template>
