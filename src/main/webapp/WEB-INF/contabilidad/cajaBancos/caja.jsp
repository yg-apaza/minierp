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
                        
            <div class="table-responsive" id="dvData2" >
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
                    <a href="javascript:imprSelec('dvData')" class="btn btn-outline btn-danger btn-lg btn-block">
                        <i class="fa fa-file-pdf-o"></i>
                        Reporte [PDF]
                    </a>
                    <!--
                    <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=libroCaja&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-danger btn-lg btn-block">
                        <i class="fa fa-file-pdf-o"></i>
                        Reporte [PDF]
                    </a>
                    
                    -->
                </div>
                <div class="col-sm-4"> 
                    <a href="" class="btn btn-outline btn-success btn-lg btn-block" id="btnExport">
                        <i class="fa fa-file-excel-o"></i>
                        Reporte [XLS]
                    </a>
                    <!--<a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&report=libroCaja&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-success btn-lg btn-block">
                        <i class="fa fa-file-excel-o"></i>
                        Reporte [XLS]
                    </a>
                    -->
                </div>
                <!--
                <div class="col-sm-4">      
                    <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=libroCaja&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-primary btn-lg btn-block">
                        <i class="fa fa-file-word-o"></i>
                        Reporte [DOC]
                    </a>
                </div>
                -->
            </div>
            <!---
            -->
            <div id="dvData" style='display:none;'>
                <div class="form-group">
                        <table>
                            <tr>
                                <td><b> Periodo &nbsp de &nbsp apertura: &nbsp&nbsp&nbsp </b> </td>
                                <td><b> ${libros.libDiaCod} - ${libros.libDiaPer} </b> </td>
                            </tr>
                            <tr>
                                <td><b>  RUC: </b></td>
                                <td> <b>  ${empresa.empRuc} </b> </td>
                            </tr>
                            <tr>
                                <td><b>  Apellidos &nbsp y &nbsp Nombres, &nbsp Denominacion &nbsp o &nbsp Razon &nbsp Social: </b> </td>
                                <td><b> ${empresa.empNomCom} </b> </td>

                            </tr>
                            <tr>
                                <td><b>  Mes: </b> </td>
                                <td><b> ${fecha_Filtro} </b> </td>
                            </tr>
                        </table>
                        
                        <br><br>
                        
                    </div>                    

                <table>
                    <thead>
                        <tr>
                            <th  >Numero &nbsp Correlativo &nbsp del &nbsp Registro &nbsp  &nbsp codigo &nbsp unico &nbsp de &nbsp operacion</th>
                            <th  >Fecha &nbsp de &nbsp operacion</th>
                            <th  >Codigo &nbsp de &nbsp la &nbsp Cuenta &nbsp Asociada</th>
                            <th  >Denominacion &nbsp de &nbsp la &nbsp Cuenta &nbsp Asociada</th>
                            <th  >Deudor</th>
                            <th  >Acreedor</th>
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
                <table >
                    <tbody>
                    <tr >
                        <td > <b> TOTALES </b> </td>
                        <td > <b>  </b> </td>
                        <td > <b>  </b> </td>
                        <td > <b>  </b> </td>
                        <td > <b> ${totales.debe} </b> </td>
                        <td > <b> ${totales.haber} </b> </td>
                    </tr>
                    </tbody>
                </table>
            </div>


            <script type="text/javascript">
            function imprSelec(muestra)
            {
                    var ficha=document.getElementById(muestra);
                    var ventimp=window.open(' ','popimpr');
                    ventimp.document.write(ficha.innerHTML);
                    ventimp.document.close();
                    ventimp.print();
                    ventimp.close();
            }
            </script>            
            <!--<input type="button" id="btnExport" value=" Export Table data into Excel " />-->
            <script>
            $("#btnExport").click(function (e) {
                window.open('data:application/vnd.ms-excel,' + $('#dvData').html());
                e.preventDefault();
            });
            </script>
            
            

        </div>
    </jsp:attribute>
</minierptemplate:template>
