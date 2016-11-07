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
                <div class="col-lg-12">
                    <h1 class="page-header"> Productos </h1>
                </div>
            </div>            
            <div class="row">
                <div class="col-lg-7">
                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addProduct"> Agregar nuevo <i class="fa fa-plus"></i></button>                
                    </cc:if>
                </div>
                <div class=" col-lg-5">
                    <div class="col-lg-offset-4 col-lg-2">
                        <label>Reporte</label>
                    </div>
                    <div class="col-lg-6">
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=productos&&jdbc=false&&key=null&&value=null" class="btn btn-danger">
                            <i class="fa fa-file-pdf-o"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&report=productos&&jdbc=false&&key=null&&value=null" class="btn btn-success">
                            <i class="fa fa-file-excel-o"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=productos&&jdbc=false&&key=null&&value=null" class="btn  btn-primary">
                            <i class="fa fa-file-word-o"></i>
                        </a>
                    </div>
                </div>
            </div><br>
            <div class="table-responsive">
                <table width="100%" class="table table-striped table-bordered table-hover" id="tableSuppliers">
                    <thead>
                        <tr>
                            <th>Clase</th>
                            <th>SubClase</th>
                            <th>Código</th>
                            <th>Descripción</th>
                            <th>Precio de venta</th>
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                            <th>Acciones</th>
                            </cc:if>
                        </tr>
                    </thead>
                    <tbody>
                       <c:forEach items="${productos}" var="p">
                            <tr>
                                <td width="150px">${p.enP2mSubclaseProducto.enP2mClaseProducto.claProDet}</td>
                                <td width="200px">${p.enP2mSubclaseProducto.subClaProDet}</td>                                        
                                <td width="100px">${p.id.proCod}</td>
                                <td width="300px">${p.proDet}</td>
                                <td class="text-center" width="50px">${p.proPreUniVen}</td>
                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <td class="text-center" width="50px">
                                    <a href="#" data-toggle="modal" data-target="#modifyProduct" 
                                       data-pCla="${p.id.claProCod}"
                                       data-pSub="${p.id.subClaProCod}"
                                       data-pCod="${p.id.proCod}"
                                       data-pDes="${p.proDet}"
                                       
                                       data-pMonCod="${p.taGzzMoneda.monCod}"
                                       data-pUniMedCod="${p.taGzzUnidadMed.uniMedCod}"
                                       data-pProStkMax="${p.proStkMax}"
                                       data-pProStkMin="${p.proStkMin}"
                                       data-pVolUniAlm="${p.volUniAlm}"
                                       data-pPreUni="${p.proPreUniVen}"
                                       data-pObs="${p.proObs}"
                                       data-pEst="${p.estRegCod}"
                                       >
                                        <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                    </a>
                                    <a href="#" data-toggle="modal" data-target="#deleteProduct" data-pCode="${p.id.proCod}/${p.id.subClaProCod}/${p.id.claProCod}" data-pDes="${p.proDet}" data-pEst="${p.estRegCod}">
                                        <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                    </a>
                                </td>
                                </cc:if>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>     
            </div>
            <div class="modal fade" id="addProduct">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">Añadir Producto</h4>
                        </div>
                        <form id="addForm" method="post" action="${pageContext.request.contextPath}/secured/compras/productos">
                            <div class="modal-body">
                                <input type="hidden" name="action" value="add">
                                <div class="col-md-12 form-group input-group">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Clase</span>
                                            <select class="form-control" id="addClaProCod" name="claProCodAdd" onchange="changingValues()">
                                                <c:forEach items="${clases}" var="clase">
                                                    <option value="${clase.claProCod}">${clase.claProDet}</option>
                                                </c:forEach>
                                            </select> 
                                            <span class="input-group-addon"><i class="fa fa-book"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">SubClase</span>
                                            <select class="form-control" id="addSubClaProCod" name="subClaProCodAdd">
                                            </select> 
                                            <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-edit"></i></span>
                                            <input type="text" class="form-control" name="proDetAdd" placeholder="Descripción del Producto">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon"><i class="fa fa-database"></i></span>
                                            <select class="form-control" name="almCodAdd">
                                                <c:forEach items="${almacenes}" var="almacen">
                                                    <option value="${almacen.almCod}">${almacen.almDet}</option>
                                                </c:forEach>
                                            </select> 
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon"><i class="fa fa-dollar"></i></span>
                                            <select class="form-control" name="monCodAdd">
                                                <c:forEach items="${monedas}" var="moneda">
                                                    <option value="${moneda.monCod}">${moneda.monDet}</option>
                                                </c:forEach>
                                            </select> 
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon"><i class="fa fa-gears"></i></span>
                                            <select class="form-control" name="uniMedCodAdd">
                                                <c:forEach items="${medidas}" var="medida">
                                                    <option value="${medida.uniMedCod}">${medida.uniMedDet}</option>
                                                </c:forEach>
                                            </select> 
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Stock Máximo</span>                                                            
                                            <input type="number" class="form-control" name="proStkMaxAdd" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-chevron-up"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Stock Mínimo</span>                                                           
                                            <input type="number" class="form-control" id="addProStkMin" name="proStkMinAdd" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-chevron-down"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Volúmen</span>
                                            <input type="number" class="form-control" name="volUniAlmAdd" min="0.0" step="any" value="0.0">                                                              
                                            <span class="input-group-addon"><i class="fa fa-th"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Precio</span>                                                            
                                            <input type="number" class="form-control" name="proPreUniAdd" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div>    
                                    <div class="col-xs-12 col-md-12">
                                        Observaciones<br><br><textarea class="form-control" rows="1" name="proObsAdd" placeholder="No hay comentarios"></textarea>
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
            <div class="modal fade" id="modifyProduct">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Modificar Producto</h4>
                        </div>
                        <form id="modifyForm" method="post" action="${pageContext.request.contextPath}/secured/compras/productos">
                            <input type="hidden" class="form-control" name="proCodUpd" id="udpProCod">
                            <div class="modal-body">
                                <p align="center"><span id="errorMessage"></span></p>
                                <input type="hidden" name="action" value="modify">
                                <div class="col-md-12 form-group input-group">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group">
                                            <input type="hidden" id="updClaProCod" name="claProCodUpd">
                                            <span class="input-group-addon">Clase</span>
                                            <select class="form-control" id="udpClaProCodId">
                                                <c:forEach items="${clases}" var="clase">
                                                    <option value="${clase.claProCod}">${clase.claProDet}</option>
                                                </c:forEach>
                                            </select> 
                                            <span class="input-group-addon"><i class="fa fa-book"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group">
                                            <input type="hidden" id="updSubClaProCod" name="subClaProCodUpd">
                                            <span class="input-group-addon">SubClase</span>
                                            <select class="form-control" id="updSubClaProCodId">
                                            </select> 
                                            <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon"><i class="fa fa-edit"></i></span>
                                            <input type="text" class="form-control" name="proDetUpd" placeholder="Descripción del Producto" id="udpDes">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon"><i class="fa fa-database"></i></span>
                                            <select class="form-control" id="udpAlmCod" name="almCodUpd">
                                                <c:forEach items="${almacenes}" var="almacen">
                                                    <option value="${almacen.almCod}">${almacen.almDet}</option>
                                                </c:forEach>
                                            </select> 
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon"><i class="fa fa-dollar"></i></span>
                                            <select class="form-control" id="updMonCod" name="monCodUpd">
                                                <c:forEach items="${monedas}" var="moneda">
                                                    <option value="${monedaDes.monCod}">${moneda.monDet}</option>
                                                </c:forEach>
                                            </select> 
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon"><i class="fa fa-gears"></i></span>
                                            <select class="form-control" id="updUniMedCod" name="uniMedCodUpd">
                                                <c:forEach items="${medidas}" var="medida">
                                                    <option value="${medida.uniMedCod}">${medida.uniMedDet}</option>
                                                </c:forEach>
                                            </select> 
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Stock Máximo</span>                                                            
                                            <input type="number" class="form-control" id="udpProStkMax" name="proStkMaxUpd" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-chevron-up"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Stock Mínimo</span>                                                           
                                            <input type="number" class="form-control" id="udpProStkMin" name="proStkMinUpd" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-chevron-down"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Volúmen</span>
                                            <input type="number" class="form-control" id="udpVolUniAlm" name="volUniAlmUpd" min="0.0" step="any" value="0.0">                                                              
                                            <span class="input-group-addon"><i class="fa fa-th"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Precio</span>                                                            
                                            <input type="number" class="form-control" id="udpProPreUni" name="proPreUniUpd" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div>    
                                    <div class="col-xs-12 col-md-12">
                                        Observaciones<br><br><textarea class="form-control" id="udpProObs" rows="1" name="proObsUpd" placeholder="No hay comentarios"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                <button type="submit" id="udpAccept" class="btn btn-success">Aceptar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div id="deleteProduct" class="modal fade">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Eliminar Producto</h4>
                        </div>
                        <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/compras/productos">
                            <div class="modal-body">
                                <input type="hidden" name="action" value="delete">
                                <input type="hidden" name="proCodDel" id="delProCod">
                                <span id="delMes"></span>                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                <button type="submit" id="delAccept" class="btn btn-success">Aceptar</button>                                            
                            </div>
                        </form>
                    </div>              
                </div>
            </div>
        </div>       
        <script language="javascript">
            $(document).ready(function () {
                changingValues();
                $('#tableSuppliers').DataTable({
                    responsive: true
                    });
            });

            function changingValues() {
                $('#addSubClaProCod').empty();
                var code = Number($("#addClaProCod").val());
                var tag = true;
                <c:forEach items="${subclases}" var="subclass">
                    if (${subclass.id.claProCod} == code) {
                        tag = false;
                        $('#addSubClaProCod').append($('<option>', {
                            value: "${subclass.id.subClaProCod}",
                            text: "${subclass.subClaProDet}"
                        }));
                    }
                </c:forEach>
                if (tag) {
                    $('#addSubClaProCod').append($('<option>', {
                        value: "",
                        text: "No existen subclases"
                    }));
                }
            }

            $.validator.addMethod("greaterThan", function (value, element, param) {
                return parseFloat(value, 10) > parseFloat($(param).val(), 10);
            });

            $("#addForm").validate({
                rules: {
                    proDetAdd: {
                        required: true
                    },
                    subClaProCodAdd: {
                        required: true
                    },
                    proStkMaxAdd: {
                        greaterThan: "#addProStkMin"
                    }
                },
                messages: {
                    proDetAdd: {
                        required: "Ingrese una descripción para el producto"
                    },
                    subClaProCodAdd: {
                        required: ""
                    },
                    proStkMaxAdd: {
                        greaterThan: "> Minimo"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            $("#deleteProduct").on('show.bs.modal', function (e) {                
                if($(e.relatedTarget).data('pest') == 'E') {
                    $("#delMes").text("El elemento ya ha sido elimado");
                    $("#delAccept").prop("disabled", true);
                } else {
                    $("#delProCod").val($(e.relatedTarget).data('pcode'));
                    $("#delMes").text("¿Desea eliminar el producto '" + $(e.relatedTarget).data('pdes') + "' de forma permanente?");
                    $("#delAccept").prop("disabled", false);
                }                
            });

            $("#modifyProduct").on('show.bs.modal', function (e) {
                $("#udpClaProCodId").val($(e.relatedTarget).data('pcla'));
                changingUpdatedValues();
                $("#updSubClaProCodId").val($(e.relatedTarget).data('psub'));
                $("#udpProCod").val($(e.relatedTarget).data('pcod'));
                $("#udpDes").val($(e.relatedTarget).data('pdes'));
                $("#udpAlmCod").val($(e.relatedTarget).data('palmcod'));
                $("#updMonCod").val($(e.relatedTarget).data('pmoncod'));
                $("#updUniMedCod").val($(e.relatedTarget).data('punimedcod'));
                $("#udpProStkMax").val($(e.relatedTarget).data('pprostkmax'));
                $("#udpProStkMin").val($(e.relatedTarget).data('pprostkmin'));
                $("#udpVolUniAlm").val($(e.relatedTarget).data('pvolunialm'));
                $("#udpProPreUni").val($(e.relatedTarget).data('ppreuni'));
                $("#udpProObs").val($(e.relatedTarget).data('pobs'));
                $("#updClaProCod").val($(e.relatedTarget).data('pcla'));
                $("#updSubClaProCod").val($(e.relatedTarget).data('psub'));
                $("#udpClaProCodId").prop("disabled", true);
                $("#updSubClaProCodId").prop("disabled", true);

                if ($(e.relatedTarget).data('pest') == 'A') {
                    $("#udpDes").prop("disabled", false);
                    $("#udpAlmCod").prop("disabled", false);
                    $("#updMonCod").prop("disabled", false);
                    $("#updUniMedCod").prop("disabled", false);
                    $("#udpProStkMax").prop("disabled", false);
                    $("#udpProStkMin").prop("disabled", false);
                    $("#udpVolUniAlm").prop("disabled", false);
                    $("#udpProPreUni").prop("disabled", false);
                    $("#udpVolUniAlm").prop("disabled", false);
                    $("#udpProObs").prop("disabled", false);
                    $("#udpAccept").prop("disabled", false);
                    $("#errorMessage").text("");
                } else {
                    $("#udpDes").prop("disabled", true);
                    $("#udpAlmCod").prop("disabled", true);
                    $("#updMonCod").prop("disabled", true);
                    $("#updUniMedCod").prop("disabled", true);
                    $("#udpProStkMax").prop("disabled", true);
                    $("#udpProStkMin").prop("disabled", true);
                    $("#udpVolUniAlm").prop("disabled", true);
                    $("#udpProPreUni").prop("disabled", true);
                    $("#udpVolUniAlm").prop("disabled", true);
                    $("#udpProObs").prop("disabled", true);
                    $("#udpAccept").prop("disabled", true);
                    $("#errorMessage").text("El producto seleccionado se encuentra eliminado, por lo tanto sus atributos no se pueden modificar");
                }
            });

            $("#modifyForm").validate({
                rules: {
                    proDetUpd: {
                        required: true
                    },
                    proStkMaxUpd: {
                        greaterThan: "#udpProStkMin"
                    }
                },
                messages: {
                    proDetUpd: {
                        required: "Ingrese una descripción para el producto"
                    },
                    proStkMaxUpd: {
                        greaterThan: "> Minimo"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            function changingUpdatedValues() {
                $('#updSubClaProCodId').empty();
                var code = Number($("#udpClaProCodId").val());

                var tag = true;
                <c:forEach items="${subclases}" var="subclass">
                    if (${subclass.id.claProCod} == code) {
                        tag = false;
                        $('#updSubClaProCodId').append($('<option>', {
                            value: "${subclass.id.subClaProCod}",
                            text: "${subclass.subClaProDet}"
                        }));
                    }
                </c:forEach>
                if (tag) {
                    $('#updSubClaProCodId').append($('<option>', {
                        value: "",
                        text: "No existen subclases"
                    }));
                }
            }
        </script>
    </jsp:attribute>
</minierptemplate:template>
