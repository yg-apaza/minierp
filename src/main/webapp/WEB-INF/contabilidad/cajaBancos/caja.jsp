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
            <thread>
                <tr>
                    <th>Numero Correlativo del Registro o código único de óperación</th>
                    <th>Fecha de operación</th>
                    <th>Descripción de operación</th>
                    <th>Código de la Cuenta</th>
                    <th>Denominación de la Cuenta</th>
                    <th>Deudor</th>
                    <th>Acreedor</th>
                </tr>
            </thread>
            <tbody>
               <c:forEach items="${operaciones}" var="u"> 
                        <tr>
                            <td>${u.numDet}</td>
                            <td>fech</td>
                            <td>desc</td>
                            <td>cod</td>
                            <td>denomi</td>
                            <td>deudo</td>
                            <td>acred</td>
                        </tr>
                </c:forEach>     
                <!---Ejemplos-->
                <tr>
                    <td>1</td>
                    <td>01-Feb-16</td>
                    <td>Deposito</td>
                    <td>104</td>
                    <td>Cuenta Corriente</td>
                    <td>939393</td>
                    <td></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>15-Mar-16</td>
                    <td>Gira Cheque 01</td>
                    <td>104</td>
                    <td>Cuenta Corriente</td>
                    <td></td>
                    <td>939</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>18-Mar-16</td>
                    <td>Gira Cheque 02</td>
                    <td>104</td>
                    <td>Cuenta Corriente</td>
                    <td></td>
                    <td>939</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>19-Mar-16</td>
                    <td>Gira Cheque 03</td>
                    <td>104</td>
                    <td>Cuenta Corriente</td>
                    <td></td>
                    <td>377246.363</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <th>Totales</th>
                    <th>939393</th>
                    <th>379124.3625</th>
                </tr>
                <!---Fin Ejemplos-->
            </tbody>
        </table>
        </div>
        
    </jsp:attribute>
</minierptemplate:template>
