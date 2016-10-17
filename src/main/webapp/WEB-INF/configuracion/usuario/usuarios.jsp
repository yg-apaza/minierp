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
            <br>
            <br>
            <div class="row">
                <div class="col-sm-3">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=pdf&&report=puntodeventa" class="btn btn-outline btn-danger btn-lg btn-block">
                       <i class="fa fa-file-pdf-o"></i>
                       Reporte [PDF]
                   </a>   
                </div>
                <div class="col-sm-3">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=xls&&report=puntodeventa" class="btn btn-outline btn-success btn-lg btn-block">
                       <i class="fa fa-file-excel-o"></i>
                       Reporte [XLS]
                   </a>   
                </div>
                <div class="col-sm-3">
                    <a href="${pageContext.request.contextPath}/secured/reporte?type=doc&&report=puntodeventa" class="btn btn-outline btn-primary btn-lg btn-block">
                        <i class="fa fa-file-word-o"></i>
                        Reporte [DOC]
                    </a>
                </div>                
                <div class="col-sm-3">
                    <a href="${pageContext.request.contextPath}/secured/configuracion" class="btn btn-outline btn-default btn-lg btn-block">
                        <i class="fa fa-arrow-left"></i>
                        Regresar
                    </a>
                </div>  
            </div>
                        <!--
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/secured/reporte?type=pdf&&report=puntodeventa" class="btn btn-outline btn-danger btn-lg btn-block">
                    <i class="fa fa-file-pdf-o"></i>
                    Reporte [PDF]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/reporte?type=xls&&report=puntodeventa" class="btn btn-outline btn-success btn-lg btn-block">
                    <i class="fa fa-file-excel-o"></i>
                    Reporte [XLS]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/reporte?type=doc&&report=puntodeventa" class="btn btn-outline btn-primary btn-lg btn-block">
                    <i class="fa fa-file-word-o"></i>
                    Reporte [DOC]
                </a>
                <br>
                <a href="${pageContext.request.contextPath}/secured/configuracion" class="btn btn-outline btn-default btn-lg btn-block">
                    <i class="fa fa-arrow-left"></i>
                    Regresar
                </a>
                <br>
            </div>
                        -->
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
                                    <a href="#" data-toggle="modal" data-target="#modificarModal" data-codusu="${u.usuCod}" data-nomusu="${u.usuNom}" 
                                            data-apepatusu="${u.usuApePat}" data-apematusu="${u.usuApeMat}" data-logusu="${u.usuLog}" 
                                           data-tipusu="${u.taGzzTipoUsuario.tipUsuCod}" data-sucusu="${u.enP1mSucursal.sucCod}" data-fecnacusu="${u.usuFecNac}"
                                            data-estcivusu="${u.taGzzEstadoCivil.estCivCod}" data-sexusu="${u.usuSex}">
                                        <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                    </a>
                                    <a href="#" data-toggle="modal" data-target="#disableModal" data-codusu="${u.usuCod}" data-nomusu="${u.usuNom}" 
                                            data-apepatusu="${u.usuApePat}" data-apematusu="${u.usuApeMat}">
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
                                        <input type="text" class="form-control" placeholder="Codigo Usuario" name="codUsu">
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Nombre Usuario</label>
                                        <input type="text" class="form-control" placeholder="Nombre Usuario" name="nomUsu">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Apellido Paterno Usuario</label>
                                        <input type="text" class="form-control" placeholder="Apellido Paterno Usuario" name="apePatUsu">
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Apellido Materno Usuario</label>
                                        <input type="text" class="form-control" placeholder="Apellido Materno Usuario" name="apeMatUsu">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Login</label>
                                        <input type="text" class="form-control" placeholder="Login" name="login">
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Password</label>
                                        <input type="text" class="form-control" placeholder="Password" name="pass">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4"> 
                                        <label class="control-label">Tipo Usuario</label>
                                        <select class="form-control" name="tipCod">
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
                                            <input type="date" class="form-control" name="fecNacUsu">
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
                                        <select class="form-control" name="sex">
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
            <div class="modal-dialog modal-lg">
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
                                        <input class="form-control" name="codUsuUpdate" id="updateCodUsu" readonly>
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Nombre Usuario</label>
                                        <input type="text" class="form-control" placeholder="Nombre Usuario" name="nomUsuUpdate" id="updateNomUsu">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Apellido Paterno Usuario</label>
                                        <input type="text" class="form-control" placeholder="Apellido Paterno Usuario" name="apePatUsuUpdate" id="updateApePatUsu">
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Apellido Materno Usuario</label>
                                        <input type="text" class="form-control" placeholder="Apellido Materno Usuario" name="apeMatUsuUpdate" id="updateApeMatUsu">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Login</label>
                                        <input type="text" class="form-control" placeholder="Login" name="loginUpdate" id="updateLogUsu">
                                    </div>
                                    <!--
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Password</label>
                                        <input type="text" class="form-control" placeholder="Password" name="passUpdate" id="updatePasUsu">
                                    </div>
                                    -->
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4"> 
                                        <label class="control-label">Tipo Usuario</label>
                                        <select class="form-control" name="tipCodUpdate" id="updateTipUsu">
                                            <c:forEach var="u" items="${tipos}">
                                                <option value="${u.tipUsuCod}">${u.tipUsuCod} - ${u.tipUsuDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-4">                               
                                        <label class="control-label" >Sucursal</label>
                                        <select class="form-control" name="sucCodUpdate" id="updateSucUsu">
                                            <c:forEach var="u" items="${sucursales}">
                                                <option value="${u.sucCod}">${u.sucCod} - ${u.sucDes}</option>
                                        </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4"> 
                                        <label class="control-label" >Fecha Nacimiento</label>
                                        <div class="input-group">                                            
                                            <input type="date" class="form-control" name="fecNacUsuUpdate" id="updateFecNacUsu" <fmt:formatDate value="${updateFecNacUsu}" pattern="dd/MM/yyyy"/>>
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <td><fmt:formatDate value="${u.usuFecNac}" pattern="dd/MM/yyyy"/></td>
                                        </div>  
                                    </div>
                                    <div class="col-sm-4">                               
                                        <label class="control-label" >Estado Civil</label>
                                        <select class="form-control" name="estCivCodUpdate" id="updateEstCivUsu">
                                            <c:forEach var="u" items="${estados}">
                                                <option value="${u.estCivCod}">${u.estCivCod} - ${u.estCivDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-4">                               
                                        <label class="control-label" >Sexo</label>
                                        <select class="form-control" name="sexUpdate" id="updateSexUsu">
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
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Inhabilitar Usuario</h4>
                    </div>
                    <form id="disableForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <div class="form-horizontal">
                                <input type="hidden" name="accion" value="disable">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label class="control-label">Código Usuario</label>
                                        <input type="text" class="form-control" name="codUsuDisable" id="disableCodUsu" readonly>
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Nombre Usuario</label>
                                        <input type="text" class="form-control" id="disableNomUsu" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Apellido Paterno Usuario</label>
                                        <input type="text" class="form-control" id="disableApePatUsu" readonly>
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Apellido Materno Usuario</label>
                                        <input type="text" class="form-control" id="disableApeMatUsu" readonly>
                                    </div>
                                </div>    
                            </div>                            
                            <p> ¿Desea inhabilitar el usuario <span id="disable"></span> ?</p>
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
                                                <a href="#" data-toggle="modal" data-target="#activateModal" data-codusu="${u.usuCod}" data-nomusu="${u.usuNom}" 
                                                data-apepatusu="${u.usuApePat}" data-apematusu="${u.usuApeMat}">
                                                    <i class="fa fa-check fa-2x" style="color: green;"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#deleteModal" data-codusu="${u.usuCod}" data-nomusu="${u.usuNom}" 
                                                data-apepatusu="${u.usuApePat}" data-apematusu="${u.usuApeMat}">
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
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Activar Usuario</h4>
                    </div>
                    <form id="activateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <div class="form-horizontal">
                                <input type="hidden" name="accion" value="activate">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label class="control-label">Código Usuario</label>
                                        <input type="text" class="form-control" name="codUsuActivate" id="activateCodUsu" readonly>
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Nombre Usuario</label>
                                        <input type="text" class="form-control" id="activateNomUsu" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Apellido Paterno Usuario</label>
                                        <input type="text" class="form-control" id="activateApePatUsu" readonly>
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Apellido Materno Usuario</label>
                                        <input type="text" class="form-control" id="activateApeMatUsu" readonly>
                                    </div>
                                </div>    
                            </div>    
                            <p> ¿Desea habilitar el Usuario: <span id="activateUser"></span> ?</p>
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
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Usuario</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delete">
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="control-label">Código Usuario</label>
                                    <input type="text" class="form-control" name="codUsuDelete" id="deleteCodUsu" readonly>
                                </div>
                                <div class="col-sm-6">                               
                                    <label class="control-label">Nombre Usuario</label>
                                    <input type="text" class="form-control" id="deleteNomUsu" readonly>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-6"> 
                                    <label class="control-label">Apellido Paterno Usuario</label>
                                    <input type="text" class="form-control" id="deleteApePatUsu" readonly>
                                </div>
                                <div class="col-sm-6">                               
                                    <label class="control-label">Apellido Materno Usuario</label>
                                    <input type="text" class="form-control" id="deleteApeMatUsu" readonly>
                                </div>
                            </div>
                            <p> ¿Desea Eliminar el Usuario: <span id="deleteUser"></span> ?</p>
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
            
            

            var updateCodUsu = $("#updateCodUsu");
            var updateNomUsu=$("#updateNomUsu");
            var updateApePatUsu=$("#updateApePatUsu");
            var updateApeMatUsu=$("#updateApeMatUsu");
            var updateLogUsu=$("#updateLogUsu");
            //var updatePasUsu=$("#updatePasUsu");
            var updateTipUsu=$("#updateTipUsu");
            var updateSucUsu=$("#updateSucUsu");
            var updateFecNacUsu=$("#updateFecNacUsu");
            var updateEstCivUsu=$("#updateEstCivUsu");
            var updateSexUsu=$("#updateSexUsu");
            
            var disableCodUsu=$("#disableCodUsu");
            var disableNomUsu=$("#disableNomUsu");
            var disableApePatUsu=$("#disableApePatUsu");
            var disableApeMatUsu=$("#disableApeMatUsu");
            

            var activateCodUsu=$("#activateCodUsu");
            var activateNomUsu=$("#activateNomUsu");
            var activateApePatUsu=$("#activateApePatUsu");
            var activateApeMatUsu=$("#activateApeMatUsu");
            
            
            var deleteCodUsu=$("#deleteCodUsu");
            var deleteNomUsu=$("#deleteNomUsu");
            var deleteApePatUsu=$("#deleteApePatUsu");
            var deleteApeMatUsu=$("#deleteApeMatUsu");
            
            
            
            updateModal.on('show.bs.modal', function (e) {                                   
                updateCodUsu.val($(e.relatedTarget).data('codusu'));
                updateNomUsu.val($(e.relatedTarget).data('nomusu'));
                updateApePatUsu.val($(e.relatedTarget).data('apepatusu'));
                updateApeMatUsu.val($(e.relatedTarget).data('apematusu'));
                updateLogUsu.val($(e.relatedTarget).data('logusu'));
                //updatePasUsu.val($(e.relatedTarget).data('pasusu'));
                updateTipUsu.val($(e.relatedTarget).data('tipusu'));
                updateSucUsu.val($(e.relatedTarget).data('sucusu'));
                updateFecNacUsu.val($(e.relatedTarget).data('fecnacusu'));
                updateEstCivUsu.val($(e.relatedTarget).data('estcivusu'));
                updateSexUsu.val($(e.relatedTarget).data('sexusu'));
                                
            });
            disableModal.on('show.bs.modal', function (e) {
                disableCodUsu.val($(e.relatedTarget).data('codusu'));
                disableNomUsu.val($(e.relatedTarget).data('nomusu'));
                disableApePatUsu.val($(e.relatedTarget).data('apepatusu'));
                disableApeMatUsu.val($(e.relatedTarget).data('apematusu'));
            });

            activateModal.on('show.bs.modal', function (e) {
                activateCodUsu.val($(e.relatedTarget).data('codusu'));
                activateNomUsu.val($(e.relatedTarget).data('nomusu'));
                activateApePatUsu.val($(e.relatedTarget).data('apepatusu'));
                activateApeMatUsu.val($(e.relatedTarget).data('apematusu'));
            });

            deleteModal.on('show.bs.modal', function (e) {
                deleteCodUsu.val($(e.relatedTarget).data('codusu'));
                deleteNomUsu.val($(e.relatedTarget).data('nomusu'));
                deleteApePatUsu.val($(e.relatedTarget).data('apepatusu'));
                deleteApeMatUsu.val($(e.relatedTarget).data('apematusu'));
            });
                        
        </script>
    </jsp:attribute>
</minierptemplate:template>
