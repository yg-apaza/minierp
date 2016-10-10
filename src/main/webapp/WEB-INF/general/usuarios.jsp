<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Usuarios</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Usuarios</h1>
            <br>
            <a class="btn btn-success" href="${pageContext.request.contextPath}/secured/general/usuarios/add" role="button">
                <i class="fa fa-plus"></i>
                Agregar usuario
            </a>
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
                            <td>${u.taGzzTipoUsuario.tipUsuDet}</td>
                            <td><fmt:formatDate value="${u.usuFecNac}" pattern="dd/MM/yyyy"/></td>
                            <td>${u.taGzzEstadoCivil.estCivDet}</td>
                            <td>${u.usuSex}</td>
                            <td>${u.estRegCod}</td>
                            <td>
                                 <a href="${pageContext.request.contextPath}/eliminar?id=<c:out value='${u.usuCod}'/>" >
                                <i class="fa fa-trash-o fa-2x"></i>
                                   
                                </a>
                                
                                 <a href="${pageContext.request.contextPath}/updatecontroller?id=<c:out value='${u.usuCod}'/>">
                                    <i class="fa fa-pencil-square-o fa-2x"></i>
                                 </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </jsp:attribute>
</minierptemplate:template>