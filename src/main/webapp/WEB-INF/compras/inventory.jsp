<%-- 
    Document   : inventory
    Created on : 05/10/2016, 09:46:33 AM
    Author     : yemi
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Inventario</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Inventario</h1>
            <br>
            <br>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Usuario</th>
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>Rol</th>
                        <th>Fecha de nacimiento</th>
                        <th>Estado Civil</th>
                        <th>Género</th>
                        <th>Estado de Registro</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${usuarios}" var="u">
                        <tr>
                            <td>${u.usuCod}</td>
                            <td>${u.usuNom}</td>
                            <td>${u.usuApePat} ${u.usuApeMat}</td>
                            <td>${u.tipUsuDet}</td>
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