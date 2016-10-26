<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
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
                            <button type="submit" class="btn btn-success">Crear Factura <i class="fa fa-plus"></i></button>   
                        </form>
                    </div>
                    <div class="col-lg-4">
                        <div class="col-lg-5">
                            <label>Flujo Efectivo</label>
                        </div> 
                        <div class="col-lg-7">
                            <a href="" class="btn btn-danger" >
                                <i class="fa fa-file-pdf-o"></i>
                            </a>

                            <a  href="" class="btn  btn-primary" >
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
                                        <th>Proveedor</th>
                                        <th>Comprador</th>
                                        <th>Importe</th>
                                        <th>Tipo</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${facturasCompra}" var="c">
                                        <tr>
                                            <td>${c.facComCabFec}</td>
                                            <td>${c.facComCabCod}</td>
                                            <td>${c.enP4mProveedor.proDet}</td>
                                            <td>${c.enP1mUsuario.usuNom}</td>
                                            <td>${c.facComCabTot}</td>                            
                                            <td>${c.taGzzTipoPagoFactura.tipPagDet}</td>
                                            <td width="50px">Acciones</td>
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
    </jsp:attribute>
</minierptemplate:template>