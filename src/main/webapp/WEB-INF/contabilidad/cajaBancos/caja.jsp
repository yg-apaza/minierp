<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Caja</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container" >
            <h1 class="page-header">Caja</h1> 
            <div class="row-fluid">
                <div class="span12">
                    <div class="well">
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Periodo: </label>
                                <div class="col-sm-9">
                                        <input type="date" id="form-field-1" placeholder="Mar-16" class="col-xs-10 col-sm-3">
                                </div>
                            </div>

                            <br><br>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> RUC: </label>
                                <div class="col-sm-9">
                                        <input type="text" id="form-field-1" placeholder="23234345621" class="col-xs-10 col-sm-3">
                                </div>
                            </div>

                            <br><br>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Apellidos y Nombres, Denominación o Razón Social:  </label>
                                <div class="col-sm-9">
                                        <input type="text" id="form-field-1" placeholder="Motos Import SA" class="col-xs-10 col-sm-10">
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
            
            <table class="table table-hover">
            <thead>
                <tr>
                    <th>Numero Correlativo del Registro o código único de óperación</th>
                    <th>Fecha de operación</th>
                    <th>Descripción de operación</th>
                    <th>Código de la Cuenta</th>
                    <th>Denominación de la Cuenta</th>
                    <th>Deudor</th>
                    <th>Acreedor</th>
                </tr>
            </thead>
            <tbody>
               <c:forEach items="${operaciones}" var="u"> 
                        <tr>
                            <td>${u.asiDetCod}</td>
                            <td><fmt:formatDate value="${u.asiCabFec}" pattern="dd/MM/yyyy" /></td>
                            <td>${u.asiCabTip}</td>
                            <td>${u.cueCod}</td>
                            <td>${u.cueDes}</td>
                            <td>${u.debe}</td>
                            <td>${u.haber}</td>
                        </tr>
                </c:forEach>     
            </tbody>
        </table>
        </div>
        
    </jsp:attribute>
</minierptemplate:template>
