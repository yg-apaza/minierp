<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Usuarios</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">Usuarios
                <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
                <a href="#" class="btn btn-info btn-circle" data-toggle="modal" data-target="#estadosModal"><i class="fa fa-eye"></i></a>
            </h1>     
            <div class="row">
                <div class="col-sm-4">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=pdf&&report=puntodeventa" class="btn btn-outline btn-danger btn-lg btn-block">
                        <i class="fa fa-file-pdf-o"></i>
                        Reporte [PDF]
                    </a>   
                </div>
                <div class="col-sm-4">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=xls&&report=puntodeventa" class="btn btn-outline btn-success btn-lg btn-block">
                        <i class="fa fa-file-excel-o"></i>
                        Reporte [XLS]
                    </a>   
                </div>
                <div class="col-sm-4">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=doc&&report=puntodeventa" class="btn btn-outline btn-primary btn-lg btn-block">
                        <i class="fa fa-file-word-o"></i>
                        Reporte [DOC]
                    </a>
                </div>                
            </div>    
            <br>
            <div class="col-md-12">


                <table class="table table-striped table-hover ">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Nombre y Apellidos</th>
                            <th>Fecha Nacimiento</th>
                            <th>Estado Civil</th>
                            <th>Género</th>
                            <th>Login</th>
                            <th>Tipo Usuario</th>
                            <th>Sucursal</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="u" items="${usuarios}">
                            <tr>
                                <td>${u.usuCod}</td>
                                <td>${u.usuNom} ${u.usuApePat} ${u.usuApeMat}</td>
                                <td><fmt:formatDate value="${u.usuFecNac}" pattern="dd/MM/yyyy"/></td>
                                <td>${u.taGzzEstadoCivil.estCivDet}</td>
                                <td>${u.usuSex}</td>
                                <td>${u.usuLog}</td>
                                <td>${u.taGzzTipoUsuario.tipUsuDet}</td>
                                <td>${u.enP1mSucursal.sucDes}</td>

                                <td class="text-right">
                                    <a href="#" data-toggle="modal" data-target="#modificarModal" 
                                       data-usucod="${u.usuCod}" data-usunom="${u.usuNom}" data-usuapepat="${u.usuApePat}" 
                                       data-usuapemat="${u.usuApeMat}" data-usulog="${u.usuLog}" data-tipusucod="${u.taGzzTipoUsuario.tipUsuCod}" 
                                       data-succod="${u.enP1mSucursal.sucCod}" data-usufecnac="${u.usuFecNac}"
                                       data-estcivcod="${u.taGzzEstadoCivil.estCivCod}" data-ususex="${u.usuSex}">
                                       <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                    </a>
                                    <a href="#" data-toggle="modal" data-target="#disableModal" 
                                       data-usucod="${u.usuCod}" data-usunom="${u.usuNom}" data-usuapepat="${u.usuApePat}" 
                                       data-usuapemat="${u.usuApeMat}">
                                        <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar Usuario</h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label class="control-label">Código Usuario</label>
                                        <input type="text" class="form-control" placeholder="Codigo Usuario" name="usuCod">
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Nombre Usuario</label>
                                        <input type="text" class="form-control" placeholder="Nombre Usuario" name="usuNom">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Apellido Paterno Usuario</label>
                                        <input type="text" class="form-control" placeholder="Apellido Paterno Usuario" name="usuApePat">
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Apellido Materno Usuario</label>
                                        <input type="text" class="form-control" placeholder="Apellido Materno Usuario" name="usuApeMat">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Login</label>
                                        <input type="text" class="form-control" placeholder="Login" name="usuLog">
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Password</label>
                                        <input type="text" class="form-control" placeholder="Password" name="usuPas">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4"> 
                                        <label class="control-label">Tipo Usuario</label>
                                        <select class="form-control" name="tipUsuCod">
                                            <c:forEach var="u" items="${tipos}">
                                                <option value="${u.tipUsuCod}">${u.tipUsuCod} - ${u.tipUsuDet}</option>
                                            </c:forEach>
                                        </select>

                                    </div>
                                    <div class="col-sm-4">                               
                                        <label class="control-label">Sucursal</label>
                                        <select class="form-control" name="sucCod">
                                            <c:forEach var="u" items="${sucursales}">
                                                <option value="${u.sucCod}">${u.sucCod} - ${u.sucDes}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4"> 
                                        <label class="control-label">Fecha Nacimiento</label>
                                        <div class="input-group" >
                                            <input type="date" class="form-control" name="usuFecNac">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>                                            
                                        </div>      
                                    </div>

                                    <div class="col-sm-4">                               
                                        <label class="control-label">Estado Civil</label>
                                        <select class="form-control" name="estCivCod">
                                            <c:forEach var="u" items="${estados}">
                                                <option value="${u.estCivCod}">${u.estCivCod} - ${u.estCivDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-4">                               
                                        <label class="control-label">Sexo</label>
                                        <select class="form-control" name="usuSex">
                                            <option value="N">No especifica</option>
                                            <option value="M">Masculino</option>
                                            <option value="F">Femenino</option>                                            
                                        </select>
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
                        <h4 class="modal-title">Modificar Usuario</h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <div class=form-horizontal>
                                <input type="hidden" name="accion" value="update">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label class="control-label">Código Usuario</label>
                                        <input class="form-control" name="usuCod" id="updateUsuCod" readonly>
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Nombre Usuario</label>
                                        <input type="text" class="form-control" placeholder="Nombre Usuario" name="usuNom" id="updateUsuNom">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Apellido Paterno Usuario</label>
                                        <input type="text" class="form-control" placeholder="Apellido Paterno Usuario" name="usuApePat" id="updateUsuApePat">
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Apellido Materno Usuario</label>
                                        <input type="text" class="form-control" placeholder="Apellido Materno Usuario" name="usuApeMat" id="updateUsuApeMat">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Login</label>
                                        <input type="text" class="form-control" placeholder="Login" name="usuLog" id="updateUsuLog">
                                    </div>
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Tipo Usuario</label>
                                        <select class="form-control" name="tipUsuCod" id="updateTipUsuCod">
                                            <c:forEach var="u" items="${tipos}">
                                                <option value="${u.tipUsuCod}">${u.tipUsuCod} - ${u.tipUsuDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">                               
                                        <label class="control-label" >Sucursal</label>
                                        <select class="form-control" name="sucCod" id="updateSucCod">
                                            <c:forEach var="u" items="${sucursales}">
                                                <option value="${u.sucCod}">${u.sucCod} - ${u.sucDes}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-6"> 
                                        <label class="control-label" >Fecha Nacimiento</label>
                                        <div class="input-group">                                            
                                            <input type="date" class="form-control" name="usuFecNac" id="updateUsuFecNac" <fmt:formatDate value="${updateFecNacUsu}" pattern="dd/MM/yyyy"/>>
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <td><fmt:formatDate value="${u.usuFecNac}" pattern="dd/MM/yyyy"/></td>
                                        </div>  
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">                               
                                        <label class="control-label" >Estado Civil</label>
                                        <select class="form-control" name="estCivCod" id="updateEstCivCod">
                                            <c:forEach var="u" items="${estados}">
                                                <option value="${u.estCivCod}">${u.estCivCod} - ${u.estCivDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label" >Sexo</label>
                                        <select class="form-control" name="usuSex" id="updateUsuSex">
                                            <option value="N">No especifica</option>
                                            <option value="M">Masculino</option>
                                            <option value="F">Femenino</option>                                            
                                        </select>
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
                        <h4 class="modal-title">Inhabilitar Usuario</h4>
                    </div>
                    <form id="disableForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="disable">
                            <input type="hidden" name="usuCod" id="disableUsuCod">
                            <p> ¿Desea inhabilitar el Usuario <span id="disableUsuNomCom"></span> ?</p>
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
                <div class="modal-content" >
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Reactivar o Eliminar Usuario</h4>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table class="table table-hover">                                                                
                                <thead>
                                    <tr>
                                        <th>Codigo Usuario</th>
                                        <th>Nombre y Apellidos</th>
                                        <th>Fecha Nacimiento</th>
                                        <th>Estado Civil</th>
                                        <th>Sexo</th>
                                        <th>Login</th>
                                        <th>Tipo Usuario</th>
                                        <th>Sucursal</th>                                                                                
                                        <th class="text-right">Acciones </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="u" items="${inactivos}">
                                        <tr>
                                            <td>${u.usuCod}</td>
                                            <td>${u.usuNom} ${u.usuApePat} ${u.usuApeMat}</td>
                                            <td><fmt:formatDate value="${u.usuFecNac}" pattern="dd/MM/yyyy"/></td>
                                            <td>${u.taGzzEstadoCivil.estCivDet}</td>
                                            <td>${u.usuSex}</td>
                                            <td>${u.usuLog}</td>
                                            <td>${u.taGzzTipoUsuario.tipUsuDet}</td>
                                            <td>${u.enP1mSucursal.sucDes}</td>

                                            <td class="text-right">
                                                <a href="#" data-toggle="modal" data-target="#activateModal" 
                                                   data-usucod="${u.usuCod}" data-usunom="${u.usuNom}" data-usuapepat="${u.usuApePat}" 
                                                   data-usuapemat="${u.usuApeMat}">
                                                    <i class="fa fa-check fa-2x" style="color: green;"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#deleteModal"  
                                                   data-usucod="${u.usuCod}" data-usunom="${u.usuNom}" data-usuapepat="${u.usuApePat}" 
                                                   data-usuapemat="${u.usuApeMat}">
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
                        <h4 class="modal-title">Activar Usuario</h4>
                    </div>
                    <form id="activateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="activate">
                            <input type="hidden" name="usuCod" id="activateUsuCod">
                            <p> ¿Desea Habilitar el Usuario <span id="activateUsuNomCom"></span> ?</p>
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
                        <h4 class="modal-title">Eliminar Usuario</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" name="usuCod" id="deleteteUsuCod">
                            <p> ¿Desea Habilitar el Usuario <span id="deleteUsuNomCom"></span> ?</p>
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

            var updateUsuCod = $("#updateUsuCod");
            var updateUsuNom = $("#updateUsuNom");
            var updateUsuApePat = $("#updateUsuApePat");
            var updateUsuApeMat = $("#updateUsuApeMat");
            var updateUsuLog = $("#updateUsuLog");
            var updateTipUsuCod = $("#updateTipUsuCod");
            var updateSucCod = $("#updateSucCod");
            var updateUsuFecNac = $("#updateUsuFecNac");
            var updateEstCivCod = $("#updateEstCivCod");
            var updateUsuSex = $("#updateUsuSex");

            var disableUsuCod = $("#disableUsuCod");
            var disableUsuNomCom = $("#disableUsuNomCom");

            var activateUsuCod = $("#activateUsuCod");
            var activateUsuNomCom = $("#activateUsuNomCom");
            
            var deleteUsuCod = $("#deleteUsuCod");
            var deleteUsuNomCom = $("#deleteUsuNomCom");
            
            updateModal.on('show.bs.modal', function (e) {
                updateUsuCod.val($(e.relatedTarget).data('usucod'));
                updateUsuNom.val($(e.relatedTarget).data('usunom'));
                updateUsuApePat.val($(e.relatedTarget).data('usuapepat'));
                updateUsuApeMat.val($(e.relatedTarget).data('usuapemat'));
                updateUsuLog.val($(e.relatedTarget).data('usulog'));
                updateTipUsuCod.val($(e.relatedTarget).data('tipusucod'));
                updateSucCod.val($(e.relatedTarget).data('succod'));
                updateUsuFecNac.val($(e.relatedTarget).data('usufecnac'));
                updateEstCivCod.val($(e.relatedTarget).data('estcivcod'));
                updateUsuSex.val($(e.relatedTarget).data('ususex'));

            });
            disableModal.on('show.bs.modal', function (e) {
                disableUsuCod.val($(e.relatedTarget).data('usucod'));
                disableUsuNomCom.text($(e.relatedTarget).data('usuapepat') + " " + $(e.relatedTarget).data('usuapemat') + ", " + $(e.relatedTarget).data('usunom'));
            });

            activateModal.on('show.bs.modal', function (e) {
                activateUsuCod.val($(e.relatedTarget).data('usucod'));
                activateUsuNomCom.text($(e.relatedTarget).data('usuapepat') + " " + $(e.relatedTarget).data('usuapemat') + ", " + $(e.relatedTarget).data('usunom'));
            });

            deleteModal.on('show.bs.modal', function (e) {
                deleteUsuCod.val($(e.relatedTarget).data('usucod'));
                deleteUsuNomCom.text($(e.relatedTarget).data('usuapepat') + " " + $(e.relatedTarget).data('usuapemat') + ", " + $(e.relatedTarget).data('usunom'));
            });
            
            $("#createForm").validate({
                rules: {
                    usuCod: {
                        required: true,
                        number: true
                    }
                },
                messages: {
                    usuCod: {
                        required: "El Codigo de Usuario es Requerido",
                        number: "El Codigo de Usuario debe ser Numerico"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

        </script>
    </jsp:attribute>
</minierptemplate:template>
