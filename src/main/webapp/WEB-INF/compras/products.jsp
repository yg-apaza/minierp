<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Compras y Logística</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div id="wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <br><h1 class="page-header"> Productos</h1>
                </div>
            </div>            
            <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/compras/productos">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <div align="right">
                                    <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#addProduct"><i class="fa fa-plus"> Añadir Producto</i></button>
                                </div>
                            </div>
                            <div class="panel-body">
                                <table width="100%" class="table table-striped table-bordered table-hover" id="tableSuppliers">
                                    <thead>
                                        <tr>
                                            <th>Clase</th>
                                            <th>SubClase</th>
                                            <th>Código</th>
                                            <th>Descripción</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${productos}" var="p">
                                            <tr>
                                                <td>${p.enP2mSubclaseProducto.enP2mClaseProducto.claProDet}</td>
                                                <td>${p.enP2mSubclaseProducto.subClaProDet}</td>                                        
                                                <td>${p.id.proCod}</td>
                                                <td>${p.proDet}</td>
                                                <td class="text-center" width="50px">
                                                    <a href="#" data-target="#modificarModal">
                                                        <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                                    </a>
                                                    <a href="#" data-target="#eliminarModal">
                                                        <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                                    </a>
                                                </td>
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
                                        <div class="modal-body">
                                            <div class="col-lg-12">
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Clase de Producto</span>
                                                        <select class="form-control" name="claProCod">
                                                            <c:forEach items="${clases}" var="clase">
                                                                <option value="${clase.claProCod}">${clase.claProDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-fax"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">SubClase de Producto</span>
                                                        <select class="form-control" name="subClaProCod">
                                                            <c:forEach items="${subclases}" var="subclase">
                                                                <option value="${subclase.claProCod}">${subclase.claProDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-fax"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        <input type="text" class="form-control" name="proDet" placeholder="Detalle del Producto">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Almacén</span>
                                                        <select class="form-control" name="almCod">
                                                            <c:forEach items="${almacenes}" var="almacen">
                                                                <option value="${almacen.almCod}">${almacen.almDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-fax"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Moneda</span>
                                                        <select class="form-control" name="monCod">
                                                            <c:forEach items="${monedas}" var="moneda">
                                                                <option value="${moneda.monCod}">${moneda.monDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-fax"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Medida</span>
                                                        <select class="form-control" name="monCod">
                                                            <c:forEach items="${medidas}" var="medida">
                                                                <option value="${medida.uniMedCod}">${medida.uniMedDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-fax"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                        <input type="number" class="form-control" min="0.0" step="any" value="0.0">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                        <input type="number" class="form-control" min="0.0" step="any" value="0.0">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                        <input type="number" class="form-control" min="0.0" step="any" value="0.0">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                        <input type="number" class="form-control" min="0.0" step="any" value="0.0">
                                                    </div>
                                                </div>    
                                                <div class="col-md-12">
                                                    Observaciones<br><br>
                                                    <textarea class="form-control" rows="2" name="facComCabObs" placeholder="No hay comentarios"></textarea>
                                                </div>                                                
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                            <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>        
    </jsp:attribute>
</minierptemplate:template>
