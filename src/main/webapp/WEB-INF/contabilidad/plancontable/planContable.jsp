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
                <p>Plan Contable General Empresarial</p>
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
                                                    <th>Acción</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${c.childs}" var="s">
                                                    <c:choose>
                                                        <c:when test="${s.cueNiv == 2}">
                                                            <tr class="info">
                                                        </c:when>    
                                                        <c:otherwise>
                                                            <tr>
                                                        </c:otherwise>
                                                    </c:choose>
                                                        <td>${s.cueNum}</td>
                                                        <td>${s.cueDes}</td>
                                                        <td>
                                                            <a href="#" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus-square-o fa-2x"></i></a>
                                                            <a href="#"><i class="fa fa-pencil-square-o fa-2x"></i></a>
                                                            <a href="#"><i class="fa fa-trash-o fa-2x"></i></a>
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
            <div id="agregarModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Agregar cuenta</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <div class="alert alert-danger alert-dismissable" id="error">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                    Ingrese un nombre para la cuenta
                                </div>
                                <label>Número de cuenta</label>
                                <div class="input-group">
                                    <input class="form-control" disabled>
                                    <span class="input-group-addon">-</span>
                                    <select class="form-control">
                                        <option>0</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                        <option>7</option>
                                        <option>8</option>
                                        <option>9</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Nombre de cuenta:</label>
                                <input class="form-control" id="cueNom">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline btn-success">Agregar</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>