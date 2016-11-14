<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuraci�n - Gu�a de Remisi�n</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <br>
        <div class="pagel-body">
            <h1 class="page-header"> Configuraci�n de Gu�a de Remisi�n </h1>
            <form id="updateRemision" method="post" action="${pageContext.request.contextPath}/secured/configuracion/impresora/remision">
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaRemMar">
                            <tr>
                                <th>MARGEN IZQUIERDO</th>
                                <th>MARGEN SUPERIOR</th>
                            </tr>
                            <tr>
                                <td><input type="number" name="leftMargin" value="${rem.getLeftMargin()}">cm</td>
                                <td><input type="number" name="topMargin" value="${rem.getTopMargin()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaRemSobCab">
                            <tr>
                                <td>Se�or(es):</td>
                                <td rowspan="2" style="vertical-align:middle">Nombres y apellidos</td>
                                <td colspan="2" rowspan="2"></td>
                            </tr>
                            <tr>
                                <td><input type="number" name="cliNom" value="${rem.getCliNom()}">cm</td>
                            </tr>
                            <tr>
                                <td>PUNTO DE PARTIDA:</td>
                                <td rowspan="2" style="vertical-align:middle">Avenida</td>
                                <td colspan="2" rowspan="2"></td>
                            </tr>
                            <tr>
                                <td><input type="number" name="punPar" value="${rem.getPunPar()}">cm</td>
                            </tr>
                            <tr>
                                <td>PUNTO DE LLEGADA</td>
                                <td rowspan="2" style="vertical-align:middle">Avenida</td>
                                <td colspan="2" rowspan="2"></td>
                            </tr>
                            <tr>
                                <td style="text-align: right"><input type="number" name="punLle" value="${rem.getPunLle()}">cm</td>
                            </tr>
                            <tr>
                                <td colspan="3"></td>
                                <td>Transportista</td>
                            </tr>
                            <tr>
                                <td colspan="3"><input type="number" name="traNom" value="${rem.getTraNom()}">cm</td>
                                <td>Nombres y apellidos</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaTopRemCab">
                            <tr>
                                <th style="text-align: center">SEPARACI�N</th>
                            </tr>
                            <tr>
                                <td style="text-align: center"><input type="number" name="topRemCab" value="${rem.getTopRemCab()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>     
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaRemCab">
                            <tr>
                                <th>VENCIMIENTO</th>
                                <th>VENDEDOR</th>
                                <th>ZONA</th>
                                <th>CONDICIONES</th>
                                <th>C�DIGO CLIENTE</th>
                                <th>O/C</th>
                                <th>FACTURA</th>
                                <th>HORA</th>
                                <th>N�MERO INTERNO</th>
                            </tr>
                            <tr>
                                <td><input type="number" name="fecVen" value="${rem.getFecVen()}">cm</td>
                                <td><input type="number" name="ven" value="${rem.getVen()}">cm</td>
                                <td><input type="number" name="zon" value="${rem.getZon()}">cm</td>
                                <td><input type="number" name="con" value="${rem.getCon()}">cm</td>
                                <td><input type="number" name="cliCod" value="${rem.getCliCod()}">cm</td>
                                <td><input type="number" name="oc" value="${rem.getOc()}">cm</td>
                                <td><input type="number" name="facNum" value="${rem.getFacNum()}">cm</td>
                                <td><input type="number" name="hora" value="${rem.getHora()}">cm</td>
                                <td><input type="number" name="numInt" value="${rem.getNumInt()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>           
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaTopRemDet">
                            <tr>
                                <th style="text-align: center">SEPARACI�N</th>
                            </tr>
                            <tr>
                                <td style="text-align: center"><input type="number" name="topRemDet" value="${rem.getTopRemDet()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaRemDet">            
                            <tr>
                                <th>C�DIGO</th>
                                <th>CANTIDAD</th>
                                <th>UNID./th>
                                <th>DESCRIPCION</th>
                                <th>VALOR VENTA<br>UNITARIO</th>
                                <th></th>
                                <th>VALOR VENTA<BR>NETA</th>
                            </tr>
                            <tr>
                                <td><input type="number" name="proCod" value="${rem.getProCod()}">cm</td>
                                <td><input type="number" name="proCan" value="${rem.getProCan()}">cm</td>
                                <td><input type="number" name="proUni" value="${rem.getProUni()}">cm</td>
                                <td><input type="number" name="proDes" value="${rem.getProDes()}">cm</td>
                                <td><input type="number" name="proValUni" value="${rem.getProValUni()}">cm</td>
                                <td><input type="number" name="proDes1" value="${rem.getProDes1()}">cm</td>
                                <td><input type="number" name="proValNet" value="${rem.getProValNet()}">cm</td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover table-condensed" id="tablaRemTot">            
                            <tr>
                                <td style="text-align: right"><input type="number" name="totalMargin" value="${rem.getTotalMargin()}">cm</td>
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