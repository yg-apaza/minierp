<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Clientes</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">Clientes
                <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
                <a href="#" class="btn btn-info btn-circle" data-toggle="modal" data-target="#estadosModal"><i class="fa fa-eye"></i></a>
            </h1>     
            <div class="row">
                <div class="col-md-4">
                    <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=clientes&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-danger btn-lg btn-block">
                        <i class="fa fa-file-pdf-o"></i>
                        Reporte [PDF]
                    </a></div>
                <div class="col-md-4">
                    <a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&report=clientes&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-success btn-lg btn-block">
                        <i class="fa fa-file-excel-o"></i>
                        Reporte [XLS]
                    </a></div>
                <div class="col-md-4">
                    <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=clientes&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-primary btn-lg btn-block">
                        <i class="fa fa-file-word-o"></i>
                        Reporte [DOC]
                    </a></div>
            </div>
            <br>
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Cod Cliente</th>
                                <th>Nombres</th>
                                <th>Ape. Paterno</th>
                                <th>Ape. Materno</th>
                                <th>Sexo</th>
                                <th>Direccion</th>
                                <th>Tel. Fijo</th>
                                <th>Tel. Celular</th>
                                <th>Email</th>
                                <th>Estado Civil</th>
                                <th>Registro</th>
                                <th class="text-right">Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cli" items="${cliente}">
                                <tr>
                                    <td>${cli.cliCod}</td>
                                    <td>${cli.cliNom}</td>
                                    <td>${cli.cliApePat}</td>
                                    <td>${cli.cliApeMat}</td>
                                    <td>${cli.cliSex}</td>
                                    <td>${cli.cliDir}</td>
                                    <td>${cli.cliTelFij}</td>
                                    <td>${cli.cliTelCel}</td>
                                    <td>${cli.cliEmail}</td>
                                    <td>${cli.taGzzEstadoCivil.estCivCod} - ${cli.taGzzEstadoCivil.estCivDet}</td>
                                    <td>${cli.estRegCod}</td>

                                    <td class="text-right">
                                        <a href="#" data-toggle="modal" data-target="#modificarModal"
                                           data-clicod="${cli.cliCod}" data-clinom="${cli.cliNom}" data-cliapepat="${cli.cliApePat}" 
                                           data-cliapemat="${cli.cliApeMat}" data-clisex="${cli.cliSex}" data-clidir="${cli.cliDir}" 
                                           data-clitelfij="${cli.cliTelFij}" data-clitelcel="${cli.cliTelCel}" data-cliemail="${cli.cliEmail}" 
                                           data-estcivcod="${cli.taGzzEstadoCivil.estCivCod}" data-estcivdet="${cli.taGzzEstadoCivil.estCivDet}" >
                                            <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#disableModal" 
                                           data-clicod="${cli.cliCod}" data-clinom="${cli.cliNom}" data-cliapepat="${cli.cliApePat}" 
                                           data-cliapemat="${cli.cliApeMat}" >
                                            <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar Cliente</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Codigo Cliente:</label>
                                        <input type="text" class="form-control" placeholder="Codigo Cliente" name="cliCod">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Nombre Cliente:</label>
                                        <input type="text" class="form-control" placeholder="Nombre Cliente" name="cliNom">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Apellido Paterno:</label>
                                        <input type="text" class="form-control" placeholder="Apellido Paterno" name="cliApePat">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Apellido Materno:</label>
                                        <input type="text" class="form-control" placeholder="Apellido Materno" name="cliApeMat">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <label>Sexo:</label>
                                        <select class="form-control" name="cliSex">
                                            <option value="M">Masculino</option>
                                            <option value="F">Feminino</option>
                                            <option value="N">No Espesifica</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-9">
                                        <label>Direccion:</label>
                                        <input type="text" class="form-control" placeholder="Direccion" name="cliDir">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Telefono Fijo:</label>
                                        <input type="text" class="form-control" placeholder="Telefono Fijo" name="cliTelFij">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Telefono Celular:</label>
                                        <input type="text" class="form-control" placeholder="Telefono Celular" name="cliTelCel">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <label>Estado Civil:</label>
                                        <select class="form-control" name="estCivCod">
                                            <c:forEach var="ec" items="${estCivil}">
                                                <option value="${ec.estCivCod}">${ec.estCivCod} - ${ec.estCivDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-9">
                                        <label>Correo Eletronico:</label>
                                        <input type="text" class="form-control" placeholder="example@domain.com" name="cliEmail">
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

        <div id="modificarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar Cliente</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="update">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Codigo Cliente:</label>
                                        <input type="text" class="form-control" placeholder="Codigo Cliente" name="cliCod" id="updateCliCod" readonly>
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Nombre Cliente:</label>
                                        <input type="text" class="form-control" placeholder="Nombre Cliente" name="cliNom" id="updateCliNom">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Apellido Paterno:</label>
                                        <input type="text" class="form-control" placeholder="Apellido Paterno" name="cliApePat" id="updateCliApePat">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Apellido Materno:</label>
                                        <input type="text" class="form-control" placeholder="Apellido Materno" name="cliApeMat" id="updateCliApeMat">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <label>Sexo:</label>
                                        <select class="form-control" name="cliSex" id="updateCliSex">
                                            <option value="M">Masculino</option>
                                            <option value="F">Feminino</option>
                                            <option value="N">No Espesifica</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-9">
                                        <label>Direccion:</label>
                                        <input type="text" class="form-control" placeholder="Direccion" name="cliDir" id="updateCliDir">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Telefono Fijo:</label>
                                        <input type="text" class="form-control" placeholder="Telefono Fijo" name="cliTelFij" id="updateCliTelFij">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Telefono Celular:</label>
                                        <input type="text" class="form-control" placeholder="Telefono Celular" name="cliTelCel" id="updateCliTelCel">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <label>Estado Civil:</label>
                                        <select class="form-control" name="estCivCod" id="updateEstCivCod">
                                            <c:forEach var="ec" items="${estCivil}">
                                                <option value="${ec.estCivCod}">${ec.estCivCod} - ${ec.estCivDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-9">
                                        <label>Correo Eletronico:</label>
                                        <input type="text" class="form-control" placeholder="example@domain.com" name="cliEmail" id="updateCliEmail">
                                    </div>
                                </div>   
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Modificar</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="disableModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Inhabilitar Cliente</h4>
                    </div>
                    <form id="disableForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="disable">
                            <input type="hidden" name="cliCod" id="disableCliCod">
                            <p> ¿Desea inhabilitar el Cliente: <span id="disableCliNomCom"></span> ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="estadosModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Reactivar o Eliminar Clientes</h4>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Cod Cliente</th>
                                        <th>Nombres</th>
                                        <th>Ape. Paterno</th>
                                        <th>Ape. Materno</th>
                                        <th>Sexo</th>
                                        <th>Email</th>
                                        <th>Registro</th>
                                        <th class="text-right">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cli" items="${inactivos}">
                                        <tr>
                                            <td>${cli.cliCod}</td>
                                            <td>${cli.cliNom}</td>
                                            <td>${cli.cliApePat}</td>
                                            <td>${cli.cliApeMat}</td>
                                            <td>${cli.cliSex}</td>
                                            <td>${cli.cliEmail}</td>
                                            <td>${cli.estRegCod}</td>

                                            <td class="text-right">
                                                <a href="#" data-toggle="modal" data-target="#activateModal" 
                                                   data-clicod="${cli.cliCod}" data-clinom="${cli.cliNom}" data-cliapepat="${cli.cliApePat}" 
                                                   data-cliapemat="${cli.cliApeMat}">
                                                    <i class="fa fa-check fa-2x" style="color: green;"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#deleteModal" 
                                                   data-clicod="${cli.cliCod}" data-clinom="${cli.cliNom}" data-cliapepat="${cli.cliApePat}" 
                                                   data-cliapemat="${cli.cliApeMat}">
                                                    <i class="fa fa-trash-o fa-2x" style="color: red;"></i>
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>  
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>                                        
            </div>
        </div>

        <div id="activateModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Activar Cliente</h4>
                    </div>
                    <form id="activateForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="activate">
                            <input type="hidden" name="cliCod" id="activateCliCod">
                            <p> ¿Desea habilitar el Cliente: <span id="activateCliNomCom"></span> ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="deleteModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Cliente</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" name="cliCod" id="deleteCliCod">
                            <p> ¿Desea Eliminar el Cliente: <span id="deleteCliNomCom"></span> ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <script>
            var updateModal = $("#modificarModal");
            var disableModal = $("#disableModal");
            var activateModal = $("#activateModal");
            var deleteModal = $("#deleteModal");

            var updateCliCod = $("#updateCliCod");
            var updateCliNom = $("#updateCliNom");
            var updateCliApePat = $("#updateCliApePat");
            var updateCliApeMat = $("#updateCliApeMat");
            var updateCliSex = $("#updateCliSex");
            var updateCliDir = $("#updateCliDir");
            var updateCliTelFij = $("#updateCliTelFij");
            var updateCliTelCel = $("#updateCliTelCel");
            var updateCliEmail = $("#updateCliEmail");
            var updateEstCivCod = $("#updateEstCivCod");
            var updateNamEstCivCod = $("#updateNamEstCivCod");

            var disableCliCod = $("#disableCliCod");
            var disableCliNomCom = $("#disableCliNomCom");

            var activateCliCod = $("#activateCliCod");
            var activateCliNomCom = $("#activateCliNomCom");

            var deleteCliCod = $("#deleteCliCod");
            var deleteCliNomCom = $("#deleteCliNomCom");


            updateModal.on('show.bs.modal', function (e) {
                updateNamEstCivCod.val($(e.relatedTarget).data('estcivcod') + " - " + $(e.relatedTarget).data('estcivdet'));
                updateCliCod.val($(e.relatedTarget).data('clicod'));
                updateCliNom.val($(e.relatedTarget).data('clinom'));
                updateCliApePat.val($(e.relatedTarget).data('cliapepat'));
                updateCliApeMat.val($(e.relatedTarget).data('cliapemat'));
                updateCliSex.val($(e.relatedTarget).data('clisex'));
                updateCliDir.val($(e.relatedTarget).data('clidir'));
                updateCliTelFij.val($(e.relatedTarget).data('clitelfij'));
                updateCliTelCel.val($(e.relatedTarget).data('clitelcel'));
                updateCliEmail.val($(e.relatedTarget).data('cliemail'));
                updateEstCivCod.val($(e.relatedTarget).data('estcivcod'));
            });

            disableModal.on('show.bs.modal', function (e) {
                disableCliCod.val($(e.relatedTarget).data('clicod'));
                disableCliNomCom.text($(e.relatedTarget).data('cliapepat') + " " + $(e.relatedTarget).data('cliApeMat') + ", " + $(e.relatedTarget).data('clinom'));
            });

            activateModal.on('show.bs.modal', function (e) {
                activateCliCod.val($(e.relatedTarget).data('clicod'));
                activateCliNomCom.text($(e.relatedTarget).data('cliapepat') + " " + $(e.relatedTarget).data('cliApeMat') + ", " + $(e.relatedTarget).data('clinom'));
            });

            deleteModal.on('show.bs.modal', function (e) {
                deleteCliCod.val($(e.relatedTarget).data('clicod'));
                deleteCliNomCom.text($(e.relatedTarget).data('cliapepat') + " " + $(e.relatedTarget).data('cliApeMat') + ", " + $(e.relatedTarget).data('clinom'));
            });

            $("#createForm").validate({
                rules: {
                    cliCod: {
                        required: true,
                        number: true
                    },
                    cliSex: {
                        required: true
                    },
                    estCivCod: {
                        required: true,
                        number: true
                    }
                },
                messages: {
                    cliCod: {
                        required: "El Codigo de Cliente es Requerido",
                        number: "El Codigo de Cliente debe ser Numerico"
                    },
                    cliSex: {
                        required: "El Sexo es Requerido"
                    },
                    estCivCod: {
                        required: "El Estado Civil es Requerido",
                        number: "Estado Civil Incorrecto"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            $("#updateForm").validate({
                rules: {
                    cliCod: {
                        required: true,
                        number: true
                    },
                    cliSex: {
                        required: true
                    },
                    estCivCod: {
                        required: true,
                        number: true
                    }
                },
                messages: {
                    cliCod: {
                        required: "El Codigo de Cliente es Requerido",
                        number: "El Codigo de Cliente debe ser Numerico"
                    },
                    cliSex: {
                        required: "El Sexo es Requerido"
                    },
                    estCivCod: {
                        required: "El Estado Civil es Requerido",
                        number: "Estado Civil Incorrecto"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

        </script>
    </jsp:attribute>
</minierptemplate:template>
