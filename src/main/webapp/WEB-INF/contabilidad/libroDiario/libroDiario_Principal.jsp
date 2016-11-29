<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                            <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                            <a href="#" class="btn btn-warning btn-circle" data-toggle="modal" data-target="#libDiarAgregar"><i class="fa fa-plus"></i></a>
                            </c:if>
                        </h1>
                    </div>
                    <div class="col-md-4 col-md-offset-4"><br>
                        <div class="col-md-offset-6 col-md-6">
                            <div class="form-group input-group" >
                                <span class="input-group-addon"><i class="fa fa-book"></i></span>
                                <input type="text" class="form-control" name="sucDes" value="${libDiaCod}" readonly>
                            </div>
                        </div>
                    </div>   
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=librodiario&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-danger btn-lg btn-block">
                            <i class="fa fa-file-pdf-o"></i>
                            Reporte [PDF]
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&report=librodiario&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-success btn-lg btn-block">
                            <i class="fa fa-file-excel-o"></i>
                            Reporte [XLS]
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=librodiario&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-primary btn-lg btn-block">
                            <i class="fa fa-file-word-o"></i>
                            Reporte [DOC]
                        </a>
                    </div>
                    <div class="col-md-3"> 
                        <form method="post" action="${pageContext.request.contextPath}/secured/contabilidad/librodiario">
                            <label>MES</label> 
                            <div class="form-group input-group" >
                                <input type="hidden" name="operacion" value=4>
                                <select  name="mes" class="form-control" value="1"> 
                                    <option value="0" ${0 == libDiaMes ? 'selected' : ''}>TODO</option>
                                    <option value="1" ${1 == libDiaMes ? 'selected' : ''}>ENERO</option>
                                    <option value="2" ${2 == libDiaMes ? 'selected' : ''}>FEBRERO</option>
                                    <option value="3" ${3 == libDiaMes ? 'selected' : ''}>MARZO</option>
                                    <option value="4" ${4 == libDiaMes ? 'selected' : ''}>ABRIL</option>
                                    <option value="5" ${5 == libDiaMes ? 'selected' : ''}>MAYO</option>
                                    <option value="6" ${6 == libDiaMes ? 'selected' : ''}>JUNIO</option>
                                    <option value="7" ${7 == libDiaMes ? 'selected' : ''}>JULIO</option>
                                    <option value="8" ${8 == libDiaMes ? 'selected' : ''}>AGOSTO</option>
                                    <option value="9" ${9 == libDiaMes ? 'selected' : ''}>SEPTIEMBRE</option>
                                    <option value="10" ${10 == libDiaMes ? 'selected' : ''}>OCTUBRE</option>
                                    <option value="11" ${11 == libDiaMes ? 'selected' : ''}>NOVIEMBRE</option>
                                    <option value="12" ${12 == libDiaMes ? 'selected' : ''}>DICIEMBRE</option>
                                </select>
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>
                <br>
                <div class="row">

                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Operaciones
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table width="100%" class="table table-striped table-bordered table-hover" id="miTabla">
                                        <thead>
                                          <tr>
                                            <th rowspan="2">NÚMERO CORRELATIVO <br>DE LA OPERACIÓN</th>
                                            <th rowspan="2">FECHA DE LA <br>OPERACIÓN</th>
                                            <th rowspan="2">GLOSA O DESCRIPCION DE LA <br>OPERACIÓN</th>
                                            <th colspan="2">REFERENCIA DE LA OPERACIÓN</th>
                                            <th colspan="2">CUENTA CONTABLE ASOCIADA A LA OPERACIÓN</th>
                                            <th colspan="2">MOVIMIENTO</th>
                                          </tr>
                                          <tr>
                                            <th>CÓDIGO DEL LIBRO O<br>REGISTRO</th>
                                            <th>NÚMERO DEL DOCUMENTO<br>SUSTENTATORIO</th>
                                            <th>CÓDIGO</th>
                                            <th>DENOMINACIÓN</th>
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
                        
                    </div>

                </div>
                <br>
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
                                        <td>${mDebe}</td>
                                        <td>${mHaber}</td>
                                    </tr>
                                </tbody>
                            </table>
                                   
                            <button type="button" data-toggle="modal" data-target="#libDiarCerrar" class="btn btn-outline btn-danger">Cerrar Libro Diario</button>
                            
                            
                        </div>

                    </div>
                </div>

            </div>
        </div>
        
            <!-- fin Panel de ORDEN de TRABAJOS -->
        
        <!--  FIN_PANELDERECHO -->

        <!-- MODAL2 -->
        <div id="libDiarAgregar" class="modal fade" role="dialog"><div class="modal-dialog"><div class="modal-content" style="overflow-y: auto">
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
                      <label>Código:</label>
                      <input name="libDiaCod" type="number" min="0" class="form-control">
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
        
        <!-- MODAL3 -->
        <div id="libDiarCerrar" class="modal fade" role="dialog"><div class="modal-dialog"><div class="modal-content" style="overflow-y: auto">
            <!-- TITULO-->
            <div class="modal-header"> <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Cerrar Libro Diario</h4>
            </div>
            <!-- FIN_TITULO -->
            <form method="post" action="${pageContext.request.contextPath}/secured/contabilidad/librodiario">
                <!-- CONTENIDO -->
                <div class="modal-body"  >
                    <input type="hidden" name="operacion" value=5>
                    <label>Está seguro que desa eliminar el libro diario con código: "${libDiaCod}" </label>
                </div>
                <!-- FIN CONTENIDO-->
                <!-- PIE -->
                <div class="modal-footer">
                  <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                  <button type="submit" class="btn btn-default">Aceptar</button>
                </div>
                <!-- FIN PIE -->
            </form>
        </div></div></div>
        <!-- FIN MODAL3 -->

        <script language="javascript">
            $(document).ready(function() {
                $('#miTabla').DataTable({
                    responsive: true
                });
            });
        </script>
        
    </jsp:attribute>
</minierptemplate:template>
