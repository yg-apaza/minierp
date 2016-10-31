<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Contabilidad - Libro Diario</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
           
        <div class="panel-body">
            <div class="form-group">
                <div class="row">
                    <div class="col-md-4">
                        <br>
                        <h1 class="page-header">Libro Diario
                            <a href="#" class="btn btn-warning btn-circle" data-toggle="modal" data-target="#libDiarAgregar"><i class="fa fa-plus"></i></a>
                        </h1>
                    </div>
                    <div class="col-md-4 col-md-offset-4"><br>
                        <div class="col-md-6">
                        </div>
                        <div class="col-md-6">
                            <div class="form-group input-group" >
                                <span class="input-group-addon"><i class="fa fa-home"></i></span>
                                <input type="text" class="form-control" name="sucDes" value="${libDiaCod}" readonly>
                            </div>
                        </div>
                    </div>   
                </div>
                <div class="row">
                    <div class="col-lg-3">
                        <form method="post" action="${pageContext.request.contextPath}/secured/contabilidad/librodiario">
                            <label>Seleccione Periodo</label>
                            <input type="hidden" name="operacion" value=3>
                            <select name="libDiaCod" class="form-control">
                                <c:forEach items="${libros}" var="l">  
                                      <option value="${l.libDiaCod}" >${l.libDiaCod} - ${l.libDiaPer}</option> 
                                </c:forEach>
                            </select>
                            <br>
                            <button type="submit" class="btn btn-outline btn-warning">Cargar Libro</button>
                        </form>
                    </div>
                    <div class="col-lg-3"></div>
                    <div class="col-lg-3"></div>
                    <div class="col-lg-3">  
                        <label>MES</label>          
                        <select class="form-control">
                            <option value="-01">ENERO</option>
                            <option value="-02">FEBRERO</option>
                            <option value="-03">MARZO</option>
                            <option value="-04">ABRIL</option>
                            <option value="-05">MAYO</option>
                            <option value="-06">JUNIO</option>
                            <option value="-07">JULIO</option>
                            <option value="-08">AGOSTO</option>
                            <option value="-09">SEPTIEMBRE</option>
                            <option value="-10">OCTUBRE</option>
                            <option value="-11">NOVIEMBRE</option>
                            <option value="-12">DICIEMBRE</option>
                        </select>
                        <br>
                        <cc:if test = "${libDiaCod!=0}">
                            <button type="button" data-toggle="modal" data-target="#opeAgregar" class="btn btn-outline btn-warning">Agregar Nuevo</button>
                        </cc:if>
                    </div>
                </div>
                <br>

                <div class="row">

                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table width="100%" class="table table-striped table-bordered table-hover">
                                <thead>
                                  <tr >
                                    <th rowspan="2">NÚMERO CORRELATIVO <br>DE LA OPERACION</th>
                                    <th rowspan="2">FECHA DE LA <br>OPERACION</th>
                                    <th rowspan="2">GLOSA O DESCRIPCION DE LA <br>OPERACION</th>
                                    <th colspan="2">REFERENCIA DE LA OPERACION</th>
                                    <th colspan="2">CUENTA CONTABLE ASOCIADA A LA OPERACION</th>
                                    <th colspan="2">MOVIMIENTO</th>
                                  </tr>
                                  <tr>
                                    <th>CODIGO DEL LIBRO O<br>REGISTRO</th>
                                    <th>NUMERO DEL DOCUMENTO<br>SUSTENTATORIO</th>
                                    <th>CODIGO</th>
                                    <th>DENOMINACION</th>
                                    <th>DEBE</th>
                                    <th>HABER</th>
                                  </tr>
                                </thead>
                                <tbody>
                                    ${opera}
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3"></div>
                    <div class="col-md-3"></div>

                    <div class="col-md-3">

                        <div class="form-group">
                            <label>TOTAL GENERAL</label>
                            <table  width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    
                                    <tr>
                                        <th>DEBE</th>
                                        <th>HABER</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>

                            <button type="button" class="btn btn-outline btn-danger">Cerrar Libro Diario</button>
                        </div>

                    </div>
                </div>

            </div>
        </div>
        
            <!-- fin Panel de ORDEN de TRABAJOS -->
        
        <!--  FIN_PANELDERECHO -->

        <!-- MODAL1 -->
        <div id="opeAgregar" class="modal fade" role="dialog"><div class="modal-dialog"><div class="modal-content">
            <!-- TITULO-->
            <div class="modal-header"> <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Agregar Operacion al Libro Diario</h4>
            </div>
            <!-- FIN_TITULO -->
            <form method="post" onsubmit= "actualizarDatos('tablaDetalles')" action="${pageContext.request.contextPath}/secured/contabilidad/librodiario">
                <!-- CONTENIDO -->
                <div class="modal-body">
                    <div class="form-group">
                        <input type="hidden" name="operacion" value=2>
                        <label>Numero Correlativo de la Operacion:</label>
                        <input name="asiCabCod" type="number" class="form-control" required>

                        <label>Seleccione tipo de moneda </label>
                        <select name="monCod" class="form-control">
                            <c:forEach items="${monedas}" var="m">  
                                  <option value="${m.monCod}" >${m.monDet}</option> 
                              </c:forEach>
                        </select>
                        <label>Seleccione tipo de comprobante</label>
                        <select name="tipComCod" class="form-control">
                              <c:forEach items="${comprobantes}" var="co">  
                                  <option value="${co.tipComCod}" >${co.tipComDet}</option> 
                              </c:forEach>
                        </select>
                        <label>Fecha de la Operacion:</label>  
                        <input name="asiCabFec" type="date" class="form-control" required>
                        <label>Glosa de la Operacion:</label>
                        <input name="asiCabGlo" type="text" class="form-control" required> 
                        <label>Codigo del Registro:</label>
                        <input name="asiCabTip" type="text" class="form-control" required>
                        <label>Numero del Documento:</label>
                        <input name="asiCabNumCom" type="text" class="form-control" required> 
                    </div>
                    
                    <div class="table-responsive">
                        <table width="100%" class="table table-striped table-bordered table-hover" id="tablaDetalles">
                            <thead>
                                <th colspan="2">Cuenta</th>
                                <th>Debe</th>
                                <th>Haber</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>  
                                        <input type="checkbox">
                                    </td>
                                    <td>
                                        <select class="form-control">
                                            <c:forEach items="${cuentas}" var="cu">  
                                                <option value="${cu.cueCod}" >${cu.cueDes}</option> 
                                            </c:forEach>
                                        </select>
                                    </td>
                                    <td><input type="number" step="0.01" min="0.00" value=0.00 class="form-control"></td>
                                    <td><input type="number" step="0.01" min="0.00" value=0.00 class="form-control"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <input type="hidden" class="form-control" name="dataTable" id="idDataTable">
                    <div class="form-group"> 
                        <button type="button" class="btn btn-success" onclick="agregarFila('tablaDetalles')"><i class="fa fa-plus"></i></button>
                        <button type="button" class="btn btn-danger" onclick="eliminarFila('tablaDetalles')"><i class="fa fa-minus"></i></button>
                    </div>
                    
                </div>
                <!-- FIN CONTENIDO-->

                <!-- PIE -->
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                  <button type="submit" class="btn btn-default">Agregar</button>
                </div>
                <!-- FIN PIE -->
            </form>
        </div></div></div>
        <!-- FIN MODAL1 -->
        
        <!-- MODAL2 -->
        <div id="libDiarAgregar" class="modal fade" role="dialog"><div class="modal-dialog"><div class="modal-content">
            <!-- TITULO-->
            <div class="modal-header"> <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Agregar Libro Diario</h4>
            </div>
            <!-- FIN_TITULO -->
            <form method="post" action="${pageContext.request.contextPath}/secured/contabilidad/librodiario">
                <!-- CONTENIDO -->
                <div class="modal-body"  >
                    <div class="form-group">
                      <input type="hidden" name="operacion" value=1>
                      <label>Codigo:</label>
                      <input name="libDiaCod" type="number" min="100000" class="form-control">
                      <label>Periodo:</label>
                      <input name="libDiaPer" type="text" class="form-control">
                    </div>
                </div>
                <!-- FIN CONTENIDO-->

                <!-- PIE -->
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                  <button type="submit" class="btn btn-default">Agregar</button>
                </div>
                <!-- FIN PIE -->
            </form>
        </div></div></div>
        <!-- FIN MODAL2 -->
        
        <script language="javascript">
            $(document).ready(function () {
                $("#tablaDetalles").change(actualizarDatos('tablaDetalles'));
            });
            function agregarFila(idTabla) {
                var tabla = document.getElementById(idTabla);
                var nuevaFila = tabla.insertRow(tabla.rows.length);

                for (var i = 0; i < tabla.rows[1].cells.length; i++) {
                    var nuevaCelda = nuevaFila.insertCell(i);
                    nuevaCelda.innerHTML = tabla.rows[1].cells[i].innerHTML;
                }
            }
            function eliminarFila(idTabla) {
                try {
                    var tabla = document.getElementById(idTabla);
                    var rowCount = tabla.rows.length;
                    
                    for (var i = 1; i < rowCount ; i++) {
                        var fila = tabla.rows[i];
                        var mCheckbox = fila.cells[0].getElementsByTagName("input")[0];
                        if (mCheckbox.checked == true) {
                            if (rowCount - 1 <= 1) {
                                break;
                            }
                            tabla.deleteRow(i);
                            rowCount--;
                            i--;
                        }
                    }

                    actualizarDatos(idTabla);
                } catch (e) {
                    alert(e);
                }
            }
            function actualizarDatos(idTabla) {
                try {
                    
                    var tabla = document.getElementById(idTabla);
                    var aTabla = new Array();
                    for (var i = 1; i < tabla.rows.length; i++) {
                        
                        var afila  = new Array();
                        afila[0] = tabla.rows[i].cells[1].childNodes[1].value;
                        afila[1] = tabla.rows[i].cells[2].childNodes[0].value;
                        afila[2] = tabla.rows[i].cells[3].childNodes[0].value;
                        
                        aTabla.push(afila);
                    }
                    console.log(aTabla);
                    $('#idDataTable').val(aTabla);
                    
                } catch (e) {
                    alert(e);
                }
            }
            
        </script>
        
    </jsp:attribute>
</minierptemplate:template>
