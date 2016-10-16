<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Ventas - Pagos y Cuotas</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
        <form role="form" method="post" action="${pageContext.request.contextPath}/secured/ventas/pagos">            
            <h1 class="page-header">Pagos y Cuotas</h1>
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-2">Código Factura</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" placeholder="Codidgo Factura" name="CodCabFac">
                        </div>
                        <button type="submit" class="btn btn-primary" name="buscarFactura">Buscar <i class="fa fa-search-plus fa-1x"></i></button>
                        <button type="submit" class="btn btn-primary" name="todos">Todos <i class="fa fa-child"></i></button>
                    </div>
                </div>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Cód. Fac</th>
                            <th>Total Cuotas</th>
                            <th>Cuotas Pagadas</th>
                            <th>Deuda Total</th>
                            <th>Fecha Inicio</th>
                            <th>Fecha Fin</th>
                            <th>Fecha Pago</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${pagos}" var="c">
                            <tr>                            
                                <td>${c.enP1mFacturaVentaCab.facVenCabCod}</td>
                                <td>${c.pagCuoNum}</td>
                                <td>${c.pagCuoNumPag}</td>
                                <td>${c.pagCuoDeuTot}</td>
                                <td><fmt:formatDate value="${c.pagCuoFecIni}" pattern="dd/MM/yyyy"/></td>
                                <td><fmt:formatDate value="${c.pagCuoFecFin}" pattern="dd/MM/yyyy"/></td>
                                <td><fmt:formatDate value="${c.pagCuoFecPag}" pattern="dd/MM/yyyy"/></td>
                                <td>
                                    <button class="btn btn-primary" type="submit" name="pagar" value="${c.enP1mFacturaVentaCab.facVenCabCod}" > <i class="fa fa-dollar fa-1x"></i></button>
                                    <!--
                                    <button class="btn btn-danger" type="submit" name="factura" value="${c.enP1mFacturaVentaCab.facVenCabCod}" type="submit" ><i class="fa fa-trash-o fa-1x"></i></button>    
                                    -->
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table> 
</form>
        </div>
    </jsp:attribute>
</minierptemplate:template>