<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Logística - Productos</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div id="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <br><h1 class="page-header"> Productos</h1>
                </div>
            </div>            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div align="right">
                                <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#addProduct">Añadir</button>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table width="100%" class="table table-striped table-bordered table-hover" id="tableSuppliers">
                                   <thead>
                                       <tr>
                                           <th>Clase</th>
                                           <th>SubClase</th>
                                           <th>Código</th>
                                           <th>Descripción</th>
                                           <th>Estado</th>
                                           <th>Acciones</th>
                                       </tr>
                                   </thead>
                                   <tbody>
                                       <c:forEach items="${productos}" var="p">
                                           <tr>
                                               <td width="150px">${p.enP2mSubclaseProducto.enP2mClaseProducto.claProDet}</td>
                                               <td width="200px">${p.enP2mSubclaseProducto.subClaProDet}</td>                                        
                                               <td width="100px">${p.id.proCod}</td>
                                               <td width="300px">${p.proDet}</td>
                                               <td class="text-center" width="50px">${p.estRegCod}</td>
                                               <td class="text-center" width="50px">
                                                   <a href="#" data-target="#modificarModal">
                                                       <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                                   </a>
                                                   <a href="#" data-toggle="modal" data-target="#deleteProduct" data-codeProduct="${p.id.proCod}/${p.id.subClaProCod}/${p.id.claProCod}" data-descriptionProduct="${p.proDet}">
                                                       <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                                   </a>
                                               </td>
                                           </tr>
                                       </c:forEach>
                                   </tbody>
                               </table>     
                            </div>
                            
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
                                                        <select class="form-control" id="classSelected" name="claProCod" onchange="changingValues()">
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
                                                        <select class="form-control" id="subClassSelected" name="subClaProCod">
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-12">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-edit"></i></span>
                                                        <input type="text" class="form-control" name="proDet" placeholder="Descripción del Producto">
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-4">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-database"></i></span>
                                                        <select class="form-control" name="almCod">
                                                            <c:forEach items="${almacenes}" var="almacen">
                                                                <option value="${almacen.almCod}">${almacen.almDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-4">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-dollar"></i></span>
                                                        <select class="form-control" name="monCod">
                                                            <c:forEach items="${monedas}" var="moneda">
                                                                <option value="${moneda.monCod}">${moneda.monDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-4">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-gears"></i></span>
                                                        <select class="form-control" name="uniMedCod">
                                                            <c:forEach items="${medidas}" var="medida">
                                                                <option value="${medida.uniMedCod}">${medida.uniMedDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Stock Máximo</span>                                                            
                                                        <input type="number" class="form-control" name="proStkMax" min="0.0" step="any" value="0.0">
                                                        <span class="input-group-addon"><i class="fa fa-chevron-up"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Stock Mínimo</span>                                                           
                                                        <input type="number" class="form-control" id="productStockMin" name="proStkMin" min="0.0" step="any" value="0.0">
                                                        <span class="input-group-addon"><i class="fa fa-chevron-down"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Volúmen</span>
                                                        <input type="number" class="form-control" name="volUniAlm" min="0.0" step="any" value="0.0">                                                              
                                                        <span class="input-group-addon"><i class="fa fa-th"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-xs-12 col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Precio</span>                                                            
                                                        <input type="number" class="form-control" name="proPreUni" min="0.0" step="any" value="0.0">
                                                        <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                    </div>
                                                </div>    
                                                <div class="col-xs-12 col-md-12">
                                                    Observaciones<br><br><textarea class="form-control" rows="1" name="proObs" placeholder="No hay comentarios"></textarea>
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
                        <div id="deleteProduct" class="modal">
                            <div class="modal-dialog modal-sm">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Eliminar Producto</h4>
                                    </div>
                                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/compras/productos">
                                        <div class="modal-body">
                                            <input type="hidden" name="action" value="delete">
                                            <input type="hidden" name="proCod" id="deleteProCod">
                                            <p align="center"> ¿Desea eliminar el producto "<span id="deleteProDes"></span>" de forma permanente?</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                            <button type="submit" class="btn btn-success">Aceptar</button>                                            
                                        </div>
                                    </form>
                                </div>              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>       
        <script language="javascript">
            $(document).ready(function () {
                changingValues();
            });

            function changingValues() {
                $('#subClassSelected').empty();
                var code = Number($("#classSelected").val());
                var tag = true;
                <c:forEach items="${subclases}" var="subclass">
                    if (${subclass.id.claProCod} == code) {
                        tag = false;
                        $('#subClassSelected').append($('<option>', {
                            value: "${subclass.id.claProCod}",
                            text: "${subclass.subClaProDet}"
                        }));
                    }
                </c:forEach>
                if (tag) {
                    $('#subClassSelected').append($('<option>', {
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
                    proDet: {
                        required: true
                    },
                    subClaProCod: {
                        required: true
                    },
                    proStkMax: {
                        greaterThan: "#productStockMin"
                    }
                },
                messages: {
                    proDet: {
                        required: "Ingrese una descripción para el producto"
                    },
                    subClaProCod: {
                        required: ""
                    },
                    proStkMax: {
                        greaterThan: "> Minimo"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
            
            $("#deleteProduct").on('show.bs.modal', function(e){
                $("#deleteProCod").val($(e.relatedTarget).data('codeproduct'));
                $("#deleteProDes").text($(e.relatedTarget).data('descriptionproduct'));                
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>
