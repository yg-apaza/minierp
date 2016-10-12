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
            <a href="${pageContext.request.contextPath}/secured/ventas/reporteVentas?type=pdf&&report=registroVentas" class="btn btn-outline btn-danger btn-lg btn-block">
                    <i class="fa fa-file-pdf-o"></i>
                    Descargar Registro de Ventas e Ingresos [PDF]
            </a>
            <br>
            <br>
            <table class="table table-hover">
                <thead>
                    <tr>
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
                    <c:forEach items="${facturas}" var="facturas">
                        
                        <tr>
                           <td > ${facturas.facVenCabFec}</td>
                           <td > Factura </td>
                           <td > ${facturas.facVenCabCod} </td>
                           <td > ${facturas.enP1mCliente.cliDir} </td>
                           <td > ${facturas.enP1mCliente.cliTelCel} </td>
                           <td > ${facturas.enP1mCliente.cliApePat} ${facturas.enP1mCliente.cliApeMat} ${facturas.enP1mCliente.cliNom} </td>
                           <td > ${facturas.facVenCabTot} </td>  

                       </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </jsp:attribute>
</minierptemplate:template>