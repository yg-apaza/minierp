<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Contabilidad - Caja</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body" >
            <h1 class="page-header">Caja</h1> 
            <div class="panel">
                
                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Periodo: </label>
                    <div class="col-sm-9">
                        <input id = "fecIn" type="month" id="form-field-1" placeholder="Mar-16" class="form-control">
                    </div>
                </div>
                <script>
                        document.getElementById("fecIn").value = moment().format('YYYY-MM');;
                </script>

                <br><br>

                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> RUC: </label>
                    <div class="col-sm-9">
                        <input type="text" id="form-field-1" placeholder="${empresa.empRuc}" class="form-control" readonly>
                    </div>
                </div>

                <br><br>

                <div class="form-group">
                    <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Apellidos y Nombres, Denominación o Razón Social:  </label>
                    <div class="col-sm-9">
                        <input type="text" id="form-field-1" placeholder="${empresa.empNom}" class="form-control" readonly>
                    </div>
                </div>
                    
                <br><br>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Numero Correlativo del Registro o código único de óperación</th>
                            <th>Fecha de operación</th>
                            <th>Código de la Cuenta Asociada</th>
                            <th>Denominación de la Cuenta Asociada</th>
                            <th>Deudor</th>
                            <th>Acreedor</th>
                        </tr>
                    </thead>
                    <tbody>
                       <c:forEach items="${operaciones}" var="u"> 
                                <tr>
                                    <td>${u.asiDetCod}</td>
                                    <td><fmt:formatDate value="${u.asiCabFec}" pattern="dd/MM/yyyy" /></td>
                                    <td>${u.cueNum}</td>
                                    <td>${u.cueDes}</td>
                                    <td>${u.debe}</td>
                                    <td>${u.haber}</td>
                                </tr>
                        </c:forEach>                                             
                    </tbody>                    
                </table>
                <table class="table table-bordered table-striped table-hover">
                    <tbody>
                    <tr class="info">
                        <td> <b> DEBE  </b> </td>
                        <td> ${totales.debe} </td>
                        <td> <b> HABER </b> </td>
                        <td> ${totales.haber} </td>
                    </tr>
                    </tbody>
                </table>
            </div>
        <div>
            <button class="btn btn-default center-block" type="submit">Imprimir</button>
        </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>
