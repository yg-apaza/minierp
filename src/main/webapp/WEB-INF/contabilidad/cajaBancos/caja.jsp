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
                <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/caja">

                    <div class="form-group">
                        <label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Periodo de apertura: </label>
                        <div class="col-sm-2">
                            <input type="text" id="form-field-1" value="${libros.libDiaCod} - ${libros.libDiaPer}" class="form-control" readonly>
                        </div>
                        
                        <label class="col-sm-1 control-label no-padding-right" for="form-field-1"> RUC: </label>
                        <div class="col-sm-2">
                            <input type="text" id="form-field-1" value="${empresa.empRuc}" class="form-control" readonly>
                        </div>
                        
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Apellidos y Nombres, Denominación o Razón Social:  </label>
                        <div class="col-sm-2">
                            <input type="text" id="form-field-1" value="${empresa.empNomCom}" class="form-control" readonly>
                        </div>
    
                        <br><br>
                        
                    </div>                    
                    
                    <div class="form-group">
                        <label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Filtrar por mes: </label>
                        <div class="col-sm-3">
                            <input id = "fecIn" type="month" name = "fechFiltro" id="form-field-1" value="${fecha_Filtro}" class="form-control">
                        </div>

                        <div class="col-md-3">
                            <button type="submit" onclick="return updateInventory()" class="btn btn-success"> Actualizar libro</button>  
                        </div>
                        
                        <br><br>
                        
                    </div> 
                </form>
            </div>
                        
            <div class="table-responsive">
                <table class="table table-bordered table-striped table-hover">
                    <thead>
                        <tr>
                            <th  width="20%">N° Correlativo del Registro o código único de operación</th>
                            <th  width="10%">Fecha de operación</th>
                            <th  width="10%">Código de la Cuenta Asociada</th>
                            <th  width="40%">Denominación de la Cuenta Asociada</th>
                            <th  width="10%">Deudor</th>
                            <th  width="10%">Acreedor</th>
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
                        <td  width="80%"> <b> TOTALES </b> </td>
                        <td  width="10%"> <b> ${totales.debe} </b> </td>
                        <td  width="10%"> <b> ${totales.haber} </b> </td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div>
                <div class="col-sm-4">
                    <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=libroCaja&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-danger btn-lg btn-block">
                        <i class="fa fa-file-pdf-o"></i>
                        Reporte [PDF]
                    </a>
                </div>
                <div class="col-sm-4">   
                    <a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&report=libroCaja&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-success btn-lg btn-block">
                        <i class="fa fa-file-excel-o"></i>
                        Reporte [XLS]
                    </a>
                </div>
                <div class="col-sm-4">      
                    <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=libroCaja&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-primary btn-lg btn-block">
                        <i class="fa fa-file-word-o"></i>
                        Reporte [DOC]
                    </a>
                </div>
            </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>
