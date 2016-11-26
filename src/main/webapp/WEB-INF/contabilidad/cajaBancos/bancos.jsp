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
            <div class="panel">
                <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/bancos">
                    
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Periodo de apertura: </label>
                        <div class="col-sm-9">
                            <input type="text" id="form-field-1" value="${libros.libDiaCod} - ${libros.libDiaPer}" class="form-control" readonly>
                        </div>
                        
                        <br><br>
                        
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> RUC: </label>
                        <div class="col-sm-9">
                            <input type="text" id="form-field-1" value="${empresa.empRuc}" class="form-control" readonly>
                        </div>

                        <br><br>

                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Apellidos y Nombres, Denominación o Razón Social:  </label>
                        <div class="col-sm-9">
                            <input type="text" id="form-field-1" value="${empresa.empNomCom}" class="form-control" readonly>
                        </div>
                    </div>
                        
                        <br><br>
                        
                    <div class="form-group"> 
                        
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Entidad Financiera:  </label>
                        <div class="col-sm-9">
                            <input id="emp2" type="text" id="form-field-1" value="${cuenta.cueDes}" class="form-control">
                        </div>
                        
                        <br><br>
                        
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Código de la Cuenta Corriente:  </label>
                        <div class="col-sm-9">
                            <input id="emp3" type="text" name = "codCue" id="form-field-1" value="${cuenta.cueCod}" class="form-control">
                        </div>
                        
                        <br><br>
                        
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Filtrar por mes: </label>
                        <div class="col-sm-9">
                            <input id = "fecIn" type="month" name = "fechFiltro" id="form-field-1" value="${fecha_Filtro}" class="form-control">
                        </div>

                        <!--
                        <script>
                                document.getElementById("fecIn").value = moment().format('YYYY-MM');;
                        </script>
                        -->
                        
                    </div>
 
                    <br><br>

                    <div class="col-md-3">
                        <button type="submit" onclick="return updateInventory()" class="btn btn-success"> Actualizar libro</button>  
                    </div>

                    <br><br>
                    
                </form>
            </div>
            
            
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover">
                <thread>                
                    <tr>
                        <th>N° Correlativo del Registro o código único de operación</th>
                        <th>Fecha de operación</th>
                        <th>N° de transacción Bancaria/ documento sustentatorio/ Control interno de la operación</th>
                        <th>Código de la Cuenta Asociada</th>
                        <th>Denominación de la Cuenta Asociada</th>
                        <th>Deudor</th>
                        <th>Acreedor</th>
                    </tr>
                </thread>
                <tbody>
                    <c:forEach items="${operaciones}" var="u"> 
                             <tr>
                                 <td  width="15%">${u.asiDetCod}</td>
                                 <td  width="10%"><fmt:formatDate value="${u.asiCabFec}" pattern="dd/MM/yyyy" /></td>
                                 <td  width="20%">${u.asiCabNumCom}</td>
                                 <td  width="5%">${u.cueNum}</td>
                                 <td  width="30%">${u.cueDes}</td>
                                 <td  width="10%">${u.debe}</td>
                                 <td  width="10%">${u.haber}</td>                           
                             </tr>
                     </c:forEach>        
                </tbody>
                </table>
                <table class="table table-bordered table-striped table-hover">
                    <tbody>
                    <tr class="info">
                        <td  width="80%"> <b> TOTALES </b> </td>
                        <td  width="10%"> <b> ${totales.debe} </b> </td>
                        <td  width="10%"> <b> ${totales.haber} </b> </td>
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
