<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Usuarios</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> Usuarios </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="col-xs-12 col-md-12 text-center">
                        <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#agregarModal"> Agregar Nuevo <i class="fa fa-plus"></i></button>                
                        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#estadosModal"> Ver Inhabilitados <i class="fa fa-eye"></i></button>
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#viewDocumentoModal"> Gestionar Documentos Asociados <i class="fa fa-file-text"></i></button>
                        <button type="button" class="btn btn-danger" data-toggle="modal" data-target="#viewClienteModal"> Gestionar Clientes Asociados <i class="fa fa-child"></i></button>
                        </cc:if>
                    </div>
                    <!--
                    <div class="col-xs-12 col-md-3">
                        <div class="form-group input-group" >
                            <span class="input-group-addon">Reportes</span>
                            <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=clientes&&jdbc=false&&key=null&&value=null" class="btn btn-danger">
                                <i class="fa fa-file-pdf-o"></i>
                            </a> 
                            <a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&report=clientes&&jdbc=false&&key=null&&value=null" class="btn btn-success">
                                <i class="fa fa-file-excel-o"></i>
                            </a> 
                            <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=clientes&&jdbc=false&&key=null&&value=null" class="btn  btn-primary">
                                <i class="fa fa-file-word-o"></i>
                            </a>
                        </div>
                    </div>  -->  
                </div>
            </div><br>
                                
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover" id="tablaUsuarios">
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Documentos</th>
                                <th>Nombres y Apellidos</th>
                                <th>Tipo</th>
                                <th>Catálogo de Clientes</th>
                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <th>Acciones</th>
                                </cc:if>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="u" items="${usuarios}">
                                <tr>
                                    <td>${u.usuCod}</td>
                                    <td>
                                        <c:forEach var="docs" items="${u.enP1mDocumentoUsuarios}">
                                            ${docs.taGzzTipoDocUsuario.tipDocUsuDet} - ${docs.docUsuNum} <br>
                                        </c:forEach>
                                    </td>
                                    <td>${u.usuNom} ${u.usuApePat} ${u.usuApeMat}</td>
                                    <td>${u.taGzzTipoUsuario.tipUsuDet}</td>
                                    <td>
                                        <c:forEach var="cli" items="${u.enP1mCarteraClienteses}">
                                           ${cli.enP1mCliente.cliCod} - ${cli.enP1mCliente.cliRazSoc}<br>
                                        </c:forEach>
                                    </td>
                                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <td>
                                        <a href="#" data-toggle="modal" data-target="#modificarModal" 
                                           title="Modificar Usuario" 
                                           data-usucod="${u.usuCod}" 
                                           data-usunom="${u.usuNom}" 
                                           data-usuapepat="${u.usuApePat}" 
                                           data-usuapemat="${u.usuApeMat}" 
                                           data-tipusucod="${u.taGzzTipoUsuario.tipUsuCod}" 
                                           data-succod="${u.enP1mSucursal.sucCod}" 
                                           data-usufecnac="${u.usuFecNac}"
                                           data-estcivcod="${u.taGzzEstadoCivil.estCivCod}" 
                                           data-ususex="${u.usuSex}"
                                           data-usulog="${u.usuLog}">
                                           <i class="fa fa-pencil-square-o fa-lg" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#disableModal" 
                                           title="InHabilitar Usuario"
                                           data-usucod="${u.usuCod}" 
                                           data-usunom="${u.usuNom}" 
                                           data-usuapepat="${u.usuApePat}" 
                                           data-usuapemat="${u.usuApeMat}">
                                            <i class="fa fa-trash-o fa-lg" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#documentoModal" 
                                           title="Agregar Documentos al Usuario"
                                           data-usucod="${u.usuCod}" 
                                           data-usunom="${u.usuNom}" 
                                           data-usuapepat="${u.usuApePat}" 
                                           data-usuapemat="${u.usuApeMat}">
                                            <i class="fa fa-file-text fa-lg" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#clienteModal" 
                                           title="Agregar Clientes al Usuario"
                                           data-usucod="${u.usuCod}" 
                                           data-usunom="${u.usuNom}" 
                                           data-usuapepat="${u.usuApePat}" 
                                           data-usuapemat="${u.usuApeMat}">
                                            <i class="fa fa-child fa-lg" style="color: black;"></i>
                                        </a>
                                    </td>
                                    </cc:if>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content" style="overflow-y: auto">
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
                                        <input type="password" class="form-control" placeholder="Password" name="usuPas">
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
                <div class="modal-content" style="overflow-y: auto">
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
                                            <fmt:formatDate value="${u.usuFecNac}" pattern="dd/MM/yyyy"/>
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
                <div class="modal-content" style="overflow-y: auto">
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
                            <table class="table table-bordered table-striped table-hover" id="tablaUsuariosInactivos">                                                                
                                <thead>
                                    <tr>
                                        <th>Codigo Usuario</th>
                                        <th>Nombre y Apellidos</th>
                                        <th>Fecha Nacimiento</th>
                                        <th>Estado Civil</th>
                                        <th>Login</th>
                                        <th>Tipo Usuario</th>
                                        <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                        <th>Acciones</th>
                                        </cc:if>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="u" items="${inactivos}">
                                        <tr>
                                            <td>${u.usuCod}</td>
                                            <td>${u.usuNom} ${u.usuApePat} ${u.usuApeMat}</td>
                                            <td><fmt:formatDate value="${u.usuFecNac}" pattern="dd/MM/yyyy"/></td>
                                            <td>${u.taGzzEstadoCivil.estCivDet}</td>
                                            <td>${u.usuLog}</td>
                                            <td>${u.taGzzTipoUsuario.tipUsuDet}</td>
                                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                <td>
                                                    <a href="#" data-toggle="modal" data-target="#activateModal" 
                                                       title="Re-Activar Usuario"
                                                       data-usucod="${u.usuCod}" 
                                                       data-usunom="${u.usuNom}" 
                                                       data-usuapepat="${u.usuApePat}" 
                                                       data-usuapemat="${u.usuApeMat}">
                                                        <i class="fa fa-check fa-lg" style="color: green;"></i>
                                                    </a>
                                                    <a href="#" data-toggle="modal" data-target="#deleteModal" 
                                                       title="Eliminar Usuario"
                                                       data-usucod="${u.usuCod}" 
                                                       data-usunom="${u.usuNom}" 
                                                       data-usuapepat="${u.usuApePat}" 
                                                       data-usuapemat="${u.usuApeMat}">
                                                        <i class="fa fa-trash-o fa-lg" style="color: red;"></i>
                                                    </a>
                                                </td>
                                            </cc:if>
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
                <div class="modal-content" style="overflow-y: auto">
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
                <div class="modal-content" style="overflow-y: auto">
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
        
        <div id="clienteModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar Cliente</h4>
                    </div>
                    <form id="clienteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="cliente">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Usuario:</label>
                                        <input type="hidden" name="usuCod" id="clienteUsuCod">
                                        <input type="text" class="form-control" id="clienteUsuCodShow" readonly>
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Catalogo de Clientes:</label>
                                        <select class="form-control" name="cliCod">
                                            <c:forEach var="cli" items="${clientes}">
                                                <option value="${cli.cliCod}">${cli.cliCod} - ${cli.cliRazSoc}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label>Descripcion:</label>
                                        <input type="text" class="form-control" placeholder="Descripcion" name="usuCliDes">
                                    </div>
                                </div> 
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Agregar Cliente</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div>                
                        
        <div id="documentoModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar Documento</h4>
                    </div>
                    <form id="documentoForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="documento">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Usuario:</label>
                                        <input type="hidden" name="usuCod" id="documentoUsuCod">
                                        <input type="text" class="form-control" id="documentoUsuCodShow" readonly>
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Documentos Disponibles:</label>
                                        <select class="form-control" name="tipDocUsuCod">
                                            <c:forEach var="docs" items="${documentos}">
                                                <option value="${docs.tipDocUsuCod}">${docs.tipDocUsuCod} - ${docs.tipDocUsuDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label>Numero de Documento:</label>
                                        <input type="text" class="form-control" placeholder="Numero del documento" name="docUsuNum">
                                    </div>
                                </div> 
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Agregar Documento</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div>                
        
        <div id="viewDocumentoModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Gestion Documento</h4>
                    </div>
                    <form id="viewDocumentoForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped table-hover" id="tablaViewDocumento">
                                                <thead>
                                                    <tr>
                                                        <th>Usuario</th>
                                                        <th>Tipo de Documento</th>
                                                        <th>Numero del Documento</th>
                                                        <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                            <th>Acciones</th>
                                                        </cc:if>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="docUsu" items="${documentosUsuarios}">
                                                        <tr>
                                                            <td>${docUsu.enP1mUsuario.usuCod} - ${docUsu.enP1mUsuario.usuApePat} ${docUsu.enP1mUsuario.usuApeMat}, ${docUsu.enP1mUsuario.usuNom}</td>
                                                            <td>${docUsu.taGzzTipoDocUsuario.tipDocUsuCod} - ${docUsu.taGzzTipoDocUsuario.tipDocUsuDet}</td>
                                                            <td>${docUsu.docUsuNum}</td>
                                                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                                <td>
                                                                    <a href="#" data-toggle="modal" data-target="#modDocumentoModal" 
                                                                       title="Modificar # del Documento del Usuario"
                                                                       data-usucod="${docUsu.enP1mUsuario.usuCod}" 
                                                                       data-usunom="${docUsu.enP1mUsuario.usuNom}" 
                                                                       data-usuapepat="${docUsu.enP1mUsuario.usuApePat}" 
                                                                       data-usuapemat="${docUsu.enP1mUsuario.usuApeMat}"
                                                                       data-tipdocusucod="${docUsu.taGzzTipoDocUsuario.tipDocUsuCod}"
                                                                       data-tipdocusudet="${docUsu.taGzzTipoDocUsuario.tipDocUsuDet}"
                                                                       data-docusunum="${docUsu.docUsuNum}">
                                                                        <i class="fa fa-pencil-square-o fa-lg" style="color: black;"></i>
                                                                    </a>
                                                                    <a href="#" data-toggle="modal" data-target="#delDocumentoModal" 
                                                                       title="Eliminar el Documento del Usuario" 
                                                                       data-usucod="${docUsu.enP1mUsuario.usuCod}" 
                                                                       data-usunom="${docUsu.enP1mUsuario.usuNom}" 
                                                                       data-usuapepat="${docUsu.enP1mUsuario.usuApePat}" 
                                                                       data-usuapemat="${docUsu.enP1mUsuario.usuApeMat}"
                                                                       data-tipdocusucod="${docUsu.taGzzTipoDocUsuario.tipDocUsuCod}"
                                                                       data-tipdocusudet="${docUsu.taGzzTipoDocUsuario.tipDocUsuDet}">
                                                                        <i class="fa fa-trash-o fa-lg" style="color: red;"></i>
                                                                    </a>
                                                                </td>
                                                            </cc:if>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div>                
        
        <div id="viewClienteModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Gestion Cliente</h4>
                    </div>
                    <form id="viewClienteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped table-hover" id="tablaViewCliente">
                                                <thead>
                                                    <tr>
                                                        <th>Usuario</th>
                                                        <th>Cartera de Clientes</th>
                                                        <th>Descripcion</th>
                                                        <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                            <th>Acciones</th>
                                                        </cc:if>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="carCli" items="${carteraCli}">
                                                        <tr>
                                                            <td>${carCli.enP1mUsuario.usuCod} - ${carCli.enP1mUsuario.usuApePat} ${carCli.enP1mUsuario.usuApeMat}, ${carCli.enP1mUsuario.usuNom}</td>
                                                            <td>${carCli.enP1mCliente.cliCod} - ${carCli.enP1mCliente.cliRazSoc}</td>
                                                            <td>${carCli.usuCliDes}</td>
                                                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                                <td>
                                                                    <a href="#" data-toggle="modal" data-target="#modClienteModal" 
                                                                       title="Modificar Descripcion del Cliente del Usuario"
                                                                       data-usucod="${carCli.enP1mUsuario.usuCod}" 
                                                                       data-usunom="${carCli.enP1mUsuario.usuNom}" 
                                                                       data-usuapepat="${carCli.enP1mUsuario.usuApePat}" 
                                                                       data-usuapemat="${carCli.enP1mUsuario.usuApeMat}"
                                                                       data-clicod="${carCli.enP1mCliente.cliCod}"
                                                                       data-clirazsoc="${carCli.enP1mCliente.cliRazSoc}"
                                                                       data-usuclides="${carCli.usuCliDes}">
                                                                        <i class="fa fa-pencil-square-o fa-lg" style="color: black;"></i>
                                                                    </a>
                                                                    <a href="#" data-toggle="modal" data-target="#delClienteModal" 
                                                                       title="Eliminar Cliente del Usuario" 
                                                                       data-usucod="${carCli.enP1mUsuario.usuCod}" 
                                                                       data-usunom="${carCli.enP1mUsuario.usuNom}" 
                                                                       data-usuapepat="${carCli.enP1mUsuario.usuApePat}" 
                                                                       data-usuapemat="${carCli.enP1mUsuario.usuApeMat}"
                                                                       data-clicod="${carCli.enP1mCliente.cliCod}"
                                                                       data-clirazsoc="${carCli.enP1mCliente.cliRazSoc}">
                                                                        <i class="fa fa-trash-o fa-lg" style="color: red;"></i>
                                                                    </a>
                                                                </td>
                                                            </cc:if>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div> 
                        
        <div id="modClienteModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar Cliente</h4>
                    </div>
                    <form id="modClienteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="modCliente">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <input type="hidden" name="usuCod" id="modClienteUsuCod">
                                    <input type="hidden" name="cliCod" id="modClienteCliCod">
                                    <div class="col-sm-6">
                                        <label>Usuario:</label>
                                        <input type="text" class="form-control" id="modClienteUsuAll" readonly>
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Cliente:</label>
                                        <input type="text" class="form-control" id="modClienteCliAll" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label>Descripcion:</label>
                                        <input type="text" class="form-control" id="modClienteUsuCliDes" name="usuCliDes">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Modificar Cliente</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div>    
                        
        <div id="modDocumentoModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar Documento</h4>
                    </div>
                    <form id="modDocumentoForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="modDocumento">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <input type="hidden" name="usuCod" id="modDocumentoUsuCod">
                                    <input type="hidden" name="tipDocUsuCod" id="modDocumentotipDocUsuCod">
                                    <div class="col-sm-6">
                                        <label>Usuario:</label>
                                        <input type="text" class="form-control" id="modDocumentoUsuAll" readonly>
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Tipo de Documento:</label>
                                        <input type="text" class="form-control" id="modDocumentoTipDocAll" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label>Numero del documento:</label>
                                        <input type="text" class="form-control" id="modDocumentoDocUsuNum" name="docUsuNum">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Modificar Documento</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div>                
                        
        <div id="delClienteModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Cliente</h4>
                    </div>
                    <form id="delClienteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delCliente">
                            <input type="hidden" name="usuCod" id="delClienteUsuCod">
                            <input type="hidden" name="cliCod" id="delClienteCliCod">
                            <p> ¿Desea Eliminar el cliente: <span id="delClienteCliAll"></span> del catalogo del usuario: <span id="delClienteUsuAll"></span> ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
                        
        <div id="delDocumentoModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Cliente</h4>
                    </div>
                    <form id="delDocumentoForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delDocumento">
                            <input type="hidden" name="usuCod" id="delDocumentoUsuCod">
                            <input type="hidden" name="tipDocUsuCod" id="delDocumentoTipDocUsuCod">
                            <p> ¿Desea Eliminar el Documento <span id="delDocumentoDocUsuAll"></span> del catalogo del usuario: <span id="delDocumentoUsuAll"></span> ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>                
                        
        <script language="javascript">
            
            $(document).ready(function () {
                $('#tablaUsuarios').DataTable({
                responsive: true
                });   
                $('#tablaUsuariosInactivos').DataTable({
                responsive: true
                });
                $('#tablaViewDocumento').DataTable({
                responsive: true
                });
                $('#tablaViewCliente').DataTable({
                responsive: true
                });
            });
            
            var updateModal = $("#modificarModal");
            var disableModal = $("#disableModal");
            var activateModal = $("#activateModal");
            var deleteModal = $("#deleteModal");
            
            var viewDocumentoModal = $("#viewDocumentoModal");
            var viewClienteModal = $("#viewClienteModal");
            
            var clienteModal = $("#clienteModal");
            var documentoModal = $("#documentoModal");
            var modClienteModal = $("#modClienteModal");
            var modDocumentoModal = $("#modDocumentoModal");
            var delClienteModal = $("#delClienteModal");
            var delDocumentoModal = $("#delDocumentoModal");

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
            
            var clienteUsuCod = $("#clienteUsuCod");
            var clienteUsuCodShow = $("#clienteUsuCodShow");
            
            clienteModal.on('show.bs.modal', function (e) {
                clienteUsuCod.val($(e.relatedTarget).data('usucod'));
                clienteUsuCodShow.val($(e.relatedTarget).data('usuapepat') + " " + $(e.relatedTarget).data('usuapemat') + ", " + $(e.relatedTarget).data('usunom'));
            });
            
            var documentoUsuCod = $("#documentoUsuCod");
            var documentoUsuCodShow = $("#documentoUsuCodShow");
            
            documentoModal.on('show.bs.modal', function (e) {
                documentoUsuCod.val($(e.relatedTarget).data('usucod'));
                documentoUsuCodShow.val($(e.relatedTarget).data('usuapepat') + " " + $(e.relatedTarget).data('usuapemat') + ", " + $(e.relatedTarget).data('usunom'));
            });
            
            var modClienteUsuCod = $("#modClienteUsuCod");
            var modClienteCliCod = $("#modClienteCliCod");
            var modClienteUsuAll = $("#modClienteUsuAll");
            var modClienteCliAll = $("#modClienteCliAll");
            var modClienteUsuCliDes = $("#modClienteUsuCliDes");
            
            modClienteModal.on('show.bs.modal', function (e) {
                modClienteUsuCod.val($(e.relatedTarget).data('usucod'));
                modClienteCliCod.val($(e.relatedTarget).data('clicod'));
                modClienteUsuCliDes.val($(e.relatedTarget).data('usuclides'));
                modClienteUsuAll.val($(e.relatedTarget).data('usuapepat') + " " + $(e.relatedTarget).data('usuapemat') + ", " + $(e.relatedTarget).data('usunom'));
                modClienteCliAll.val($(e.relatedTarget).data('clicod') + " - " + $(e.relatedTarget).data('clirazsoc'));
            });
            
            var modDocumentoUsuCod = $("#modDocumentoUsuCod");
            var modDocumentotipDocUsuCod = $("#modDocumentotipDocUsuCod");
            var modDocumentoUsuAll = $("#modDocumentoUsuAll");
            var modDocumentoTipDocAll = $("#modDocumentoTipDocAll");
            var modDocumentoDocUsuNum = $("#modDocumentoDocUsuNum");
            
            modDocumentoModal.on('show.bs.modal', function (e) {
                modDocumentoUsuCod.val($(e.relatedTarget).data('usucod'));
                modDocumentotipDocUsuCod.val($(e.relatedTarget).data('tipdocusucod'));
                modDocumentoDocUsuNum.val($(e.relatedTarget).data('docusunum'));
                modDocumentoUsuAll.val($(e.relatedTarget).data('usuapepat') + " " + $(e.relatedTarget).data('usuapemat') + ", " + $(e.relatedTarget).data('usunom'));
                modDocumentoTipDocAll.val($(e.relatedTarget).data('tipdocusucod') + " - " + $(e.relatedTarget).data('tipdocusudet'));
            });
            
            var delClienteUsuCod = $("#delClienteUsuCod");
            var delClienteCliCod = $("#delClienteCliCod");
            var delClienteCliAll = $("#delClienteCliAll");
            var delClienteUsuAll = $("#delClienteUsuAll");
            
            delClienteModal.on('show.bs.modal', function (e) {
                delClienteUsuCod.val($(e.relatedTarget).data('usucod'));
                delClienteCliCod.val($(e.relatedTarget).data('clicod'));
                delClienteUsuAll.text($(e.relatedTarget).data('usuapepat') + " " + $(e.relatedTarget).data('usuapemat') + ", " + $(e.relatedTarget).data('usunom'));
                delClienteCliAll.text($(e.relatedTarget).data('clicod') + " - " + $(e.relatedTarget).data('clirazsoc'));
            });
            
            var delDocumentoUsuCod = $("#delDocumentoUsuCod");
            var delDocumentoTipDocUsuCod = $("#delDocumentoTipDocUsuCod");
            var delDocumentoDocUsuAll = $("#delDocumentoDocUsuAll");
            var delDocumentoUsuAll = $("#delDocumentoUsuAll");
            
            delDocumentoModal.on('show.bs.modal', function (e) {
                delDocumentoUsuCod.val($(e.relatedTarget).data('usucod'));
                delDocumentoTipDocUsuCod.val($(e.relatedTarget).data('tipdocusucod'));
                delDocumentoUsuAll.text($(e.relatedTarget).data('usuapepat') + " " + $(e.relatedTarget).data('usuapemat') + ", " + $(e.relatedTarget).data('usunom'));
                delDocumentoDocUsuAll.text($(e.relatedTarget).data('tipdocusucod') + " - " + $(e.relatedTarget).data('tipdocusudet'));
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
