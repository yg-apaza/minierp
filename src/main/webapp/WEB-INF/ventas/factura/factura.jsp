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
                        <h1 class="page-header">Factura de Venta</h1>
                    </div>
                </div>
                <form id="facturaLoteForm" role="form" action="${pageContext.request.contextPath}/secured/ventas/factura/facturaLotes" method="post">
                    <div class="row">
                        <div class="col-lg-6">
                            <a href="${pageContext.request.contextPath}/secured/ventas/factura/addFactura" class="btn btn-success">Crear Factura <i class="fa fa-plus"></i></a>
                        </div>
                        <div class="col-lg-6">
                            <div class="col-lg-3">
                                <button style="display:none" type="submit" class="btn btn-success"> Imprimir</button>  
                            </div> 
                            <div class="col-lg-3">
                                <label>Flujo Efectivo</label>
                            </div> 
                            <div class="col-lg-6">
                                <a  href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=flujoefectivo&&jdbc=true&&key=null&&value=null" class="btn btn-danger" >
                                    <i class="fa fa-file-pdf-o"></i>
                                </a>

                                <a  href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=flujoefectivo&&jdbc=true&&key=null&&value=null" class="btn  btn-primary" >
                                    <i class="fa fa-file-word-o"></i>
                                </a>
                            </div>
                        </div>
                    </div><br>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">    
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Fecha</th>
                                            <th>Factura</th>
                                            <th>Cliente</th>
                                            <th>Vendedor</th>
                                            <th>Importe</th>
                                            <th>Tipo</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${facturasVenta}" var="c">
                                            <tr>
                                                <td>${c.facVenCabFec}</td>
                                                <td>${c.facVenCabCod}</td>
                                                <td>${c.enP1mCliente.cliNom}</td>
                                                <td>${c.enP1mUsuario.usuNom}</td>
                                                <td>${c.facVenCabTot}</td>                            
                                                <td>${c.taGzzTipoPagoFactura.tipPagDet}</td>
                                                <td><input type="checkbox" name="facCodigos" value="${c.facVenCabCod}"></td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>  
                            </div>
                        </div>
                    </div>
                </form>
                <div class="row">
                    <div class="col-lg-4">
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=registroventas&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-danger">
                            <i class="fa fa-file-pdf-o"></i>
                            Descargar Registro [PDF]
                        </a>
                    </div>
                    <div class="col-lg-4"></div>        
                </div>
            </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>
