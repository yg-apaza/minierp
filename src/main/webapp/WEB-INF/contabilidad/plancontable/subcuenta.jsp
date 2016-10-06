<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Contabilidad</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                    <div class="well">
                        <h4>Cuenta N° ${cuenta.cueNum}</h4>
                        <p>${cuenta.cueDes}</p>
                    </div>
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            Subcuentas
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Número</th>
                                            <th>Descripción</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${cuenta.childs}" var="s">
                                            <tr>
                                                <td>${s.cueNum}</td>
                                                <td>${s.cueDes}</td>
                                                <td>
                                                    <a href="#" data-toggle="modal" data-target="#agregarModal" data-codigo="${s.cueCod}" data-nivel="${s.cueNiv}" data-numero="${s.cueNum}">
                                                        <i class="fa fa-plus-square-o fa-2x"></i>
                                                    </a>
                                                    <a href="#"><i class="fa fa-pencil-square-o fa-2x"></i></a>
                                                    <a href="#"><i class="fa fa-trash-o fa-2x"></i></a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="panel-footer text-center">
                            <a href="#" type="button" class="btn btn-outline btn-default">Regresar al Plan Contable General</a>
                        </div>
                    </div>
                </div>
            </div>
            <div id="agregarModal" class="modal fade" role="dialog">
                <div class="modal-dialog modal-sm">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Agregar cuenta</h4>
                        </div>
                        <form role="form" method="post" action="#">
                            <div class="modal-body">
                                <div class="form-group">
                                    <div class="alert alert-danger alert-dismissable" id="error">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                        Ingrese un nombre para la cuenta
                                    </div>
                                    <label>Número de cuenta</label>
                                    <div class="input-group">
                                        <input class="form-control" disabled id="addCueNum">
                                        <span class="input-group-addon">-</span>
                                        <select class="form-control">
                                            <option>0</option>
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                            <option>8</option>
                                            <option>9</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Nombre de cuenta:</label>
                                    <input class="form-control" id="addCueDes">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline btn-success">Agregar</button>
                                <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script>
            var addModal = $("#agregarModal");
            var addCueNum = $("#addCueNum");
            addModal.on('show.bs.modal', function(){
                console.log("modal cargado");
                //addCueNum.val($(this).data('numero'));
                console.log(addModal.data('numero'));
                console.log(">:v")
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>