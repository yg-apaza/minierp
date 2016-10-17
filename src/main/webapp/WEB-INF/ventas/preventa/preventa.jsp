<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Preventa</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class ="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> Actualizar Preventas por Lotes </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-lg-12">
                                    <label> Tipo de Filtro </label>
                                    <select class = "form-control" name = "tipoFiltro" id="filterSelect" style = "width: 180px; display: inline-block;">
                                        <option> Código de Preventa </option>
                                        <option> Código de Cliente </option>
                                        <option> Código de Usuario </option>
                                        <option> Usuario </option>
                                        <option> Fecha </option>
                                        <option> Moneda </option>
                                    </select>
                                    <label> Filtro </label>
                                    <input type="text" class="form-control" id="filterName" style = "width: 180px; display: inline-block;">  
                                    <button class="btn btn-success" id="addFiltro"> Agregar Filtro </button>
                                    <button class="btn btn-success" > Filtrar! </button>
                                    <button type="button" class="btn btn-info pull-right" data-toggle="modal" data-target="#configurarModal"> Transformar a Ventas </button>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div id="filters"></div>
                                </div>  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div id="printarea">
                <table class = "table table-bordered table-striped table-hover"  id = "id_table">
                    <thead>
                        <tr>
                            <th style="text-align: center">Código Preventa</th>
                            <th style="text-align: center">Cód Cliente</th>
                            <th style="text-align: center">Cliente</th>
                            <th style="text-align: center">Cód Usuario</th>
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
                                <td><c:out value="${preventa.enP1mCliente.cliCod}"/></td>
                                <td><c:out value="${preventa.enP1mCliente.cliNom}"/></td>
                                <td><c:out value="${preventa.enP1mUsuario.usuCod}"/></td>
                                <td><c:out value="${preventa.enP1mUsuario.usuNom}"/></td>
                                <td><c:out value="${preventa.preVenCabFec}"/></td>
                                <td><c:out value="${preventa.taGzzMoneda.monDet}"/></td>
                                <td><c:out value="${preventa.preVenCabTot}"/></td>
                                <td><input type="checkbox" value=""></td>
                            </tr>
                        </c:forEach>  
                    </tbody>
                </table>  
            </div>
            <div class="modal fade" id="configurarModal" role="dialog">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal">&times;</button>
                          <h4 class="modal-title">Configurar pagos</h4>
                        </div>
                        <div class="modal-body">
                          <form role="form" >
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
                                    <select class="form-control" name="tipPagCod">
                                        <c:forEach items="${tipos}" var="tipo">
                                            <option value="${tipo.tipPagCod}">${tipo.tipPagDet}</option>
                                        </c:forEach>
                                    </select>                         
                              </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal"> Cancelar </button>
                            <button type="button" class="btn btn-outline btn-success" data-toggle="modal" data-target="#alertaModal"> Facturar </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="alertaModal" role="dialog">
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
            </div>
        </div>
    </jsp:attribute>  
</minierptemplate:template>   
        
<script> 
    function addFiltro() {
        var filterName = $("#filterName").val();
        var filterSelect = $("#filterSelect").val();
        $("#filters").append($("<button onclick=\"$(this).remove()\" type=\"button\" class=\"btn btn-outline\">"+filterSelect+": "+ filterName+"</button>"));
    }    
    
  $(document).ready(function(){
    $('#addFiltro').click(function(){
       addFiltro();
    });
  });  
</script>
