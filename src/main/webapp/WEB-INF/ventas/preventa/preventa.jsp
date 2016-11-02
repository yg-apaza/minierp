<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Ventas - Preventa</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class ="panel-body">
            <div class="form-group">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header"> Actualizar Preventas por Lotes </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-8">
                        <form role=form" method="get" action="${pageContext.request.contextPath}/secured/ventas/preventa/addPreventa">
                            <button type="submit" class="btn btn-success">Crear Preventa <i class="fa fa-plus"></i></button>   
                        </form>
                    </div>
                    <div class="col-lg-4">
                        <div class="col-lg-8">
                            <button type="button" id="transformar" class="btn btn-info btn-block"> Transformar a Ventas </button>
                        </div>
                    </div>
                </div><br>                
            <form id="preventaLoteForm" role="form" action="${pageContext.request.contextPath}/secured/ventas/preventa" method="post">
                <div class="row">
                    <div class = "col-lg-12">
                        <div class="table-responsive">
                            <table class = "table table-striped table-bordered table-hover"  id = "id_table">
                                <thead>
                                    <tr>
                                        <th style="text-align: center">Código Preventa</th>
                                        <th style="text-align: center">Cliente</th>
                                        <th style="text-align: center">Usuario</th>
                                        <th style="text-align: center">Fecha</th>
                                        <th style="text-align: center">Moneda</th>
                                        <th style="text-align: center">Cantidad total</th>
                                        <th style="text-align: center">Check</th>
                                    </tr>               
                                </thead>
                                <tbody>
                                     <c:forEach items = "${preventas}" var = "preventa">    
                                        <tr>
                                            <td><c:out value="${preventa.preVenCabCod}"/> </td>
                                            <td><c:out value="${preventa.enP1mCliente.cliNom} ${preventa.enP1mCliente.cliApePat}"/></td>
                                            <td><c:out value="${preventa.enP1mUsuario.usuNom} ${preventa.enP1mUsuario.usuApePat}"/></td>
                                            <td><c:out value="${preventa.preVenCabFec}"/></td>
                                            <td><c:out value="${preventa.taGzzMoneda.monDet}"/></td>
                                            <td><c:out value="${preventa.preVenCabTot}"/></td>
                                            <td><input type="checkbox" name="preventas" value="${preventa.preVenCabCod}"></td>
                                        </tr>
                                    </c:forEach>  
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="configurarModal" role="dialog">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">Configurar pagos</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label> Número de Lote</label>
                                    <input id="numLot" class="form-control" name="numLot">
                                </div>
                                <div class="form-group">
                                      <label> Estado de las Facturas </label>
                                      <select class="form-control" name="estFacCod">
                                          <c:forEach items="${estados}" var="estado">
                                              <option value="${estado.estFacCod}">${estado.estFacDet}</option>
                                          </c:forEach>
                                      </select>
                                </div>
                                <div class="form-group">
                                    <label> Método de Pago de las Facturas </label>
                                      <select class="form-control" name="metPagCod">
                                          <c:forEach items="${metodos}" var="metodo">
                                              <option value="${metodo.metPagCod}">${metodo.metPagDet}</option>
                                          </c:forEach>
                                      </select>                          
                                </div>
                                <div class="form-group">
                                    <label> Tipo de Pago de las Facturas </label>
                                      <select class="form-control" name="tipPagCod" id="tipPagCod">
                                          <c:forEach items="${tipos}" var="tipo">
                                              <option value="${tipo.tipPagCod}">${tipo.tipPagDet}</option>
                                          </c:forEach>
                                      </select>
                                </div>
                                <div class="form-group" id="numCuoBlock">
                                    <label> Número de cuotas </label>
                                    <input id="numCuo" class="form-control" name="numCuo" disabled>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal"> Cancelar </button>
                                <button type="submit" class="btn btn-outline btn-success"> Facturar </button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <!--div class="modal fade" id="alertaModal" role="dialog">
                <div class="modal-dialog modal-sm">
                  <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal">&times;</button>
                      <h4 class="modal-title">Alerta</h4>
                    </div>
                    <div class="modal-body">
                        <label> Esta operación es irreversible, ¿Está seguro que desea continuar? </label>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline btn-success"> Aceptar </button>
                        <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal"> Cancelar </button>
                    </div>
                  </div>
                </div>
            </div-->
        </div>
                
        <div id="errorMessageModal" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Transformar a Venta</h4>
                    </div>
                    <div class="modal-body">
                        <p align="center"><span id="errorMessage"></span></p>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-success" data-dismiss="modal">Aceptar</button>                                            
                    </div>
                </div>              
            </div>
            </div>
                
        </div>
        <script> 
            function addFiltro() {
                var filterName = $("#filterName").val();
                var filterSelect = $("#filterSelect").val();
                $("#filters").append($("<button onclick=\"$(this).remove()\" type=\"button\" class=\"btn btn-outline\">"+filterSelect+": "+ filterName+"</button>"));
            }    

            $(document).ready(function(){
                $('#id_table').DataTable({
                    responsive: true
                });
                $('#numCuoBlock').hide();
                $('#addFiltro').click(function(){
                   addFiltro();
                });
                
                $('#transformar').on('click', function () {
                    if($(':checkbox:checked').length > 0)
                        $('#configurarModal').modal('show');
                    else
                    {
                        $("#errorMessage").text("Debe seleccionar al menos una preventa");
                        $('#errorMessageModal').modal('show');
                    }
                    
                });
                
                $('#tipPagCod').change(function () {
                    if(this.value == 2){
                        $('#numCuoBlock').show();
                        $('#numCuo').removeAttr('disabled');
                    }
                    else{
                        $('#numCuoBlock').hide();
                        $('#numCuo').attr('disabled','disabled');
                    }
                });
                
                $("#preventaLoteForm").validate({
                    rules: {
                        numLot:{
                            required: true,
                            digits: true,
                            min: 1,
                            max: 999
                        },
                        numCuo: {
                            required: true,
                            digits: true,
                            min: 2
                        }
                    },
                    messages: {
                        numLot: {
                            required: "Ingrese número de lote",
                            digits: 'Ingresar solo dígitos',
                            min: 'Número de lote debe estar entre 1 y 999',
                            max: 'Número de lote debe estar entre 1 y 999'
                        },
                        numCuo: {
                            required: "Ingrese número de cuotas",
                            digits: 'Ingresar solo números',
                            min: 'Número de cuotas debe ser al menos 2'
                        }
                    },
                    submitHandler: function (form) {
                        form.submit();
                    }
                });
            });  
        </script>
    </jsp:attribute>  
</minierptemplate:template>   
        

