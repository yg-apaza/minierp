<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir='/WEB-INF/tags'%>
<%@taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<t:template-page-nav>
    <jsp:attribute name="mybody">
        <div class="panel panel-default class">
            <div class="panel-heading">
                <h1 class="text-left">Usuarios</h1>
            </div>
            <div class="panel-body">
                <div class="row">
                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod() == 1}">
                        <div class="col-md-12">
                            <div class="btn-group btn-group-justified" role="group" aria-label="First group">
                                <div class="col-md-3 text-center">
                                    <button type="button" class="btn btn-success btn-block" data-toggle="modal" data-target="#agregarModal">Agregar Nuevo <i class="fa fa-plus"></i></button>                
                                </div>
                                <div class="col-md-3 text-center">
                                    <button type="button" class="btn btn-info btn-block" data-toggle="modal" data-target="#estadosModal">Ver Inhabilitados <i class="fa fa-eye"></i></button>
                                </div>
                                <div class="col-md-3 text-center">
                                    <button type="button" class="btn btn-warning btn-block" data-toggle="modal" data-target="#viewDocumentoModal">Documentos <i class="fa fa-file-text"></i></button>
                                </div>
                                <div class="col-md-3 text-center">
                                    <button type="button" class="btn btn-warning btn-block" data-toggle="modal" data-target="#viewClienteModal">Clientes <i class="fa fa-child"></i></button>
                                </div>
                            </div>
                        </div>
                        <br />
                        <br />
                        <br />
                    </cc:if>

                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover" id="tablaUsuarios">
                                <thead>
                                    <tr>
                                        <th class="text-center">Codigo</th>
                                        <th class="text-center">Documentos</th>
                                        <th class="text-center">Nombres y Apellidos</th>
                                        <th class="text-center">Tipo</th>
                                        <th class="text-center">Lista de Precios</th>
                                        <th class="text-center">Clientes(Razon Social)</th>
                                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()== 1}">
                                            <th class="text-center">Acciones</th>
                                            </cc:if>
                                    </tr>
                                </thead>
                                <tbody>
                                    <cc:forEach var="u" items="${usuarios}">
                                        <tr>
                                            <td nowrap="nowrap">${u.usuCod}</td>
                                            <td nowrap="nowrap"><cc:forEach var="docs" items="${u.enP1mDocumentoUsuarios}">
                                                    ${docs.taGzzTipoDocUsuario.tipDocUsuDet}:${docs.docUsuNum}<br>
                                                </cc:forEach>
                                            </td>
                                            <td nowrap="nowrap">${u.usuNom} ${u.usuApePat} ${u.usuApeMat}</td>
                                            <td nowrap="nowrap">${u.taGzzTipoUsuario.tipUsuDet}</td>
                                            <td nowrap="nowrap">${u.taGzzListaPrecios.lisPreDet}</td>
                                            <td nowrap="nowrap"><cc:forEach var="cli" items="${u.enP1mCarteraClienteses}">
                                                    ${cli.enP1mCliente.cliRazSoc}<br>
                                                </cc:forEach>
                                            </td>
                                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()== 1}">
                                                <td class="text-center">
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
                                                       data-canusucod="${u.taGzzCanalUsuario.canUsuCod}"
                                                       data-usulog="${u.usuLog}"
                                                       data-lisprecod="${u.taGzzListaPrecios.lisPreCod}"
                                                       data-unitracod="${u.taGzzUnidadTrabajo.uniTraCod}"
                                                       data-mylispreusu="${u.enP1mListaPreciosUsuarioses}">
                                                        <i class="fa fa-pencil-square-o fa-lg" style="color: black;"></i>
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
                                                    <a href="#" data-toggle="modal" data-target="#passwordModal" 
                                                       title="Cambiar Contraseña"
                                                       data-usucod="${u.usuCod}" 
                                                       data-usunom="${u.usuNom}" 
                                                       data-usuapepat="${u.usuApePat}" 
                                                       data-usuapemat="${u.usuApeMat}">
                                                        <i class="fa fa-book fa-lg" style="color: black;"></i>
                                                    </a>
                                                    <a href="#" data-toggle="modal" data-target="#disableModal" 
                                                       title="InHabilitar Usuario"
                                                       data-usucod="${u.usuCod}" 
                                                       data-usunom="${u.usuNom}" 
                                                       data-usuapepat="${u.usuApePat}" 
                                                       data-usuapemat="${u.usuApeMat}">
                                                        <i class="fa fa-trash-o fa-lg" style="color: black;"></i>
                                                    </a>
                                                </td>
                                            </cc:if>
                                        </tr>
                                    </cc:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
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
                                        <input type="text" class="form-control" placeholder="Código Usuario" name="usuCod">
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
                                        <input type="text" class="form-control" placeholder="Login de Usuario" name="usuLog" autocomplete="off">
                                    </div>
                                    <div class="col-sm-6">                               
                                        <label class="control-label">Password</label>
                                        <input type="password" class="form-control" placeholder="Password de Usuario" name="usuPas" autocomplete="off">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-4"> 
                                        <label class="control-label">Tipo Usuario</label>
                                        <select class="form-control" name="tipUsuCod">
                                            <cc:forEach var="u" items="${tipos}">
                                                <option value="${u.tipUsuCod}">${u.tipUsuCod} - ${u.tipUsuDet}</option>
                                            </cc:forEach>
                                        </select>

                                    </div>
                                    <div class="col-sm-4">                               
                                        <label class="control-label">Sucursal</label>
                                        <select class="form-control" name="sucCod">
                                            <cc:forEach var="u" items="${sucursales}">
                                                <option value="${u.sucCod}">${u.sucCod} - ${u.sucDes}</option>
                                            </cc:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-4">                               
                                        <label class="control-label">Canal de Venta</label>
                                        <select class="form-control" name="canUsuCod">
                                            <cc:forEach var="c" items="${canalesUsuarios}">
                                                <option value="${c.canUsuCod}">${c.canUsuCod} - ${c.canUsuDet}</option>
                                            </cc:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Unidad de Trabajo</label>
                                        <select class="form-control" name="uniTraCod">
                                            <cc:forEach var="u" items="${unidadesTrabajo}">
                                                <option value="${u.uniTraCod}">${u.uniTraCod} - ${u.uniTraDet}</option>
                                            </cc:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Lista de Precios</label>
                                        <select class="form-control" name="lisPreCod">
                                            <cc:forEach var="l" items="${listasPrecios}">
                                                <option value="${l.lisPreCod}">${l.lisPreCod} - ${l.lisPreDet}</option>
                                            </cc:forEach>
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
                                            <cc:forEach var="u" items="${estados}">
                                                <option value="${u.estCivCod}">${u.estCivCod} - ${u.estCivDet}</option>
                                            </cc:forEach>
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
                                    <div class="col-sm-12">
                                        <label class="control-label">Código Usuario</label>
                                        <input class="form-control" name="usuCod" id="updateUsuCod" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label class="control-label">Canal de Venta</label>
                                        <select class="form-control" name="canUsuCod" id="updateCanUsuCod">
                                            <cc:forEach var="c" items="${canalesUsuarios}">
                                                <option value="${c.canUsuCod}">${c.canUsuCod} - ${c.canUsuDet}</option>
                                            </cc:forEach>
                                        </select>
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
                                            <cc:forEach var="u" items="${tipos}">
                                                <option value="${u.tipUsuCod}">${u.tipUsuCod} - ${u.tipUsuDet}</option>
                                            </cc:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Unidad de Trabajo</label>
                                        <select class="form-control" name="uniTraCod" id="updateUniTraCod">
                                            <cc:forEach var="u" items="${unidadesTrabajo}">
                                                <option value="${u.uniTraCod}">${u.uniTraCod} - ${u.uniTraDet}</option>
                                            </cc:forEach>
                                        </select>
                                    </div>
                                    <div class="col-sm-6"> 
                                        <label class="control-label">Lista de Precios</label>
                                        <select class="form-control" name="lisPreCod" id="updateLisPreCod">
                                            <cc:forEach var="l" items="${listasPrecios}">
                                                <option value="${l.lisPreCod}">${l.lisPreCod} - ${l.lisPreDet}</option>
                                            </cc:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">                               
                                        <label class="control-label" >Sucursal</label>
                                        <select class="form-control" name="sucCod" id="updateSucCod">
                                            <cc:forEach var="u" items="${sucursales}">
                                                <option value="${u.sucCod}">${u.sucCod} - ${u.sucDes}</option>
                                            </cc:forEach>
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
                                            <cc:forEach var="u" items="${estados}">
                                                <option value="${u.estCivCod}">${u.estCivCod} - ${u.estCivDet}</option>
                                            </cc:forEach>
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
                            <button type="submit" class="btn btn-outline btn-success">Inhabilitar</button>
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
                                        <th>Código Usuario</th>
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
                                    <cc:forEach var="u" items="${inactivos}">
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
                                    </cc:forEach>
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
                            <button type="submit" class="btn btn-outline btn-success">Activar</button>
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
                            <button type="submit" class="btn btn-outline btn-success">Eliminar</button>
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
                                            <cc:forEach var="cli" items="${clientes}">
                                                <option value="${cli.cliCod}">${cli.cliCod} - ${cli.cliRazSoc}</option>
                                            </cc:forEach>
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
                                            <cc:forEach var="docs" items="${documentos}">
                                                <option value="${docs.tipDocUsuCod}">${docs.tipDocUsuCod} - ${docs.tipDocUsuDet}</option>
                                            </cc:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label>Número de Documento:</label>
                                        <input type="text" class="form-control" placeholder="Número del documento" name="docUsuNum">
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
                                                        <th>Número del Documento</th>
                                                            <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                                            <th>Acciones</th>
                                                            </cc:if>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <cc:forEach var="docUsu" items="${documentosUsuarios}">
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
                                                    </cc:forEach>
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
                                                    <cc:forEach var="carCli" items="${carteraCli}">
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
                                                    </cc:forEach>
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
                                        <label>Número del documento:</label>
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
                            <button type="submit" class="btn btn-outline btn-success">Eliminar</button>
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
                            <button type="submit" class="btn btn-outline btn-success">Eliminar</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div id="passwordModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content" style="overflow-y: auto">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Cambiar Password</h4>
                    </div>
                    <form id="passwordForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/usuario/usuarios">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="updatePassword">
                            <input type="hidden" name="usuCod" id="changeUsuCod">
                            <p>Usuario: <span id="changeUsuNomCom"></span></p>
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label>Nuevo Password</label>
                                        <input type="password" class="form-control"  name="newPassword" id="newPassword_1" placeholder="Password">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label>Escribalo Nuevamente</label>
                                        <input type="password" class="form-control" name="newPasswordAgain" id="newPassword_2" placeholder="Password">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Cambiar Password</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </jsp:attribute>

    <jsp:attribute name="myscripts">
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
            var passwordModal = $("#passwordModal");

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
            var updateCanUsuCod = $("#updateCanUsuCod");
            var updateLisPreCod = $("#updateLisPreCod");
            var updateUniTraCod = $("#updateUniTraCod");

            var disableUsuCod = $("#disableUsuCod");
            var disableUsuNomCom = $("#disableUsuNomCom");

            var activateUsuCod = $("#activateUsuCod");
            var activateUsuNomCom = $("#activateUsuNomCom");

            var deleteUsuCod = $("#deleteUsuCod");
            var deleteUsuNomCom = $("#deleteUsuNomCom");

            var changeUsuCod = $("#changeUsuCod");
            var changeUsuNomCom = $("#changeUsuNomCom");

            var myLisPreUsu = $("#myLisPreUsu");

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
                updateCanUsuCod.val($(e.relatedTarget).data('canusucod'));
                updateLisPreCod.val($(e.relatedTarget).data('lisprecod'));
                updateUniTraCod.val($(e.relatedTarget).data('unitracod'));
                myLisPreUsu.val($(e.relatedTarget).data('mylispreusu'));

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

            passwordModal.on('show.bs.modal', function (e) {
                changeUsuCod.val($(e.relatedTarget).data('usucod'));
                changeUsuNomCom.text($(e.relatedTarget).data('usuapepat') + " " + $(e.relatedTarget).data('usuapemat') + ", " + $(e.relatedTarget).data('usunom'));
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
                        required: true
                    }
                },
                messages: {
                    usuCod: {
                        required: "El Código de Usuario es Requerido"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

            $("#passwordForm").validate({
                rules: {
                    newPassword: {
                        required: true
                    },
                    newPasswordAgain: {
                        required: true,
                        equalTo: "#newPassword_1"
                    }
                },
                messages: {
                    newPassword: {
                        required: "El campo es requerido"

                    },
                    newPasswordAgain: {
                        required: "El campo es requerido",
                        equalTo: "Contraseñas Diferentes"
                    }
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });

        </script>
    </jsp:attribute>
</t:template-page-nav>
