<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Compras - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <div class="form-group">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Factura de Compra</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <form role=form" method="get" action="${pageContext.request.contextPath}/secured/compras/factura/addFactura">
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <button type="submit" class="btn btn-success">Crear Factura <i class="fa fa-plus"></i></button>
                            </cc:if>
                            
                        </form>
                    </div>
                    <div class="col-lg-4">
                        <div class="col-lg-5">
                            <label>Flujo Efectivo</label>
                        </div> 
                        <div class="col-lg-7">
                            <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=flujoefectivo&&jdbc=true&&key=null&&value=null" class="btn btn-danger" >
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
                            <table class="table table-striped table-bordered table-hover" id="tablePurchases">
                                <thead>
                                    <tr>
                                        <th>Fecha</th>
                                        <th>Factura</th>
                                        <th>Proveedor</th>
                                        <th>Comprador</th>
                                        <th>Importe</th>
                                        <th>Tipo</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${facturasCompra}" var="c">
                                        <tr>
                                            <td>${c.facComCabFecEmi}</td>
                                            <td>${c.facComCabCod}</td>
                                            <td>${c.enP4mProveedor.prvDet}</td>
                                            <td>${c.enP1mUsuario.usuNom}</td>
                                            <td>${c.facComCabTot}</td>                            
                                            <td>${c.taGzzTipoPagoFactura.tipPagDet}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>  
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <a href="" class="btn btn-outline btn-danger">
                            <i class="fa fa-file-pdf-o"></i>
                            Descargar Registro [PDF]
                        </a>
                    </div>
                    <div class="col-lg-4"></div>        
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function() {
                $('#tablePurchases').DataTable({
                    responsive: true
                });
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>
