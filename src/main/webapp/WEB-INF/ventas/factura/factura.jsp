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
            <a class="btn btn-success" href="${pageContext.request.contextPath}/secured/ventas/factura/addFactura" role="button">
                <i class="fa fa-plus"></i>
                Agregar factura
            </a>
            <br>
            <br>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Fecha de Emision</th>
                        <th>Tipo de Comprobante</th>
                        <th>N° de Comprobante</th>
                        <th>D. Identidad</th>
                        <th>Celular</th>
                        <th>Apellidos y Nombres</th>
                        <th>Importe Total</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${facturas}" var="c">
                       <tr>
                          <td value="${facturas}">${facturas.facVenCabFec}</td>
                       </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </jsp:attribute>
</minierptemplate:template>