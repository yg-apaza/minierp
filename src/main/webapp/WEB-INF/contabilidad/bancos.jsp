<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Bancos</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container" >
            <h1 class="page-header">Bancos</h1> 
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
                            
                            <br><br>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Entidad Financiera:  </label>
                                <div class="col-sm-9">
                                        <input type="text" id="form-field-1" placeholder="Banco de Credito del Peru" class="col-xs-10 col-sm-10">
                                </div>
                            </div>
                            
                            <br><br>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Código de la Cuenta Corriente:  </label>
                                <div class="col-sm-9">
                                        <input type="text" id="form-field-1" placeholder="777567" class="col-xs-10 col-sm-10">
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
            
            <table class="table table-hover">
            <thread>                
                <tr>
                    <td>Numero Correlativo del Registro o código único de óperación</td>
                    <td>Fecha de operación</td>
                    <td>Medio de Pago</td>
                    <td>Descripción de la operación</td>
                    <td>Apellidos y Nombres, Denominación o Razón Social</td>
                    <td>Número de transacción Bancaria, de documento sustentatorio o Control interno de la operación</td>
                    <td>Código de la Cuenta</td>
                    <td>Denominación de la Cuenta</td>
                    <td>Deudor</td>
                    <td>Acreedor</td>
                </tr>
                
            </thread>
            <tbody>
               <!--<c:forEach items="${operaciones}" var="u"> -->
                        <tr>
                            <td>num</td>
                            <td>fech</td>
                            <td>desc</td>
                            <td>cod</td>
                            <td>denomi</td>
                            <td>deudo</td>
                            <td>acred</td>
                        </tr>
                <!--</c:forEach>     -->
                <!---Ejemplos-->
                <tr>
                    <td>1</td>
                    <td>01-Mar-16</td>
                    <td>Tarjeta</td>
                    <td></td>
                    <td>ChocoChips Misti S.A.</td>
                    <td>1</td>
                    <td>121</td>
                    <td>Saldo Inicial</td>
                    <td>93939</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>2</td>
                    <td>06-Mar-16</td>
                    <td>Tarjeta</td>
                    <td>Cobranza del 50% de ventas</td>
                    <td>ChocoChips Misti S.A.</td>
                    <td>2</td>
                    <td>121</td>
                    <td>Facturas por cobrar</td>
                    <td>565870</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>3</td>
                    <td>15-Mar-16</td>
                    <td>Tarjeta</td>
                    <td>Ingreso de Cheque 01</td>
                    <td>ADIREF SA</td>
                    <td>3</td>
                    <td>121</td>
                    <td>Cuenta Corriente</td>
                    <td>939</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>4</td>
                    <td>01-Mar-16</td>
                    <td>Tarjeta</td>
                    <td>Cancelación de licencia</td>
                    <td>ChocoChips Misti S.A.</td>
                    <td>2</td>
                    <td>406</td>
                    <td>Gobiernos Locales</td>
                    <td></td>
                    <td>939</td>
                </tr>
                
                
                <tr>
                    <td>5</td>
                    <td>18-Mar-16</td>
                    <td>Tarjeta</td>
                    <td>Ingreso Cheque 02</td>
                    <td>Ciag S.A.</td>
                    <td>3</td>
                    <td>104</td>
                    <td>Cuenta Corriente</td>
                    <td>969</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>6</td>
                    <td>18-Mar-16</td>
                    <td>Tarjeta</td>
                    <td>Pago de honorarios</td>
                    <td>Ciag S.A.</td>
                    <td>4</td>
                    <td>424</td>
                    <td>Honorarios por Pagar</td>
                    <td></td>
                    <td>939</td>
                </tr>
                
                <tr>
                    <td>7</td>
                    <td>19-Mar-16</td>
                    <td>Tarjeta</td>
                    <td>Pago del 50% en efectivo</td>
                    <td>Ciag S.A.</td>
                    <td>5</td>
                    <td>421</td>
                    <td>Facturas por Pagar</td>
                    <td></td>
                    <td>377246</td>
                </tr>
                
                <tr>
                    <td>8</td>
                    <td>19-Mar-16</td>
                    <td>Tarjeta</td>
                    <td>Ingreso de Cheque 03</td>
                    <td>Ralkings S.A.</td>
                    <td>7</td>
                    <td>424</td>
                    <td>Cuenta Corriente</td>
                    <td>377246</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>9</td>
                    <td>19-Mar-16</td>
                    <td>Tarjeta</td>
                    <td>Pago del 50% del cheque</td>
                    <td>Ralkings S.A.</td>
                    <td>8</td>
                    <td>424</td>
                    <td>Facturas por Pagar</td>
                    <td></td>
                    <td>377246</td>
                </tr>
                
                <tr>
                    <td>10</td>
                    <td>19-Mar-16</td>
                    <td>Tarjeta</td>
                    <td>Cobranza de venta al contado</td>
                    <td>Ralkings S.A.</td>
                    <td>9</td>
                    <td>424</td>
                    <td>Facturas por Cobrar</td>
                    <td>754493</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>11</td>
                    <td>20-Mar-16</td>
                    <td>Tarjeta</td>
                    <td>Pago de remuneraciones del mes</td>
                    <td>Ralkings S.A.</td>
                    <td>11</td>
                    <td>411</td>
                    <td>Remunerciones por P</td>
                    <td></td>
                    <td>1200</td>
                </tr>
                
                <tr>
                    <td>12</td>
                    <td>31-Mar-16</td>
                    <td>Tarjeta</td>
                    <td>Cancelación del IGV Mar 2016</td>
                    <td>Ralkings S.A.</td>
                    <td>12</td>
                    <td>4011</td>
                    <td>IGV</td>
                    <td></td>
                    <td>91464</td>
                </tr>
                
                <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td>Totales</td>
                    <td>1793456</td>
                    <td>859835</td>
                </tr>
                <!---Fin Ejemplos-->
            </tbody>
        </table>
        </div>
        
    </jsp:attribute>
</minierptemplate:template>
