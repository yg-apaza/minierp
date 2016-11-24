<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Arqueo de Caja</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Arqueo de Caja</h1>
                </div>
            </div>
            <br>
            <form id="arqueoModal" method="post" action="${pageContext.request.contextPath}/secured/ventas/arqueoCaja">
                    <div class="row">
                        <div class="col-md-12">    
                            <div class="col-md-6">
                                <div class="form-group input-group" >
                                    <span class="input-group-addon">Usuario</span>
                                        <select class="form-control" name="usuCod">
                                                <option value="-1">Todos</option>
                                            <c:forEach var="u" items="${usuarios}">
                                                <option value="${u.usuCod}">${u.usuApePat} ${u.usuApeMat}, ${u.usuNom}</option>
                                            </c:forEach>
                                        </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group input-group" >
                                    <span class="input-group-addon">Inicio:</span>
                                    <input type="date" class="form-control" name="fecIni" value="${fecIni}">
                                </div>
                            </div>
                            <div class="col-m-3">
                                <div class="form-group input-group" >
                                    <span class="input-group-addon">Fin:</span>
                                    <input type="date" class="form-control" name="fecFin" value="${fecFin}">
                                </div>
                            </div>
                        </div>       
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="col-md-6">
                                <button type="submit" class="btn btn-outline btn-success">   Buscar <i class="fa fa-eye"></i>  </button>
                            </div>
                        </div>    
                    </div>
            </form>
            <br>
            
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover" id="tablaMovimientos">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Usuario</th>
                                <th>Total Calculado</th>
                                <th>Total Cobrado</th>
                                <th>Total Descontado</th>
                                <!-- Ajuste para Rendimiento de Cuentas
                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <th>Acciones</th>
                                </cc:if>-->
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="c" items="${consulta}">
                                <tr>
                                    <td>${c[0]}</td>
                                    <td>${c[1]} ${c[2]}, ${c[3]}</td>
                                    <td>${c[5]}</td>
                                    <td>${c[4]}</td>
                                    <td>${c[6]}</td>
                                    <!-- Ajuste para Rendimiento de Cuentas
                                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <td>
                                        <a href="#" data-toggle="modal" data-target="#ajustarModal"
                                           data-usuCod="${cli.cliCod}">
                                            <i class="fa fa-pencil-square-o fa-lg" style="color: black;"></i>
                                        </a>
                                    </td>
                                    </cc:if>-->
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <script language="javascript">
            $(document).ready(function () {
                $('#tablaMovimientos').DataTable({
                    responsive: true
                    });       
            });                        
        </script>                        
    </jsp:attribute>
</minierptemplate:template>