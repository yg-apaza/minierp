<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Clientes</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Clientes</h1>
            <div class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-2">DNI</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" placeholder="DNI" name="dniCli">
                        </div>
                        <button type="button" class="btn btn-primary">Buscar <i class="fa fa-search-plus fa-1x"></i></button>
                        <a class="btn btn-success" href="${pageContext.request.contextPath}/secured/clientes/addCliente" role="button">
                            <i class="fa fa-plus"></i>
                            Agregar cliente
                        </a>
                    </div>
                </div>            
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Cliente</th>
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>Estado Civil</th>
                        <th>Género</th>
                        <th>Estado de Registro</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${clientes}" var="c">
                        <tr>
                            <td>${c.usuCod}</td>
                            <td>${c.usuNom}</td>
                            <td>${c.usuApePat} ${u.usuApeMat}</td>
                            <td>${c.tipUsuDet}</td>
                            <td><fmt:formatDate value="${u.usuFecNac}" pattern="dd/MM/yyyy"/></td>
                            <td>${u.estCivDet}</td>
                            <td>${u.usuSex}</td>
                            <td>${u.estRegCod}</td>
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