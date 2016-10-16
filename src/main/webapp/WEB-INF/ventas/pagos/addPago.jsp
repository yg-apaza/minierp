<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Pagos y Cuotas</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
        <form role="form" method="post" action="${pageContext.request.contextPath}/secured/ventas/pagos/addPago"> 
            <h1 class="page-header">Pagos y Cuotas</h1>
                <div class="form-horizontal">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" placeholder="Codidgo Factura" name="CodCabFac"value="${CodCabFac}">
                                </div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" placeholder="Deuda Total" name="deuTot" value="${deuTot}">
                                </div>                        
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="control-label">Codigo pago cuota</label>
                                    <input type="text" class="form-control" placeholder="Codigo Pago Cuota" name="codPagCuo">
                                </div>
                                <div class="col-sm-6">
                                    <label class="control-label">Monto pago cuota</label>
                                    <input type="text" class="form-control" placeholder="Monto Pago Cuota" name="monPagCuo">
                                </div>
                            </div>
                            <button type="submit" class="btn btn-lg btn-success btn-block">
                        <i class="fa fa-check"></i> Agregar Pago
                    </button> 
                        </div>
                       
                    </div>
                </div>
                
            </form>
        </div>
    </jsp:attribute>
</minierptemplate:template>