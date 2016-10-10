<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<jsp:declaration> private String codCliSelec;</jsp:declaration>
<% session.setAttribute("codCliSelec", codCliSelec);%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Clientes</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <form role=form" method="post" action="${pageContext.request.contextPath}/secured/clientes">
            <h1 class="page-header">Clientes</h1>
            <div class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-2">DNI</label>
                        <div class="col-sm-6">
                            <input type="text" class="form-control" placeholder="Codigo" name="dniCli">
                        </div>
                        <button type="submit" class="btn btn-primary" name="buscarCliente">Buscar <i class="fa fa-search-plus fa-1x"></i></button>
                        <button type="submit" class="btn btn-primary" name="todos">Todos <i class="fa fa-child"></i></button>
                        <a class="btn btn-success" href="${pageContext.request.contextPath}/secured/clientes/addCliente" role="button">                            
                            Agregar cliente
                            <i class="fa fa-plus"></i>
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
                        <th>Fijo</th>
                        <th>Celular</th>
                        <th>Estado de Registro</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${clientes}" var="c">
                        <tr>
                            <td>${c.cliCod}</td>
                            <td>${c.cliNom}</td>
                            <td>${c.cliApePat} ${c.cliApeMat}</td>
                            <td>${c.taGzzEstadoCivil.estCivDet}</td>
                            <td>${c.cliSex}</td>
                            <td>${c.cliTelFij}</td>
                            <td>${c.cliTelCel}</td>
                            <td>${c.estRegCod}</td>
                            <td><!--
                                <button type="submit" class="btn btn-primary" name="modificarCliente" value="${c.cliCod}"><i class="fa fa-pencil-square-o fa-1x"></i></button>-->
                                <button type="submit" class="btn btn-danger" name="eliminarCliente" value="${c.cliCod}"><i class="fa fa-trash-o fa-1x"></i></button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </form>
        </div>
    </jsp:attribute>
</minierptemplate:template>