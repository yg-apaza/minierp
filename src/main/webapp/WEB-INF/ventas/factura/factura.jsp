<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Ventas - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        
        <div class="panel-body">
            <div class="form-group">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Factura</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <button type="button" data-toggle="modal" data-target="#addFactura" class="btn btn-success">Crear Factura <i class="fa fa-plus"></i></button>   
                    </div>
                    <div class="col-lg-4"></div>        
                </div>
                <br>
                <div class="row">
                    <div class="col-lg-12">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Fecha</th>
                                    <th>Factura</th>
                                    <th>Cliente</th>
                                    <th>Vendedor</th>
                                    <th>Importe</th>
                                    <th>Tipo</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${facturas}" var="c">
                                    <tr>
                                        <td>${c.facVenCabFec}</td>
                                        <td>${c.facVenCabCod}</td>
                                        <td>${c.enP1mCliente.cliNom}</td>
                                        <td>${c.enP1mUsuario.usuNom}</td>
                                        <td>${c.facVenCabTot}</td>                            
                                        <td>${c.taGzzTipoPagoFactura.tipPagDet}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>  
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                         <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=registroventas" class="btn btn-outline btn-danger">
                            <i class="fa fa-file-pdf-o"></i>
                            Descargar Registro [PDF]
                        </a>
                    </div>
                    <div class="col-lg-4"></div>        
                </div>
                
            </div>
        </div>
        
        <div id="addFactura" class="modal fade" role="dialog"><div class="modal-dialog"><div class="modal-content">
             
            <!-- TITULO-->
            <div class="modal-header"> <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Agregar Factura</h4>
            </div>
            <!-- FIN_TITULO -->

            <form role=form" method="post" action="${pageContext.request.contextPath}/secured/ventas/factura/addFactura">
            <!-- CONTENIDO -->
            <div class="modal-body">   
                    
                <div class="form-horizontal">
                    <div class="panel panel-default">
                        
                        <div class="panel-heading">

                            <div class="form-group"> 
                                <div class="col-sm-6">                               
                                    <input type="text" class="form-control" placeholder="Codidgo Factura" name="CodCabFac">                                                                                                         
                                </div>
                                <div class="col-sm-6">
                                    <select class="form-control" name="cliCod" id="cliCod">
                                        <c:forEach items="${clientes}" var="t">    
                                            <option value="${t.cliCod}">${t.cliNom} ${t.cliApePat} ${t.cliApeMat}</option>
                                        </c:forEach>
                                    </select>
                                </div>                                  
                            </div>

                            <div class="form-group">
                                <div class="col-sm-6">
                                    <select class="form-control" name="usuCod" id="usuCod">
                                        <c:forEach items="${users}" var="t">    
                                            <option value="${t.usuCod}">${t.usuNom} ${t.usuApePat} ${t.usuApeMat}</option>
                                        </c:forEach>
                                    </select>
                                </div> 
                                <div class="col-sm-3">
                                    <input placeholder="Fecha de venta" type='text' class="form-control" name="usuFecVen" id="usuFecVen"/>
                                </div>

                                <div class="col-sm-3">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Total" name="total" id="total">
                                        <span class="input-group-addon"><i class="fa fa-money"></i>
                                        </span>                                        
                                    </div>                                              
                                </div>

                            </div>

                        </div>

                        <div class="panel-body"> 

                            <div class="form-group">

                                <div class="col-sm-6">
                                    <label class="control-label">Método de Pago</label> 
                                    <select class="form-control" name="selecMetodoPago" id="metPagCod">
                                        <c:forEach items="${metodosPago}" var="t">    
                                            <option value="${t.metPagCod}">${t.metPagDet}</option>
                                        </c:forEach>
                                    </select>
                                    <label class="control-label">Tipo de Pago</label>                                
                                    <select class="form-control" id="tipPag" name="selectTipPag">
                                        <c:forEach items="${tipoPagos}" var="t">
                                            <option value="${t.tipPagCod}">${t.tipPagDet}</option>
                                        </c:forEach>
                                    </select>
                                    <label class="control-label">Tipo de Moneda</label>                                
                                    <select class="form-control" name="selectTipMon" id="tipMon">
                                        <c:forEach items="${monedas}" var="t">
                                            <option value="${t.monCod}">${t.monDet}</option>
                                        </c:forEach>
                                    </select>
                                    <label class="control-label">IGV</label>  
                                    <div class="input-group">                                        
                                        <input type="text" class="form-control" placeholder="19%" name="igv" id="igv">
                                        <span class="input-group-addon"><i class="fa fa-money"></i>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <label class="control-label">Observaciones</label>
                                    <textarea class="form-control" rows="7" name="obsrs" id="obsrs">

                                    </textarea>
                                </div>

                            </div>                                                                                                    
                            <div class="form-group">
                                <div>

                                    <label><h4>Detalle Factura</h4></label>
                                    <table id="tabla_productos" class="table table-hover table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th style="width: 15%">Clase</th>
                                                <th style="width: 20%">SubClase</th>
                                                <th style="width: 20%">Producto</th>
                                                <th style="width: 15%">Cantidad</th>
                                                <th style="width: 15%">Valor Unitario</th>
                                                <th style="width: 15%">Acciones</th>
                                        </thead>
                                        <tbody id="body_tabl_prods">
                                        <td>
                                            <select class="form-control" name="clases" id="clases">
                                                <option value=1>Domestico</option>
                                                <option value=2>Casero</option>
                                                <option value=3>De Hogar</option>
                                                <option value=4>Grifos</option>
                                                <option value=5>Varios</option>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" name="subclases" id="subclases">
                                                <option value=1>Barato</option>
                                                <option value=2>No tan barato</option>
                                                <option value=3>Caro y para Hogar</option>
                                                <option value=4>Grifos</option>
                                                <option value=5>Varios</option>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" name="productos" id="productos">
                                                <option value=1>Pollo</option>
                                                <option value=2>Carne</option>
                                                <option value=3>De Zapatos</option>
                                                <option value=4>Escritorio</option>
                                                <option value=5>Mesa</option>
                                            </select>
                                        </td>
                                        <td><input type="text" class="form-control" placeholder="Cantidad" name="cnt" ></td>
                                        <td><input type="text" class="form-control" placeholder="Pre. Uni" pre="pre" >${precio}</td>
                                        <td><button ><i class="fa fa-plus"></i></button>
                                            <button ><i class="fa fa-trash-o"></i></button></td>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div> 
                    </div>                                                                
                </div>
        
            </div>
            <!-- FIN CONTENIDO-->
              
            <!-- PIE -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button type="submit" class="btn btn-default" name="agregarFactura">Agregar</button>
            </div>
            <!-- FIN PIE -->
            </form>
        </div></div></div>
        <!-- FIN MODAL1 -->  
    </jsp:attribute>
</minierptemplate:template>
