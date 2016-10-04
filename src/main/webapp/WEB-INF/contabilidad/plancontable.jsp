<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Contabilidad</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Plan Contable</h1>
            <br>
            <br>
            <div class="col-md-4">
                <a class="btn btn-success" href="${pageContext.request.contextPath}/secured/general/plancontable/add" role="button">
                    <i class="fa fa-plus"></i>
                    Agregar cuenta
                </a>
            </div>
            <div class="col-md-8">
                <div class="panel-group" id="accordion">
                    <c:forEach items="${cuentas}" var="c">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#${c.cueCod}">
                                    ${c.cueDes}</a>
                                </h4>
                            </div>
                            <div id="${c.cueCod}" class="panel-collapse collapse">
                                <div>
                                    
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
    </jsp:attribute>
</minierptemplate:template>