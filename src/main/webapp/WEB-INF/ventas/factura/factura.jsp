<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Factura</h1>
            <br>
            <a class="btn btn-success" href="${pageContext.request.contextPath}/secured/factura/addFactura" role="button">
                <i class="fa fa-plus"></i>
                Agregar factura
            </a>
            <br>
            <a href="${pageContext.request.contextPath}/secured/reporteVentas?type=pdf&&report=registroventas" class="btn btn-outline btn-danger btn-lg btn-block">
                <i class="fa fa-file-pdf-o"></i>
                Descargar Registro de Ventas e Ingresos [PDF]
            </a>
            <br>
            <br>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Cliente</th>
                        <th>Usuario</th>
                        <th>Fecha</th>
                        <th>Total</th>
                        <th>Descuento</th>
                        <th>Estado Factura</th>
                        <th>Metodo Pago</th>
                        <th>Tipo Pago</th>
                        <th>Fecha de Emision</th>
                        <th>Tipo de Comprobante</th>
                        <th>N° de Comprobante</th>
                        <!--Los siguientes 2 deberian ser D. de Identidad y Numero de documento -->
                        <th>Dirección</th>
                        <th>Celular</th>
                        <th>Apellidos y Nombres</th>
                        <th>Importe Total</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${facturas}" var="c">
                        <tr>
                            <td>${c.facVenCabCod}</td>
                            <td>${c.enP1mCliente.cliNom} ${c.enP1mCliente.cliApePat} ${c.enP1mCliente.cliApeMat}</td>
                            <td>${c.enP1mUsuario.usuNom} ${c.enP1mUsuario.usuApePat}</td>
                            <td><fmt:formatDate value="${u.facVenCabFec}" pattern="dd/MM/yyyy"/></td>
                            <td>${c.facVenCabTot}</td>                            
                            <td>${c.taGzzEstadoFactura.estFacDet}</td>
                            <td>${c.taGzzMetodoPagoFactura.metPagDet}</td>
                            <td>${c.taGzzTipoPagoFactura.tipPagDet}</td>
                            <td>
                                <i class="fa fa-pencil-square-o fa-2x"></i>
                                <i class="fa fa-trash-o fa-2x"></i>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </jsp:attribute>
</minierptemplate:template>
