<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
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
                    <div class="col-lg-2">
                        <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                        <form role="form" method="get" action="${pageContext.request.contextPath}/secured/ventas/preventa/addPreventa">
                            <button type="submit" class="btn btn-success">Crear Preventa <i class="fa fa-plus"></i></button>   
                        </form>
                        </cc:if>
                    </div>
                    <div class="col-lg-4">
                        <div class="col-lg-8">
                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                            <button type="button" id="transformar" class="btn btn-info btn-block"> Transformar a Ventas <i class="fa fa-arrow-right"></i></button>
                            </cc:if>
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
                                        <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                        <th style="text-align: center"></th>
                                        </cc:if>
                                        <th style="text-align: center">Código</th>
                                        <th style="text-align: center">Cliente RZ</th>
                                        <th style="text-align: center">Usuario</th>
                                        <th style="text-align: center">Fecha</th>
                                        <th style="text-align: center">Valor Neto</th>
                                        <th style="text-align: center">I.G.V.</th>
                                        <th style="text-align: center">Total</th>
                                        <th style="text-align: center">Vista</th>
                                    </tr>    
                                </thead>
                                <tbody>
                                     <c:forEach items = "${preventas}" var = "preventa">    
                                        <tr>
                                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                            <td width="3%" align="center"><input type="checkbox" name="preventas" value="${preventa.preVenCabCod}"></td>
                                            </cc:if>
                                            <td><c:out value="${preventa.preVenCabCod}"/> </td>
                                            <td><c:out value="${preventa.enP1mCliente.cliRazSoc}"/></td>
                                            <td><c:out value="${preventa.enP1mUsuario.usuNom} ${preventa.enP1mUsuario.usuApePat}"/></td>
                                            <td><c:out value="${preventa.preVenCabFecEmi}"/></td>
                                            <td><c:out value="${preventa.taGzzMoneda.monSim} ${preventa.preVenCabTot}"/></td>
                                            <td><c:out value="${preventa.taGzzMoneda.monSim} ${preventa.preVenCabSubTot}"/></td>
                                            <td><c:out value="${preventa.taGzzMoneda.monSim} ${preventa.preVenCabTot + preventa.preVenCabSubTot}"/></td>
                                            <td>
                                                <a onclick='viewPreVen("${preventa.preVenCabCod}")' title="Vista Detallada de Pre-Venta">
                                                    <i class="fa fa-list-alt fa-lg" style="color: black;"></i>
                                                </a> 
                                            </td>
                                        </tr>
                                    </c:forEach>  
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="configurarModal" role="dialog">
                    <div class="modal-dialog modal-sm">
                        <div class="modal-content" style="overflow-y: auto">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">Configurar pagos</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label> Factura Inicial</label>
                                    <input id="numLot" class="form-control" name="iniFacVenCabCod" placeholder="Ejm. 001-000001">
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
                                    <label> Modalidad de Venta </label>
                                      <select class="form-control" name="facVenCabModVen">
                                              <option value="F">Factura</option>
                                              <option value="B">Boleta</option>
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
        </div>
                
        <div id="errorMessageModal" class="modal fade">
            <div class="modal-dialog modal-sm">
                <div class="modal-content" style="overflow-y: auto">
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
        
        <!- Vista de Detalles ->        
        <div class="modal fade" id="viewPreVen">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3 class="modal-title">Pre-Venta</h3>
                    </div>
                    <div class="modal-body">   
                        <div class="panel-body">
                            <ul class="nav nav-pills">
                                <li class="active"><a href="#general" data-toggle="tab">Información General</a></li>
                                <li><a href="#detail" data-toggle="tab">Detalle de Venta</a></li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="general"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="col-xs-12 col-md-8">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Pre-Venta</span>
                                                <input type="text" class="form-control" id="preVenCabCod" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-clipboard"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-4">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">IGV</span>
                                                <input type="text" class="form-control" id="preVenCabIgv" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-venus"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon">Vendedor</span>
                                                <input type="text" class="form-control" id="preVenCabUsuNom" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-12">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Cliente</span>
                                                <input type="text" class="form-control" id="preVenCabCliNomCom" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-shopping-cart"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-8">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Descuento</span>
                                                <input type="text" class="form-control" id="tipDesDet" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-arrow-down"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-md-4">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">%</span>
                                                <input type="text" class="form-control" id="preVenPorDes" readOnly>
                                                <span class="input-group-addon"><i class="fa fa-venus"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="detail"><br>
                                    <div class="col-xs-12 col-md-12">
                                        <div class="table-responsive">
                                            <table width="100%" class="table table-striped table-bordered table-hover" id="preVenDetPro">
                                                <thead align="center">
                                                    <tr >
                                                        <th>Cant.</th>
                                                        <th>Descripción</th>
                                                        <th>Precio</th>
                                                        <th>Importe</th>
                                                    </tr>
                                                </thead>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success" data-dismiss="modal">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>        
                
                
        <script> 
            function addFiltro() {
                var filterName = $("#filterName").val();
                var filterSelect = $("#filterSelect").val();
                $("#filters").append($("<button onclick=\"$(this).remove()\" type=\"button\" class=\"btn btn-outline\">"+filterSelect+": "+ filterName+"</button>"));
            };
            
            function viewPreVen(preVenCabCod) {
                $("#loading").modal('show');
                $.post(
                        "${pageContext.request.contextPath}/secured/ventas/searchPreVen", {
                            preVenCabCod: preVenCabCod
                        }
                ).done(function (data) {
                    $("#preVenCabCod").val(data.cod);
                    $("#preVenCabUsuNom").val(data.usuNom);
                    $("#preVenCabCliNomCom").val(data.cliNomCom);
                    $("#tipDesDet").val(data.tipDesDet);
                    $("#preVenCabIgv").val(data.preVenCabIgv);
                    $("#preVenPorDes").val(data.preVenPorDes);
                    $('#preVenDetPro').DataTable().clear().draw();
                    $('#preVenDetPro').DataTable().destroy();
                    data.detailList.forEach(function (detail) {
                        $('#preVenDetPro tbody').append('<tr><td width="16%" align="center"></td><td width="44%"></td><td width="20%" align="center"></td><td width="20%" align="center"></td></tr>');
                        $('#preVenDetPro tr:last td:eq(0)').html(detail.detCan);
                        $('#preVenDetPro tr:last td:eq(1)').html(detail.proDet);
                        $('#preVenDetPro tr:last td:eq(2)').html(detail.preUniVen);
                        $('#preVenDetPro tr:last td:eq(3)').html((Number(detail.detImp)).toFixed(2));
                    });
                    $('#preVenDetPro').DataTable({
                        responsive: true
                    });
                    $("#loading").modal('hide');
                    $("#viewPreVen").modal('show');
                });
            }
            
            $(document).ready(function(){
                $('#id_table').DataTable({
                    responsive: true
                });
                $('#numCuoBlock').hide();
                $('#addFiltro').click(function(){
                   addFiltro();
                });
                
                $.validator.addMethod("codePattern", function (value, element) {
                return /^[0-9]{3}-[0-9]{6}$/.test(value);
                }, "Patrón: [0-9]{3}-[0-9]{6}");
                
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
                        iniFacVenCabCod: {
                            required: true,
                            codePattern: true
                        },
                        numCuo: {
                            required: true,
                            digits: true,
                            min: 2
                        }
                    },
                    messages: {
                        iniFacVenCabCod: {
                            required: "Ingrese número de la factura inicial"
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
        

