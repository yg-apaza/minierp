<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir='/WEB-INF/tags'%>
<%@taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<t:template-page-nav>
    <jsp:attribute name="mybody">
        <form id="preventaLoteForm" role="form" action="${pageContext.request.contextPath}/secured/ventas/preventa" method="post">
            <div class="panel panel-default class">
                <div class="panel-heading">
                    <h1 class="text-left">Preventas</h1>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="btn-group btn-group-justified" role="group" aria-label="First group">
                                <div class="col-md-3 text-center">
                                    <a href="${pageContext.request.contextPath}/secured/ventas/preventa/addPreventa" 
                                       class="btn btn-success btn-block">Crear Preventa  
                                        <i class="fa fa-plus"></i>
                                    </a>                                
                                </div>
                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod() == 1}">
                                    <div class="col-md-3 text-center">
                                        <button type="button" 
                                                id="transformar" 
                                                class="btn btn-info btn-block">Transformar a Ventas 
                                            <i class="fa fa-arrow-right"></i></button>
                                        </button>
                                    </div>
                                </cc:if>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id = "id_table">
                                    <thead>
                                        <tr>
                                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()== 1}">
                                                <th></th>
                                                </cc:if>
                                            <th class="text-center">Cliente Razon Social</th>
                                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()== 1}">
                                                <th class="text-center">Usuario</th>
                                                </cc:if>
                                            <th class="text-center">Fecha</th>
                                            <th class="text-center">Valor Neto</th>
                                            <th class="text-center">Valor IGV</th>
                                            <th class="text-center">Valor Total</th>
                                            <th class="text-center">Operaciones</th>
                                        </tr>    
                                    </thead>
                                    <tbody>
                                        <cc:forEach items = "${preventas}" var = "preventa">    
                                            <tr>
                                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()== 1}">
                                                    <td width="3%" class="text-center">
                                                        <input type="checkbox" name="preventas" value="${preventa.preVenCabCod}">
                                                    </td>
                                                </cc:if>
                                                <td nowrap="nowrap"> ${preventa.enP1mCliente.cliRazSoc}</td>
                                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()== 1}">
                                                    <td nowrap="nowrap"> ${preventa.enP1mUsuario.usuNom} ${preventa.enP1mUsuario.usuApePat}</td>
                                                </cc:if>
                                                <td nowrap="nowrap"> 
                                                    <fmt:formatDate value="${preventa.preVenCabFecEmi}" pattern="dd/MM/yyyy" timeZone="UTC"/>
                                                </td>
                                                <td nowrap="nowrap"> 
                                                    <fmt:formatNumber type="number" 
                                                                      minFractionDigits="2" 
                                                                      maxFractionDigits="2" 
                                                                      value="${preventa.preVenCabTot}" />
                                                </td>
                                                <td nowrap="nowrap"> 
                                                    <fmt:formatNumber type="number" 
                                                                      minFractionDigits="2" 
                                                                      maxFractionDigits="2" 
                                                                      value="${preventa.preVenCabSubTot}"/>
                                                </td>
                                                <td nowrap="nowrap"> 
                                                    <fmt:formatNumber type="number" 
                                                                      minFractionDigits="2" 
                                                                      maxFractionDigits="2" 
                                                                      value="${preventa.preVenCabTot + preventa.preVenCabSubTot}"/>
                                                </td>
                                                <td nowrap="nowrap" class="text-center">
                                                    <a onclick='viewPreVen("${preventa.preVenCabCod}")' title="Vista Detallada de Pre-Venta">
                                                        <i class="fa fa-list-alt fa-lg" style="color: black;"></i>
                                                    </a> 
                                                </td>
                                            </tr>
                                        </cc:forEach>  
                                    </tbody>
                                </table>
                            </div>
                        </div>
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
                                    <cc:forEach items="${estados}" var="estado">
                                        <option value="${estado.estFacCod}">${estado.estFacDet}</option>
                                    </cc:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label> Método de Pago de las Facturas </label>
                                <select class="form-control" name="metPagCod">
                                    <cc:forEach items="${metodos}" var="metodo">
                                        <option value="${metodo.metPagCod}">${metodo.metPagDet}</option>
                                    </cc:forEach>
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
                                    <cc:forEach items="${tipos}" var="tipo">
                                        <option value="${tipo.tipPagCod}">${tipo.tipPagDet}</option>
                                    </cc:forEach>
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
                                        <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=2}">
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
                                        </cc:if>
                                        <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()==2}">
                                            <div class="col-xs-12 col-md-12">
                                                <div class="form-group input-group">
                                                    <span class="input-group-addon">IGV</span>
                                                    <input type="text" class="form-control" id="preVenCabIgv" readOnly>
                                                    <span class="input-group-addon"><i class="fa fa-venus"></i></span>
                                                </div>
                                            </div>
                                        </cc:if>
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
                                                        <th class="text-center">Descripción</th>
                                                        <th class="text-center">#</th>
                                                        <th class="text-center">Precio</th>
                                                        <th class="text-center">Importe</th>
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
    </jsp:attribute>

    <jsp:attribute name="myscripts">
        <script>
            function addFiltro() {
                var filterName = $("#filterName").val();
                var filterSelect = $("#filterSelect").val();
                $("#filters").append($("<button onclick=\"$(this).remove()\" type=\"button\" class=\"btn btn-outline\">" + filterSelect + ": " + filterName + "</button>"));
            }
            ;

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
                        $('#preVenDetPro tbody').append('<tr><td width="44%"></td><td width="16%" class="text-center"></td><td width="20%" class="text-center"></td><td width="20%" class="text-center"></td></tr>');
                        $('#preVenDetPro tr:last td:eq(0)').html(detail.proDet);
                        $('#preVenDetPro tr:last td:eq(1)').html(detail.detCan);
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
            ;

            $(document).ready(function () {
                $('#id_table').DataTable({
                    responsive: true
                });
                $('#numCuoBlock').hide();
                $('#addFiltro').click(function () {
                    addFiltro();
                });

                $.validator.addMethod("codePattern", function (value, element) {
                    return /^[0-9]{3}-[0-9]{6}$/.test(value);
                }, "Patrón: [0-9]{3}-[0-9]{6}");

                $('#transformar').on('click', function () {
                    if ($(':checkbox:checked').length > 0)
                        $('#configurarModal').modal('show');
                    else
                    {
                        $("#errorMessage").text("Debe seleccionar al menos una preventa");
                        $('#errorMessageModal').modal('show');
                    }

                });

                $('#tipPagCod').change(function () {
                    if (this.value === 2) {
                        $('#numCuoBlock').show();
                        $('#numCuo').removeAttr('disabled');
                    } else {
                        $('#numCuoBlock').hide();
                        $('#numCuo').attr('disabled', 'disabled');
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
</t:template-page-nav>


