<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuración - Boleta</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <br>
        <div class="pagel-body">
            <h1 class="page-header"> Configuración de Boleta </h1>
            <form id="updateBoleta" method="post" action="${pageContext.request.contextPath}/secured/configuracion/impresora/boleta">               
                <div class="col-md-6">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaBolMar">
                            <tr>
                                <th>MARGEN IZQUIERDO</th>
                                <th>MARGEN SUPERIOR</th>
                            </tr>
                            <tr>
                                <td><input min="0" step="0.1" type="number" name="leftMargin" value="${bol.getLeftMargin()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="topMargin" value="${bol.getTopMargin()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-6 text-center">
                    <button type="submit" formnovalidate="formnovalidate" id="update" class="btn btn-primary">Actualizar cambios</button>       
                </div>  
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaBolSobCab">
                            <tr>
                                <td>CLIENTE:</td>
                                <td rowspan="2" style="vertical-align:middle">Nombres y apellidos</td>
                                <td colspan="2" rowspan="2"></td>
                            </tr>
                            <tr>
                                <td><input min="0" step="0.1" type="number" name="cliNom" value="${bol.getCliNom()}">cm</td>
                            </tr>
                            <tr>
                                <td>DIRECCIÓN:</td>
                                <td rowspan="2" style="vertical-align:middle">Dirección</td>
                                <td colspan="2" rowspan="2"></td>
                            </tr>
                            <tr>
                                <td><input min="0" step="0.1" type="number" name="cliDir" value="${bol.getCliDir()}">cm</td>
                            </tr>
                            <tr>
                                <td colspan="2"></td>
                                <td>FECHA EMISION<br></td>
                                <td rowspan="2" style="vertical-align:middle">10/11/2016</td>
                            </tr>
                            <tr>
                                <td colspan="3" style="text-align: right"><input min="0" step="0.1" type="number" name="fecEmi" value="${bol.getFecEmi()}">cm</td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaTopBolCab">
                            <tr>
                                <th style="text-align: center">SEPARACIÓN</th>
                            </tr>
                            <tr>
                                <td style="text-align: center"><input min="0" step="0.1" type="number" name="topBolCab" value="${bol.getTopBolCab()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>     
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaBolCab">
                            <tr>
                                <th>CÓDIGO CLIENTE</th>
                                <th>CONDICIÓN PAGO</th>
                                <th>FECHA VCTO.</th>
                                <th>VENDEDOR-RUTA</th>
                                <th>PDV</th>
                                <th>OBSERVACIÓN</th>
                            </tr>
                            <tr>
                                <td><input min="0" step="0.1" type="number" name="cliCod" value="${bol.getCliCod()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="conPag" value="${bol.getConPag()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="fecVen" value="${bol.getFecVen()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="venRut" value="${bol.getVenRut()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="pdv" value="${bol.getPdv()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="obs" value="${bol.getObs()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>           
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaTopBolDet">
                            <tr>
                                <th style="text-align: center">SEPARACIÓN</th>
                            </tr>
                            <tr>
                                <td style="text-align: center"><input min="0" step="0.1" type="number" name="topBolDet" value="${bol.getTopBolDet()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaBolDet">            
                            <tr>
                                <th>CÓD.</th>
                                <th>CANT.</th>
                                <th>UNID</th>
                                <th>DESCRIPCIÓN</th>
                                <th>V. VENTA</th>
                                <th>%DSCTO</th>
                                <th>P. NETO</th>
                            </tr>
                            <tr>
                                <td><input min="0" step="0.1" type="number" name="proCod" value="${bol.getProCod()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="proCan" value="${bol.getProCan()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="proUni" value="${bol.getProUni()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="proDes" value="${bol.getProDes()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="proValVen" value="${bol.getProValVen()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="proDes1" value="${bol.getProDes1()}">cm</td>
                                <td><input min="0" step="0.1" type="number" name="proPreNet" value="${bol.getProPreNet()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaBolTot">            
                            <tr>
                                <td style="text-align: right"><input min="0" step="0.1" type="number" name="totalMargin" value="${bol.getTotalMargin()}">cm</td>
                                <td>T. a pagar</td>                                
                            </tr>
                        </table>
                    </div>
                </div> 
            </form>           
        </div>
    </jsp:attribute>
</minierptemplate:template>