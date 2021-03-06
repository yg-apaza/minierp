<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Contabilidad - Plan Contable</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">Plan Contable</h1>
            <br>
            <br>
            <div class="col-md-4">
                <p>Basado en el Plan Contable General Empresarial</p>
                <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=plancontable&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-danger btn-lg btn-block">
                    <i class="fa fa-file-pdf-o"></i>
                    Descargar Plan Contable [PDF]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&report=plancontable&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-success btn-lg btn-block">
                    <i class="fa fa-file-excel-o"></i>
                    Descargar Plan Contable [XLS]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=plancontable&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-primary btn-lg btn-block">
                    <i class="fa fa-file-word-o"></i>
                    Descargar Plan Contable [DOC]
                </a>
                <br>
            </div>
            <div class="col-md-8">
                <div class="panel-group" id="accordion">
                    <c:forEach items="${cuentas}" var="c">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#${c.cueCod}">
                                    ${c.cueNum} - ${c.cueDes}</a>
                                </h4>
                            </div>
                            <div id="${c.cueCod}" class="panel-collapse collapse">
                                <div>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Número</th>
                                                    <th>Descripción</th>
                                                    <th>Ir</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${c.enP3mCuentasForCuePad}" var="s">
                                                    <tr>
                                                        <td>${s.cueNum}</td>
                                                        <td>${s.cueDes}</td>
                                                        <td>
                                                            <a href="${pageContext.request.contextPath}/secured/contabilidad/plan/subcuenta?cuenta=${s.cueCod}" 
                                                               title="SubCuentas">
                                                                <i class="fa fa-sign-in fa-lg fa-2x" style="color: black;"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>
