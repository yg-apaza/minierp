<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Empresa</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">Empresa</h1>
            <div class="col-md-12">
                <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                    <div class="form-group">
                        <div class="col-sm-3">
                        <label>Descripcion del Punto de Venta:</label>
                        <input class="form-control" name="punVenDes">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>