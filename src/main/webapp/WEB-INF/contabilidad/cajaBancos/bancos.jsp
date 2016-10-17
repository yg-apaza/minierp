<%@ page import="java.text.SimpleDateFormat" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Contabilidad - Bancos</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body" >
            <h1 class="page-header">Bancos</h1> 
            <div class="row-fluid">
                <div class="span12">
                    <div class="well">
                        <fieldset>
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Periodo: </label>
                                <div class="col-sm-9">
                                        <input id = "fecIn" type="month" id="form-field-1" placeholder="Mar-16" class="col-xs-10 col-sm-4">
                                </div>
                            </div>
                            <script>
                                document.getElementById("fecIn").value = moment().format('YYYY-MM');;
                            </script>
                            
                            <br><br>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> RUC: </label>
                                <div class="col-sm-9">
                                        <input id="emp0" type="text" id="form-field-1" placeholder="23234345621" class="col-xs-10 col-sm-4">
                                </div>
                            </div>

                            <br><br>

                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Apellidos y Nombres, Denominación o Razón Social:  </label>
                                <div class="col-sm-9">
                                        <input id="emp1" type="text" id="form-field-1" placeholder="Motos Import SA" class="col-xs-10 col-sm-10">
                                </div>
                            </div>
                            
                            <br><br>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Entidad Financiera:  </label>
                                <div class="col-sm-9">
                                        <input id="emp2" type="text" id="form-field-1" placeholder="Banco de Credito del Peru" class="col-xs-10 col-sm-10">
                                </div>
                            </div>
                            
                            <br><br>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Código de la Cuenta Corriente:  </label>
                                <div class="col-sm-9">
                                        <input id="emp3" type="text" id="form-field-1" placeholder="777567" class="col-xs-10 col-sm-10">
                                </div>
                            </div>
                            
                            <br><br>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Seleccione archivo de la entidad:  </label>
                                <input type="file" name="file" id="file">
                                <script>
                                    document.getElementById('file').onchange = function(){

                                    var file = this.files[0];

                                    var reader = new FileReader();
                                    reader.onload = function(progressEvent){
                                      // Entire file
                                      console.log(this.result);

                                      // By lines
                                      var lines = this.result.split('\n');
                                      for(var line = 0; line < lines.length; line++){
                                        console.log(lines[line]);
                                        document.getElementById("emp"+line).value = lines[line];
                                      }
                                    };
                                    reader.readAsText(file);
                                  };
                                </script>
                            </div>
                        </fieldset>

                    </div>
                </div>
            </div>
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover">
                <thread>                
                    <tr>
                        <th>Numero Correlativo del Registro o código único de óperación</th>
                        <th>Fecha de operación</th>
                        <th>Número de transacción Bancaria, de documento sustentatorio o Control interno de la operación</th>
                        <th>Código de la Cuenta</th>
                        <th>Denominación de la Cuenta</th>
                        <th>Deudor</th>
                        <th>Acreedor</th>
                    </tr>

                </thread>
                <tbody>

                    <c:forEach items="${operaciones}" var="u"> 
                             <tr>
                                 <td>${u.asiDetCod}</td>
                                 <td><fmt:formatDate value="${u.asiCabFec}" pattern="dd/MM/yyyy" /></td>
                                 <td>${u.cueCod}</td>
                                 <td>${u.cueCod}</td>
                                 <td>${u.cueDes}</td>
                                 <td>${u.debe}</td>
                                 <td>${u.haber}</td>
                             </tr>
                     </c:forEach>  
                    <!---Ejemplos-->
                    <tr>
                        <td>1</td>
                        <td>01-Mar-16</td>
                        <td>1</td>
                        <td>121</td>
                        <td>Saldo Inicial</td>
                        <td>93939</td>
                        <td></td>
                    </tr>

                    <tr>
                        <td>2</td>
                        <td>06-Mar-16</td>
                        <td>2</td>
                        <td>121</td>
                        <td>Facturas por cobrar</td>
                        <td>565870</td>
                        <td></td>
                    </tr>

                    <tr>
                        <td>3</td>
                        <td>15-Mar-16</td>
                        <td>3</td>
                        <td>121</td>
                        <td>Cuenta Corriente</td>
                        <td>939</td>
                        <td></td>
                    </tr>

                    <tr>
                        <td>4</td>
                        <td>01-Mar-16</td>
                        <td>2</td>
                        <td>406</td>
                        <td>Gobiernos Locales</td>
                        <td></td>
                        <td>939</td>
                    </tr>


                    <tr>
                        <td>5</td>
                        <td>18-Mar-16</td>
                        <td>3</td>
                        <td>104</td>
                        <td>Cuenta Corriente</td>
                        <td>969</td>
                        <td></td>
                    </tr>

                    <tr>
                        <td>6</td>
                        <td>18-Mar-16</td>
                        <td>4</td>
                        <td>424</td>
                        <td>Honorarios por Pagar</td>
                        <td></td>
                        <td>939</td>
                    </tr>

                    <tr>
                        <td>7</td>
                        <td>19-Mar-16</td>
                        <td>5</td>
                        <td>421</td>
                        <td>Facturas por Pagar</td>
                        <td></td>
                        <td>377246</td>
                    </tr>

                    <tr>
                        <td>8</td>
                        <td>19-Mar-16</td>
                        <td>7</td>
                        <td>424</td>
                        <td>Cuenta Corriente</td>
                        <td>377246</td>
                        <td></td>
                    </tr>

                    <tr>
                        <td>9</td>
                        <td>19-Mar-16</td>
                        <td>8</td>
                        <td>424</td>
                        <td>Facturas por Pagar</td>
                        <td></td>
                        <td>377246</td>
                    </tr>

                    <tr>
                        <td>10</td>
                        <td>19-Mar-16</td>
                        <td>9</td>
                        <td>424</td>
                        <td>Facturas por Cobrar</td>
                        <td>754493</td>
                        <td></td>
                    </tr>

                    <tr>
                        <td>11</td>
                        <td>20-Mar-16</td>
                        <td>11</td>
                        <td>411</td>
                        <td>Remunerciones por P</td>
                        <td></td>
                        <td>1200</td>
                    </tr>

                    <tr>
                        <td>12</td>
                        <td>31-Mar-16</td>
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
                        <th>Totales</th>
                        <th>1793456</th>
                        <th>859835</th>
                    </tr>
                    <!---Fin Ejemplos-->          
                </tbody>
            </table>
        </div>
        <div>
            <button class="btn btn-default center-block" type="submit">Imprimir</button>
        </div>
        </div>

    </jsp:attribute>
</minierptemplate:template>
