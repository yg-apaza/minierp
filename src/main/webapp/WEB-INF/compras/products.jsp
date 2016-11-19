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
                <div class="col-xs-12 col-md-9">
                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addProduct"> Agregar nuevo <i class="fa fa-plus"></i></button>                
                    <button type="button" class="btn btn-info" data-toggle="modal" data-target="#viewModal"> Ver Inhabilitados <i class="fa fa-eye"></i></button>                
                    </cc:if>
                </div>
                <div class="col-xs-12 col-md-3">
                    <div class="form-group input-group" >
                        <span class="input-group-addon">Reportes</span>
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
                            <th>Código</th>
                            <th>Codigo de Barras</th>
                            <th>Detalle</th>
                            <th>Unidad</th>
                            <th>Precio</th>
                            <th>Peso</th>    
                            <th>Almacen</th>
                            <th>Stock</th>
                            <th>Preventa</th>
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                            <th>Acciones</th>
                            </cc:if>
                        </tr>
                    </thead>
                    <tbody>
                       <c:forEach items="${productos}" var="p">
                            <tr>
                                <td>${p.id.proCod}</td>                                        
                                <td>${p.proCodBar}</td>
                                <td>${p.proDet}</td>
                                <td>${p.taGzzUnidadMed.uniMedSim}</td>
                                <td>${p.proPreUniVen}</td>
                                <td>${p.proPesNet}</td>
                                <td>${p.enP2mAlmacen.almDet}</td>
                                <td>${p.proStk}</td>
                                <td>${p.proStkPreVen}</td>
                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <td>
                                    <a href="#" data-toggle="modal" data-target="#updateModal" 
                                       title="Modificar Producto" 
                                       data-claprocod="${p.id.claProCod}"
                                       data-claprodet="${p.enP2mSubclaseProducto.enP2mClaseProducto.claProDet}"
                                       data-subclaprocod="${p.id.subClaProCod}"
                                       data-subclaprodet="${p.enP2mSubclaseProducto.subClaProDet}"
                                       data-procod="${p.id.proCod}"
                                       data-procodbar="${p.proCodBar}"
                                       data-prodet="${p.proDet}"
                                       data-almcod="${p.enP2mAlmacen.almCod}"
                                       data-unimedcod="${p.taGzzUnidadMed.uniMedCod}"
                                       data-volunialm="${p.volUniAlm}"
                                       data-prostkmax="${p.proStkMax}"
                                       data-prostkmin="${p.proStkMin}"
                                       data-propesnet="${p.proPesNet}"
                                       data-propreunicom="${p.proPreUniCom}"
                                       data-propreunifle="${p.proPreUniFle}"
                                       data-propreunimar="${p.proPreUniMar}"
                                       data-proobs="${p.proObs}">
                                        <i class="fa fa-pencil-square-o fa-lg" style="color: black;"></i>
                                    </a>
                                    <a href="#" data-toggle="modal" data-target="#disableModal" 
                                       title="Inhabilitar Producto"
                                       data-claprocod="${p.id.claProCod}"
                                       data-subclaprocod="${p.id.subClaProCod}"
                                       data-procod="${p.id.proCod}"
                                       data-prodet="${p.proDet}">
                                        <i class="fa fa-trash-o fa-lg" style="color: black;"></i>
                                    </a>
                                </td>
                                </cc:if>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>     
            </div>
            <div class="modal fade" id="addProduct">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content" style="overflow-y: auto">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">Añadir Producto</h4>
                        </div>
                        <form id="addForm" method="post" action="${pageContext.request.contextPath}/secured/compras/productos">
                            <div class="modal-body">
                                <input type="hidden" name="action" value="create">
                                <div class="col-md-12 form-group input-group">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Clase</span>
                                            <select class="form-control" id="addClaProCod" name="claProCod" onchange="changingValues()">
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
                                            <select class="form-control" id="addSubClaProCod" name="subClaProCod">
                                            </select> 
                                            <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Codigo</span>
                                            <input type="text" class="form-control" name="proCod" >
                                            <span class="input-group-addon"><i class="fa fa-th"></i></span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Codigo de Barras</span>
                                            <input type="text" class="form-control" name="proCodBar" >
                                            <span class="input-group-addon"><i class="fa fa-th"></i></span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-12">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Descripcion</span>
                                            <input type="text" class="form-control" name="proDet" placeholder="Descripcion del producto">
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Almacen</span>
                                            <select class="form-control" name="almCod">
                                                <c:forEach items="${almacenes}" var="almacen">
                                                    <option value="${almacen.almCod}">${almacen.almDet}</option>
                                                </c:forEach>
                                            </select> 
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Unidad</span>
                                            <select class="form-control" name="uniMedCod">
                                                <c:forEach items="${medidas}" var="medida">
                                                    <option value="${medida.uniMedCod}">${medida.uniMedDet}</option>
                                                </c:forEach>
                                            </select> 
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Volúmen</span>
                                            <input type="number" class="form-control" name="volUniAlm" min="0.0" step="any" value="0.0">                                                              
                                            <span class="input-group-addon"><i class="fa fa-th"></i></span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Stock Máximo</span>                                                            
                                            <input type="number" class="form-control" name="proStkMax" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-chevron-up"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Stock Mínimo</span>                                                           
                                            <input type="number" class="form-control" id="addProStkMin" name="proStkMin" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-chevron-down"></i></span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Peso(Kg)</span>                                                            
                                            <input type="number" class="form-control" name="proPesNet" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div>
                                                                        
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">P. Compra</span>                                                            
                                            <input type="number" class="form-control" name="proPreUniCom" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">P. Flete</span>                                                            
                                            <input type="number" class="form-control" name="proPreUniFle" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div>
                                                                        
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Margen</span>                                                            
                                            <input type="number" class="form-control" name="proPreUniMar" min="0.0" step="any" value="0.0">
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div>
                                                                     
                                    <div class="col-xs-12 col-md-12">
                                        Observaciones<br><br><textarea class="form-control" rows="3" name="proObs" placeholder="No hay comentarios"></textarea>
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
            
            <div class="modal fade" id="updateModal">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content" style="overflow-y: auto">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">Modificar Producto</h4>
                        </div>
                        
                        <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/compras/productos">
                            <div class="modal-body">
                                <input type="hidden" name="action" value="update">
                                <input type="hidden" name="claProCod" id="updateClaProCod">
                                <input type="hidden" name="subClaProCod" id="updateSubClaProCod">
                                <div class="col-md-12 form-group input-group">
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Clase</span>
                                                <input type="text" class="form-control" id="updateClaProCodAll" readonly>
                                            <span class="input-group-addon"><i class="fa fa-book"></i></span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">SubClase</span>
                                                <input type="text" class="form-control" id="updateSubClaProCodAll" readonly>
                                            <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Codigo</span>
                                                <input type="text" class="form-control" name="proCod" id="updateProCod" readonly>
                                            <span class="input-group-addon"><i class="fa fa-th"></i></span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Codigo de Barras</span>
                                            <input type="text" class="form-control" name="proCodBar" id="updateProCodBar">
                                            <span class="input-group-addon"><i class="fa fa-th"></i></span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-12">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Descripcion</span>
                                            <input type="text" class="form-control" name="proDet" id="updateProDet">
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Almacen</span>
                                            <select class="form-control" name="almCod" id="updateAlmCod">
                                                <c:forEach items="${almacenes}" var="almacen">
                                                    <option value="${almacen.almCod}">${almacen.almDet}</option>
                                                </c:forEach>
                                            </select> 
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Unidad</span>
                                            <select class="form-control" name="uniMedCod" id="updateUniMedCod">
                                                <c:forEach items="${medidas}" var="medida">
                                                    <option value="${medida.uniMedCod}">${medida.uniMedDet}</option>
                                                </c:forEach>
                                            </select> 
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Volúmen</span>
                                            <input type="number" class="form-control" name="volUniAlm" min="0.0" step="any" value="0.0" id="updateVolUniAlm">                                                              
                                            <span class="input-group-addon"><i class="fa fa-th"></i></span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Stock Máximo</span>                                                            
                                            <input type="number" class="form-control" name="proStkMax" min="0.0" step="any" value="0.0" id="updateProStkMax">
                                            <span class="input-group-addon"><i class="fa fa-chevron-up"></i></span>
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Stock Mínimo</span>                                                           
                                            <input type="number" class="form-control" name="proStkMin" min="0.0" step="any" value="0.0" id="updateProStkMin" >
                                            <span class="input-group-addon"><i class="fa fa-chevron-down"></i></span>
                                        </div>
                                    </div>
                                    
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Peso(Kg)</span>                                                            
                                            <input type="number" class="form-control" name="proPesNet" min="0.0" step="any" value="0.0" id="updateProPesNet">
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div>
                                                                        
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">P. Compra</span>                                                            
                                            <input type="number" class="form-control" name="proPreUniCom" min="0.0" step="any" value="0.0" id="updateProPreUniCom">
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div>

                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">P. Flete</span>                                                            
                                            <input type="number" class="form-control" name="proPreUniFle" min="0.0" step="any" value="0.0" id="updateProPreUniFle">
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div>
                                                                     
                                    <div class="col-xs-12 col-md-4">
                                        <div class="form-group input-group" >
                                            <span class="input-group-addon">Margen</span>                                                            
                                            <input type="number" class="form-control" name="proPreUniMar" min="0.0" step="any" value="0.0" id="updateProPreUniMar">
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div>
                                                                     
                                    <div class="col-xs-12 col-md-12">
                                        Observaciones<br><br><textarea class="form-control" rows="3" name="proObs" id="updateProObs"></textarea>
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
                            
            <div id="disableModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-md">
                    <div class="modal-content" style="overflow-y: auto">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Inhabilitar Producto</h4>
                        </div>
                        <form id="disableForm" method="post" action="${pageContext.request.contextPath}/secured/compras/productos">
                            <div class="modal-body">
                                <input type="hidden" name="action" value="disable">
                                <input type="hidden" name="claProCod" id="disableClaProCod">
                                <input type="hidden" name="subClaProCod" id="disableSubClaProCod">
                                <input type="hidden" name="proCod" id="disableProCod">
                                <p> ¿Desea Inhabilitar el producto: <span id="disableProAll"></span> ?</p>                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                <button type="submit" class="btn btn-success">Aceptar</button>                                            
                            </div>
                        </form>
                    </div>              
                </div>
            </div>
                            
            <div id="viewModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content" style="overflow-y: auto">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Producto Inhabilitados</h4>
                        </div>
                        <div class="modal-body">
                            <div class="col-md-12 form-group input-group">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover" id="tableInactives">
                                        <thead>
                                            <tr>
                                                <th>Código</th>
                                                <th>Codigo de Barras</th>
                                                <th>Detalle</th>
                                                <th>Precio</th>
                                                <th>Almacen</th>
                                                <th>Stock</th>
                                                <th>Preventa</th>
                                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                <th>Acciones</th>
                                                </cc:if>
                                            </tr>
                                        </thead>
                                        <tbody>
                                           <c:forEach items="${inactivos}" var="p">
                                                <tr>
                                                    <td>${p.id.proCod}</td>                                        
                                                    <td>${p.proCodBar}</td>
                                                    <td>${p.proDet}</td>
                                                    <td>${p.proPreUniVen}</td>
                                                    <td>${p.enP2mAlmacen.almDet}</td>
                                                    <td>${p.proStk}</td>
                                                    <td>${p.proStkPreVen}</td>
                                                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                    <td>
                                                        <a href="#" data-toggle="modal" data-target="#activateModal" 
                                                           title="Re-Activar Producto"
                                                           data-claprocod="${p.id.claProCod}"
                                                           data-subclaprocod="${p.id.subClaProCod}"
                                                           data-procod="${p.id.proCod}"
                                                           data-prodet="${p.proDet}">
                                                            <i class="fa fa-check fa-lg" style="color: green;"></i>
                                                        </a>
                                                        <a href="#" data-toggle="modal" data-target="#deleteModal" 
                                                           title="Eliminar Producto" 
                                                           data-claprocod="${p.id.claProCod}"
                                                           data-subclaprocod="${p.id.subClaProCod}"
                                                           data-procod="${p.id.proCod}"
                                                           data-prodet="${p.proDet}">
                                                            <i class="fa fa-trash-o fa-lg" style="color: red;"></i>
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
                    </div>              
                </div>
            </div>                
               
            <div id="activateModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-md">
                    <div class="modal-content" style="overflow-y: auto">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Activar Producto</h4>
                        </div>
                        <form id="activateForm" method="post" action="${pageContext.request.contextPath}/secured/compras/productos">
                            <div class="modal-body">
                                <input type="hidden" name="action" value="activate">
                                <input type="hidden" name="claProCod" id="activateClaProCod">
                                <input type="hidden" name="subClaProCod" id="activateSubClaProCod">
                                <input type="hidden" name="proCod" id="activateProCod">
                                <p> ¿Desea Activar el producto: <span id="activateProAll"></span> ?</p>                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                <button type="submit" class="btn btn-success">Aceptar</button>                                            
                            </div>
                        </form>
                    </div>              
                </div>
            </div>
            
            <div id="deleteModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-md">
                    <div class="modal-content" style="overflow-y: auto">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Eliminar Producto</h4>
                        </div>
                        <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/compras/productos">
                            <div class="modal-body">
                                <input type="hidden" name="action" value="delete">
                                <input type="hidden" name="claProCod" id="deleteClaProCod">
                                <input type="hidden" name="subClaProCod" id="deleteSubClaProCod">
                                <input type="hidden" name="proCod" id="deleteProCod">
                                <p> ¿Desea Eliminar el producto: <span id="deleteProAll"></span> ?</p>                                
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
        <script language="javascript">
            $(document).ready(function () {
                changingValues();
                $('#tableSuppliers').DataTable({
                    responsive: true
                    });
                $('#tableInactives').DataTable({
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
                    proDet: {
                        required: true
                    },
                    subClaProCod: {
                        required: true
                    },
                    proStkMax: {
                        greaterThan: "#addProStkMin"
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
           
            var disableModal = $("#disableModal");
            
            var disableClaProCod = $("#disableClaProCod");
            var disableSubClaProCod = $("#disableSubClaProCod");
            var disableProCod = $("#disableProCod");
            var disableProAll = $("#disableProAll");
            
            disableModal.on('show.bs.modal', function (e) {
                disableClaProCod.val($(e.relatedTarget).data('claprocod'));
                disableSubClaProCod.val($(e.relatedTarget).data('subclaprocod'));
                disableProCod.val($(e.relatedTarget).data('procod'));
                disableProAll.text($(e.relatedTarget).data('prodet'));
            });
            
            var activateModal = $("#activateModal");
            
            var activateClaProCod = $("#activateClaProCod");
            var activateSubClaProCod = $("#activateSubClaProCod");
            var activateProCod = $("#activateProCod");
            var activateProAll = $("#activateProAll");
            
            activateModal.on('show.bs.modal', function (e) {
                activateClaProCod.val($(e.relatedTarget).data('claprocod'));
                activateSubClaProCod.val($(e.relatedTarget).data('subclaprocod'));
                activateProCod.val($(e.relatedTarget).data('procod'));
                activateProAll.text($(e.relatedTarget).data('prodet'));
            });
            
            var deleteModal = $("#deleteModal");
            
            var deleteClaProCod = $("#deleteClaProCod");
            var deleteSubClaProCod = $("#deleteSubClaProCod");
            var deleteProCod = $("#deleteProCod");
            var deleteProAll = $("#deleteProAll");
            
            deleteModal.on('show.bs.modal', function (e) {
                deleteClaProCod.val($(e.relatedTarget).data('claprocod'));
                deleteSubClaProCod.val($(e.relatedTarget).data('subclaprocod'));
                deleteProCod.val($(e.relatedTarget).data('procod'));
                deleteProAll.text($(e.relatedTarget).data('prodet'));
            });
            
            var updateModal = $("#updateModal");
            
            var updateClaProCod = $("#updateClaProCod");
            var updateSubClaProCod = $("#updateSubClaProCod");
            var updateClaProCodAll = $("#updateClaProCodAll");
            var updateSubClaProCodAll = $("#updateSubClaProCodAll");
            var updateProCod = $("#updateProCod");
            var updateProCodBar = $("#updateProCodBar");
            var updateProDet = $("#updateProDet");
            var updateAlmCod = $("#updateAlmCod");
            var updateUniMedCod = $("#updateUniMedCod");
            var updateVolUniAlm = $("#updateVolUniAlm");
            var updateProStkMax = $("#updateProStkMax");
            var updateProStkMin = $("#updateProStkMin");
            var updateProPesNet = $("#updateProPesNet");
            var updateProPreUniCom = $("#updateProPreUniCom");
            var updateProPreUniFle = $("#updateProPreUniFle");
            var updateProPreUniMar = $("#updateProPreUniMar");
            var updateProObs = $("#updateProObs");
            
            updateModal.on('show.bs.modal', function (e) {
                updateClaProCod.val($(e.relatedTarget).data('claprocod'));
                updateSubClaProCod.val($(e.relatedTarget).data('subclaprocod'));
                updateClaProCodAll.val($(e.relatedTarget).data('claprocod') + " - " + $(e.relatedTarget).data('claprodet'));
                updateSubClaProCodAll.val($(e.relatedTarget).data('subclaprocod') + " - " + $(e.relatedTarget).data('subclaprodet'));
                updateProCod.val($(e.relatedTarget).data('procod'));
                updateProCodBar.val($(e.relatedTarget).data('procodbar'));
                updateProDet.val($(e.relatedTarget).data('prodet'));
                updateAlmCod.val($(e.relatedTarget).data('almcod'));
                updateUniMedCod.val($(e.relatedTarget).data('unimedcod'));
                updateVolUniAlm.val($(e.relatedTarget).data('volunialm'));
                updateProStkMax.val($(e.relatedTarget).data('prostkmax'));
                updateProStkMin.val($(e.relatedTarget).data('prostkmin'));
                updateProPesNet.val($(e.relatedTarget).data('propesnet'));
                updateProPreUniCom.val($(e.relatedTarget).data('propreunicom'));
                updateProPreUniFle.val($(e.relatedTarget).data('propreunifle'));
                updateProPreUniMar.val($(e.relatedTarget).data('propreunimar'));
                updateProObs.val($(e.relatedTarget).data('proobs'));
            });
             
 

            $("#updateForm").validate({
                rules: {
                    proDet: {
                        required: true
                    },
                    proStkMax: {
                        greaterThan: "#updateProStkMin"
                    }
                },
                messages: {
                    proDet: {
                        required: "Ingrese una descripción para el producto"
                    },
                    proStkMax: {
                        greaterThan: "> Minimo"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>
