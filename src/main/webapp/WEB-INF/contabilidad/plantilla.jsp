<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Contabilidad - Plantillas de Asientos</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">
                Plantillas de Asientos
                <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
            </h1>
            <br>
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Descripción</th>
                                <th>Glosa por defecto</th>
                                <th class="text-right">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="p" items="${plantillas}">
                                <tr>
                                    <td>${p.plaCod}</td>
                                    <td>${p.plaDet}</td>
                                    <td>${p.plaGlo}</td>
                                    <c:if test="${p.plaHab}">
                                        <td class="text-right">
                                            <a href="#" data-toggle="modal" data-target="#modificarModal" data-codigo="${cb.cueBanCod}" data-nrocuenta="${cb.cueBanNum}" data-codbanco="${cb.taGzzBanco.banCod}" data-cuenum="${cb.enP3mCuenta.cueNum}">
                                                <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                            </a>
                                            <a href="#" data-toggle="modal" data-target="#eliminarModal" data-codigo="${cb.cueBanCod}" data-nrocuenta="${cb.cueBanNum}" data-detbanco="${cb.taGzzBanco.banDet}">
                                                <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                            </a>
                                        </td>
                                    </c:if>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar plantilla</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/contabilidad/plantilla">
                        <div class="modal-body">
                            <div class="row">
                                <input type="hidden" name="accion" value="create">
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label>Descripción:</label>
                                        <input class="form-control" name="plaDet">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label>Glosa por defecto:</label>
                                        <input class="form-control" name="plaGlo">
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12">
                                    <label>Detalle de Plantilla</label>
                                </div>
                                <div class="col-md-7 col-sm-12">
                                    <div class="form-group input-group">
                                        <span class="input-group-addon">Cuenta</span>
                                        <input class="form-control" name="cueNum" id="cueNum" placeholder="Nro de Cuenta">
                                        <span class="input-group-addon">-</span>
                                        <input class="form-control" name="cueDes" id="cueDes" placeholder="Descripción" disabled>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-5">
                                    <div class="form-group">
                                        <select class="form-control" name="plaDetDebHab">
                                            <option value="1">DEBE</option>
                                            <option value="0">HABER</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-2 col-sm-5">
                                    <div class="form-group">
                                        <input name="plaDetPor" type="number" placeholder="Porcentaje" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-1 col-sm-2">
                                    <div class="form-group">
                                        <button type="button" class="btn btn-success"><i class="fa fa-plus fa-1x"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 col-sm-12">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Cuenta</th>
                                                    <th>Debe/Haber</th>
                                                    <th>Porcentaje</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Agregar</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div>
        <script>
            $('#cueNum').keyup(function() {
                $.post(
                    "${pageContext.request.contextPath}/secured/contabilidad/busquedaCuenta",
                    {cueNum: $("#cueNum").val()})
                .done(function(data) {
                    if(data.cueCod != null)
                    {
                        $("#cueDes").val(data.cueDes);
                    }
                    else
                    {
                        $("#cueDes").val("Incorrecto");
                    }
                });
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>