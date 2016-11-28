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
        <div class="panel-body">
            <h1 class="page-header"> Libro Mayor</h1>
        </div>

        <div class="panel">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                        <i class="fa fa-angle-down" aria-hidden="true"></i>
                        <a href="#s1" class="accordion-toggle" data-toggle="collapse" data-parent="#acordion">Datos Generales</a>
                        </h4>
                    </div>  
                </div> 
                <div id="s1" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="form-group form-group-sm">
                          <label class="col-sm-2 control-label" for="sm">Periodo: </label>
                          <div class="col-sm-4">
                            <!--<input id = "fecIn" class="form-control" type="month" id="sm">-->
                            <input class="form-control" id="sm" value="${libros.libDiaCod} - ${libros.libDiaPer}" readonly>
                          </div>
                          <label class="col-sm-2 control-label" for="sm">RUC: </label>
                          <div class="col-sm-4">
                            <input class="form-control" type="text" id="sm" value="${empresa.empRuc}" readonly>
                          </div>
                        </div>
                        <br><br>
                        <div class="form-group form-group-sm">
                          <label class="col-sm-4 control-label" for="sm">Apellidos y Nombres, Denominación o Razón Social: </label>
                          <div class="col-sm-8">
                            <input class="form-control" type="text" id="sm" value="${empresa.empNomCom}" readonly>
                          </div>
                        </div>
                    </div>
                </div>
            </div>

            <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/libroMayor">
                <div class="form-group form-group-sm">
                    <label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Cuenta:  </label>
                    <div class="col-sm-2">
                        <input type="number" maxlength="2" id="form-field-1" name = "codCue" value="${cuenta.cueNum}" class="form-control" >
                    </div>
                    <div class="col-sm-6">
                        <input type="text" id="form-field-1" name = "codCue" value="${cuenta.cueDes}" class="form-control" readonly>
                    </div>
                    <div class="col-md-2">
                        <button type="submit" class="btn btn-success btn-sm">
                            <i class="fa fa-filter" aria-hidden="true"></i> Filtrar
                        </button>
                    </div>
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
                             <td>${u.idPK.asiCabCod}</td>
                             <td>${u.asiCabGlo}</td>
                             <td>
                                 <c:if test="${u.asiDetDebHab}" >
                                     <c:out value="${u.asiDetMon}"/> 
                                 </c:if>
                             </td>
                             <td>
                                 <c:if test="${not u.asiDetDebHab}" >
                                     <c:out value="${u.asiDetMon}"/> 
                                 </c:if> 
                             </td>                          
                         </tr>
                 </c:forEach>  
                 <tr class="info">
                    <td colspan="3">TOTALES</td>
                    <td> ${totales.debe} </td>
                    <td> ${totales.haber} </td>
                 </tr>      
            </tbody>
            </table>
        </div>
        <div>
            <button class="btn btn-default center-block" type="submit">Imprimir</button>
        </div>

        <script>
            document.getElementById("fecIn").value = moment().format('YYYY-MM');
        </script>

    </jsp:attribute>
</minierptemplate:template>

