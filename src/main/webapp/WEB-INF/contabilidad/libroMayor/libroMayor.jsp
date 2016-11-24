<%@ page import="java.text.SimpleDateFormat" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Contabilidad - Libro Mayor</title>
    </jsp:attribute>    
    <jsp:attribute name="contenido">
        <div class="panel-body" >
            <h1 class="page-header">Libro Mayor</h1> 
            <div class="panel">
                <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/libroMayor">
            
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
                            <input type="text" id="form-field-1" placeholder="${empresa.empNomCom}" class="form-control" readonly>
                        </div>
                    </div>

                    <br><br> 
                    
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Código de Cuenta:  </label>
                        <div class="col-sm-9">
                            <input type="text" id="form-field-1" name = "codCue" placeholder="${cuenta.cueCod}" class="form-control" >
                        </div>
                    </div>
                    
                    <br><br> 
                    
                    <div class="form-group">
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Decripción de Cuenta:  </label>
                        <div class="col-sm-9">
                            <input type="text" id="form-field-1" name = "codCue" placeholder="${cuenta.cueDes}" class="form-control" >
                        </div>
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
                        <th>Fecha de operación</th>
                        <th>Número de correlativo de libro diario</th>
                        <th>Descripción de la glosa</th>
                        <th>Deudor</th>
                        <th>Acreedor</th>
                    </tr>
                </thread>
                <tbody>
                    <c:forEach items="${operaciones}" var="u"> 
                             <tr>
                                 <td><fmt:formatDate value="${u.asiCabFec}" pattern="dd/MM/yyyy" /></td>
                                 <td>${u.asiCabCod}</td>
                                 <td>${u.asiCabGlo}</td>
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

