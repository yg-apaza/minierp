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
                        
                        <label class="col-sm-2 control-label no-padding-right" for="form-field-1"> Entidad Financiera:  </label>
                        <div class="col-sm-5">
                            <input id="emp2" type="text" id="form-field-1" value="${cuenta.cueDes}" class="form-control">
                        </div>
                        
                        <label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Código de la Cuenta Corriente:  </label>
                        <div class="col-sm-2">
                            <input id="emp3" type="text" name = "codCue" id="form-field-1" value="${cuenta.cueCod}" class="form-control">
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
                <div class="col-sm-4">
                    <a href="javascript:imprSelec('dvData')" class="btn btn-outline btn-danger btn-lg btn-block">
                        <i class="fa fa-file-pdf-o"></i>
                        Reporte [PDF]
                    </a>
                </div>
                <div class="col-sm-4"> 
                    <a href="" class="btn btn-outline btn-success btn-lg btn-block" id="btnExport">
                        <i class="fa fa-file-excel-o"></i>
                        Reporte [XLS]
                    </a>
                </div>
            </div>
                        
             <!------->
             <div id="dvData" style='display:none;'>
                <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/bancos">
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
                                <td><b>  Entidad &nbsp Financiera: </b> </td>
                                <td><b> ${cuenta.cueDes} </b> </td>
                            </tr>
                            <tr>
                                <td><b>  Código &nbsp de &nbsp  la &nbsp  Cuenta &nbsp Corriente:  </b> </td>
                                <td><b> ${cuenta.cueCod} </b> </td>
                            </tr>
                            <tr>
                                <td><b>  Mes: </b> </td>
                                <td><b> ${fecha_Filtro} </b> </td>
                            </tr>
                        </table>                        
                </form>
            
                <table >
                <thread>                
                    <tr>
                        <th>Numero &nbsp Correlativo &nbsp del &nbsp  Registro &nbsp o &nbsp codigo &nbsp  unico &nbsp de &nbsp operacion</th>
                        <th>Fecha &nbsp de &nbsp operacion</th>
                        <th>Numero &nbsp  de &nbsp transacción &nbsp Bancaria/ documento &nbsp sustentatorio/ &nbsp Control &nbsp  interno &nbsp  de &nbsp la &nbsp operacion</th>
                        <th>Codigo &nbsp de &nbsp la &nbsp  Cuenta &nbsp Asociada</th>
                        <th>Denominacion &nbsp de &nbsp  la &nbsp Cuenta &nbsp Asociada</th>
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
