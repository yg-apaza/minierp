<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Cuentas Bancarias</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Plan Contable</h1>
            <br>
            <br>
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-green">
                    <div class="panel-heading">
                        Subcuentas
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>Número</th>
                                        <th>Descripción</th>
                                        <th class="text-right">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="child" items="${cuenta.enP3mCuentas}">
                                        <minierptemplate:nodeTree node="${child}"/>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="panel-footer text-center">
                        <a href="${pageContext.request.contextPath}/secured/contabilidad/plan" type="button" class="btn btn-outline btn-default">Regresar al Plan Contable General</a>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>