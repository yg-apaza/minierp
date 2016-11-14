<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuración - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <br>
        <div class="pagel-body">
            <h1 class="page-header"> Configuración de Factura </h1>
            <form id="updateFactura" method="post" action="${pageContext.request.contextPath}/secured/configuracion/impresora/factura">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaFacMar">
                            <tr>
                                <th>MARGEN IZQUIERDO</th>
                                <th>MARGEN SUPERIOR</th>
                            </tr>
                            <tr>
                                <td><input type="number" name="leftMargin" value="${fac.getLeftMargin()}">cm</td>
                                <td><input type="number" name="topMargin" value="${fac.getTopMargin()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaFacSobCab">
                            <tr>
                                <td>CLIENTE:</td>
                                <td rowspan="2" style="vertical-align:middle">Nombres y apellidos</td>
                                <td colspan="2" rowspan="2"></td>
                            </tr>
                            <tr>
                                <td><input type="number" name="cliNom" value="${fac.getCliNom()}">cm</td>
                            </tr>
                            <tr>
                                <td>DIRECCIÓN:</td>
                                <td rowspan="2" style="vertical-align:middle">Avenida</td>
                                <td colspan="2" rowspan="2"></td>
                            </tr>
                            <tr>
                                <td><input type="number" name="cliDir" value="${fac.getCliDir()}">cm</td>
                            </tr>
                            <tr>
                                <td colspan="2"></td>
                                <td>FECHA EMISION<br></td>
                                <td rowspan="2" style="vertical-align:middle">10/11/2016</td>
                            </tr>
                            <tr>
                                <td colspan="3"><input type="number" name="fecEmi" value="${fac.getFecEmi()}">cm</td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaTopFacCab">
                            <tr>
                                <th style="text-align: center">SEPARACIÓN</th>
                            </tr>
                            <tr>
                                <td style="text-align: center"><input type="number" name="topFacCab" value="${fac.getTopFacCab()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>     
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaFacCab">
                            <tr>
                                <th>CÓDIGO CLIENTE</th>
                                <th>CONDICIÓN PAGO</th>
                                <th>FECHA VTO<br></th>
                                <th>VENDEDOR-ZONA</th>
                                <th>Nº SECUENCIA</th>
                                <th>DISTRITO</th>
                                <th>RUTA</th>
                                <th>TRANSPORTISTA</th>
                            </tr>
                            <tr>
                                <td><input type="number" name="cliCod" value="${fac.getCliCod()}">cm</td>
                                <td><input type="number" name="conPag" value="${fac.getConPag()}">cm</td>
                                <td><input type="number" name="fecVen" value="${fac.getFecVen()}">cm</td>
                                <td><input type="number" name="venZon" value="${fac.getVenZon()}">cm</td>
                                <td><input type="number" name="numSec" value="${fac.getNumSec()}">cm</td>
                                <td><input type="number" name="dis" value="${fac.getDis()}">cm</td>
                                <td><input type="number" name="rut" value="${fac.getRut()}">cm</td>
                                <td><input type="number" name="tra" value="${fac.getTra()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>           
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaTopFacDet">
                            <tr>
                                <th style="text-align: center">SEPARACIÓN</th>
                            </tr>
                            <tr>
                                <td style="text-align: center"><input type="number" name="topFacDet" value="${fac.getTopFacDet()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaFacDet">            
                            <tr>
                                <th>CÓDIGO</th>
                                <th>CANTIDAD</th>
                                <th>UNID</th>
                                <th>DESCRIPCION</th>
                                <th>VALOR VENTA<br>UNITARIO</th>
                                <th>%DSCTO</th>
                                <th>%DSCTO</th>
                                <th>V. NETO</th>
                            </tr>
                            <tr>
                                <td><input type="number" name="proCod" value="${fac.getProCod()}">cm</td>
                                <td><input type="number" name="proCan" value="${fac.getProCan()}">cm</td>
                                <td><input type="number" name="proUni" value="${fac.getProUni()}">cm</td>
                                <td><input type="number" name="proDes" value="${fac.getProDes()}">cm</td>
                                <td><input type="number" name="proValUni" value="${fac.getProValUni()}">cm</td>
                                <td><input type="number" name="proDes1" value="${fac.getProDes1()}">cm</td>
                                <td><input type="number" name="proDes2" value="${fac.getProDes2()}">cm</td>
                                <td><input type="number" name="proValNet" value="${fac.getProValNet()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaFacTot">            
                            <tr>
                                <td style="text-align: right"><input type="number" name="totalMargin" value="${fac.getTotalMargin()}">cm</td>
                                <td>TOTAL</td>                                
                            </tr>
                        </table>
                    </div>
                </div> 
                <button type="submit" id="update" class="btn btn-primary">Actualizar cambios</button>       
            </form>           
        </div>
    </jsp:attribute>
</minierptemplate:template>