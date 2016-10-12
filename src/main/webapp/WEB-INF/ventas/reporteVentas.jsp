<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Ventas</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Registro de Ventas e Ingresos</h1>
            <br>
            <br>
            <div class="col-md-4">
    
                <a href="${pageContext.request.contextPath}/secured/ventas/reporteVentas?type=pdf&&report=registroVentas" class="btn btn-outline btn-danger btn-lg btn-block">
                    <i class="fa fa-file-pdf-o"></i>
                    Descargar Registro de Ventas e Ingresos [PDF]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/ventas/reporteVentas?type=xls&&report=registroVentas" class="btn btn-outline btn-success btn-lg btn-block">
                    <i class="fa fa-file-excel-o"></i>
                    Descargar Registro de Ventas e Ingresos [XLS]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/ventas/reporteVentas?type=doc&&report=registroVentas" class="btn btn-outline btn-primary btn-lg btn-block">
                    <i class="fa fa-file-word-o"></i>
                    Descargar Registro de Ventas e Ingresos [DOC]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/ventas" class="btn btn-outline btn-default btn-lg btn-block">
                    <i class="fa fa-arrow-left"></i>
                    Regresar al Menú Principal
                </a>
                <br>
            </div>    
        </div>
    </jsp:attribute>
</minierptemplate:template>