<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Cuentas Bancarias</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Cuentas Bancarias</h1>
            <a href="" class="btn btn-success btn-circle btn-xl"><i class="fa fa-plus"></i></a>
            <br>
            <br>
            <div class="col-md-8 col-md-offset-2">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>N°</th>
                                <th>Banco</th>
                                <th>Nro. de Cuenta Corriente</th>
                                <th>Cuenta Contable asociada</th>
                                <th class="text-right">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cb" items="${cuentasbanco}">
                                <tr>
                                    <td>${cb.cueBanCod}</td>
                                    <td>${cb.taGzzBanco.banDet}</td>
                                    <td>${cb.cueBanNum}</td>
                                    <td>${cb.enP3mCuenta.cueNum}</td>
                                    <td class="text-right">
                                        <a href="#" data-toggle="modal" data-target="#modificarModal">
                                            <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#eliminarModal">
                                            <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>