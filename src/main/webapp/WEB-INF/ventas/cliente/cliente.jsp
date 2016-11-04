<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix='cc' uri='http://java.sun.com/jsp/jstl/core' %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Clientes</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">Clientes
                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
                <a href="#" class="btn btn-info btn-circle" data-toggle="modal" data-target="#estadosModal"><i class="fa fa-eye"></i></a>
                <a href="#" class="btn btn-danger btn-circle" data-toggle="modal" data-target="#delDocumentoModal"><i class="fa fa-file-text"></i></a>
                <a href="#" class="btn btn-danger btn-circle" data-toggle="modal" data-target="#delRutaModal"><i class="fa fa-automobile"></i></a>
                </cc:if>
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
                    <table class="table table-bordered table-striped table-hover" id="tablaClientes">
                        <thead>
                            <tr>
                                <th>Codigo</th>
                                <th>Documentos</th>
                                <th>Razon Social</th>
                                <th>Nombre Comercial</th>
                                <th>Rutas Asociadas</th>
                                <th>Tipo</th>
                                <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <th>Acciones</th>
                                </cc:if>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="cli" items="${cliente}">
                                <tr>
                                    <td>${cli.cliCod}</td>
                                    <td>
                                        <c:forEach var="docs" items="${cli.enP1mDocumentoClientes}">
                                           ${docs.taGzzTipoDocCliente.tipDocCliDet} - ${docs.docCliNum} <br>
                                        </c:forEach>
                                    </td>
                                    <td>${cli.cliRazSoc}</td>
                                    <td>${cli.cliNomCom}</td>
                                    <td>
                                        <c:forEach var="ruts" items="${cli.enP1mClientesRutases}">
                                           ${ruts.id.catRutCod} - ${ruts.enP1mCatalogoRuta.catRutDet} <br>
                                        </c:forEach>
                                    </td>
                                    <td>${cli.taGzzTipoCliente.tipCliCod} - ${cli.taGzzTipoCliente.tipCliDet}</td>
                                    <cc:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                    <td>
                                        <a href="#" data-toggle="modal" data-target="#modificarModal"
                                           data-clicod="${cli.cliCod}" data-tipclicod="${cli.taGzzTipoCliente.tipCliCod}" data-clirazsoc="${cli.cliRazSoc}" 
                                           data-clinomcom="${cli.cliNomCom}" data-clidomfis="${cli.cliDomFis}" data-clinom="${cli.cliNom}" data-cliapepat="${cli.cliApePat}" 
                                           data-cliapemat="${cli.cliApeMat}" data-clisex="${cli.cliSex}" data-clidir="${cli.cliDir}" 
                                           data-clitelfij="${cli.cliTelFij}" data-clitelcel="${cli.cliTelCel}" data-cliemail="${cli.cliEmail}" 
                                           data-estcivcod="${cli.taGzzEstadoCivil.estCivCod}" data-estcivdet="${cli.taGzzEstadoCivil.estCivDet}" 
                                           data-enp1mclientesrutases="${cli.enP1mClientesRutases}" 
                                           data-enp1mdocumentoclientes="${cli.enP1mClientesRutases}" >
                                            <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#disableModal" 
                                           data-clicod="${cli.cliCod}" data-clirazsoc="${cli.cliRazSoc}" >
                                            <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#rutaModal" 
                                           data-clicod="${cli.cliCod}" data-clirazsoc="${cli.cliRazSoc}">
                                            <i class="fa fa-automobile fa-2x" style="color: black;"></i>
                                        </a>
                                        <a href="#" data-toggle="modal" data-target="#documentoModal" 
                                           data-clicod="${cli.cliCod}" data-clirazsoc="${cli.cliRazSoc}">
                                            <i class="fa fa-file-text fa-2x" style="color: black;"></i>
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
                                        <label>Código Cliente:</label>
                                        <input type="text" class="form-control" placeholder="Código Cliente" name="cliCod">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Tipo de Cliente:</label>
                                        <select class="form-control" name="tipCliCod">
                                            <c:forEach var="tc" items="${tipCliente}">
                                                <option value="${tc.tipCliCod}">${tc.tipCliCod} - ${tc.tipCliDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Razon Social:</label>
                                        <input type="text" class="form-control" placeholder="Razon Social" name="cliRazSoc">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Nombre Comercial:</label>
                                        <input type="text" class="form-control" placeholder="Nombre Comercial" name="cliNomCom">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Dominio Fiscal:</label>
                                        <input type="text" class="form-control" placeholder="Razon Social" name="cliDomFis">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Nombres:</label>
                                        <input type="text" class="form-control" placeholder="Nombre Comercial" name="cliNom">
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
                                    <div class="col-sm-4">
                                        <label>Sexo:</label>
                                        <select class="form-control" name="cliSex">
                                            <option value="N">No especifica</option>
                                            <option value="M">Masculino</option>
                                            <option value="F">Femenino</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-8">
                                        <label>Dirección:</label>
                                        <input type="text" class="form-control" placeholder="Dirección" name="cliDir">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Teléfono Fijo:</label>
                                        <input type="text" class="form-control" placeholder="Teléfono Fijo" name="cliTelFij">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Teléfono Celular:</label>
                                        <input type="text" class="form-control" placeholder="Teléfono Celular" name="cliTelCel">
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
                                        <label>Código Cliente:</label>
                                        <input type="text" class="form-control" placeholder="Código Cliente" name="cliCod" id="updateCliCod" readonly>
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Tipo de Cliente:</label>
                                        <select class="form-control" name="tipCliCod" id="updateTipCliCod">
                                            <c:forEach var="tc" items="${tipCliente}">
                                                <option value="${tc.tipCliCod}">${tc.tipCliCod} - ${tc.tipCliDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Razon Social:</label>
                                        <input type="text" class="form-control" placeholder="Razon Social" name="cliRazSoc" id="updateCliRazSoc">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Nombre Comercial:</label>
                                        <input type="text" class="form-control" placeholder="Nombre Comercial" name="cliNomCom" id="updateCliNomCom">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Dominio Fiscal:</label>
                                        <input type="text" class="form-control" placeholder="Razon Social" name="cliDomFis" id="updateCliDomFis">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Nombres:</label>
                                        <input type="text" class="form-control" placeholder="Nombre Comercial" name="cliNom" id="updateCliNom">
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
                                    <div class="col-sm-4">
                                        <label>Sexo:</label>
                                        <select class="form-control" name="cliSex" id="updateCliSex">
                                            <option value="N">No Espesifica</option>
                                            <option value="M">Masculino</option>
                                            <option value="F">Feminino</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-8">
                                        <label>Dirección:</label>
                                        <input type="text" class="form-control" placeholder="Dirección" name="cliDir" id="updateCliDir">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Teléfono Fijo:</label>
                                        <input type="text" class="form-control" placeholder="Teléfono Fijo" name="cliTelFij" id="updateCliTelFij">
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Teléfono Celular:</label>
                                        <input type="text" class="form-control" placeholder="Teléfono Celular" name="cliTelCel" id="updateCliTelCel">
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
                                        <label>Correo Electrónico:</label>
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
                            <p> ¿Desea inhabilitar el Cliente: <span id="disableCliRazSoc"></span> ?</p>
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
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>Codigo</th>
                                        <th>Documentos</th>
                                        <th>Razon Social</th>
                                        <th>Nombre Comercial</th>
                                        <th>Tipo</th>
                                        <th class="text-right">Acciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="cli" items="${inactivos}">
                                        <tr>
                                            <td>${cli.cliCod}</td>
                                            <td>
                                                <c:forEach var="docs" items="${cli.enP1mDocumentoClientes}">
                                                   ${docs.taGzzTipoDocCliente.tipDocCliDet} - ${docs.docCliNum} <br>
                                                </c:forEach>
                                            </td>
                                            <td>${cli.cliRazSoc}</td>
                                            <td>${cli.cliNomCom}</td>
                                            <td>${cli.taGzzTipoCliente.tipCliCod} - ${cli.taGzzTipoCliente.tipCliDet}</td>

                                            <td class="text-right">
                                                <a href="#" data-toggle="modal" data-target="#activateModal" 
                                                   data-clicod="${cli.cliCod}" data-clirazsoc="${cli.cliRazSoc}" >
                                                    <i class="fa fa-check fa-2x" style="color: green;"></i>
                                                </a>
                                                <a href="#" data-toggle="modal" data-target="#deleteModal" 
                                                   data-clicod="${cli.cliCod}" data-clirazsoc="${cli.cliRazSoc}" >
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
                            <p> ¿Desea habilitar el Cliente: <span id="activateCliRazSoc"></span> ?</p>
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
                            <p> ¿Desea Eliminar el Cliente: <span id="deleteCliRazSoc"></span> ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
                        
        <div id="rutaModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar Ruta</h4>
                    </div>
                    <form id="rutaForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="ruta">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Código Cliente:</label>
                                        <input type="hidden" name="cliCod" id="rutaCliCod">
                                        <input type="text" class="form-control" id="rutaCliShow" readonly>
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Catalogo de Rutas:</label>
                                        <select class="form-control" name="catRutCod">
                                            <c:forEach var="rut" items="${rutas}">
                                                <option value="${rut.catRutCod}">${rut.catRutCod} - ${rut.catRutDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label>Descripcion:</label>
                                        <input type="text" class="form-control" placeholder="Descripcion" name="cliRutDes">
                                    </div>
                                </div> 
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Agregar Ruta</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div>
                        
        <div id="documentoModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Agregar Documento</h4>
                    </div>
                    <form id="documentoForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="documento">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <div class="col-sm-6">
                                        <label>Código Cliente:</label>
                                        <input type="hidden" name="cliCod" id="documentoCliCod">
                                        <input type="text" class="form-control" id="documentoCliShow" readonly>                                    </div>
                                    <div class="col-sm-6">
                                        <label>Documentos Disponibles:</label>
                                        <select class="form-control" name="tipDocCliCod">
                                            <c:forEach var="docs" items="${documentos}">
                                                <option value="${docs.tipDocCliCod}">${docs.tipDocCliCod} - ${docs.tipDocCliDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label>Numero de Documento:</label>
                                        <input type="text" class="form-control" placeholder="Numero del documento" name="docCliNum">
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
        
        <div id="delRutaModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Ruta</h4>
                    </div>
                    <form id="delRutaForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delRuta">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Cliente</th>
                                                        <th>Rutas</th>
                                                        <th>Descripcion de la Ruta</th>
                                                        <th>Acciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="cliRut" items="${allRutClientes}">
                                                        <tr>
                                                            <td>${cliRut.enP1mCliente.cliCod} - ${cliRut.enP1mCliente.cliRazSoc}</td>
                                                            <td>${cliRut.enP1mCatalogoRuta.catRutCod} - ${cliRut.enP1mCatalogoRuta.catRutDet}</td>
                                                            <td>${cliRut.cliRutDes}</td>
                                                            
                                                            <td>
                                                                <a href="#" data-toggle="modal" data-target="#modRutClienteModal"
                                                                   data-clicod="${cliRut.enP1mCliente.cliCod}" data-clirazsoc="${cliRut.enP1mCliente.cliRazSoc}"
                                                                   data-catrutcod="${cliRut.enP1mCatalogoRuta.catRutCod}" data-catrutdet="${cliRut.enP1mCatalogoRuta.catRutDet}" 
                                                                   data-clirutdes="${cliRut.cliRutDes}" >
                                                                    <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                                                </a>
                                                                <a href="#" data-toggle="modal" data-target="#delRutClienteModal" 
                                                                   data-clicod="${cliRut.enP1mCliente.cliCod}" data-clirazsoc="${cliRut.enP1mCliente.cliRazSoc}"
                                                                   data-catrutcod="${cliRut.enP1mCatalogoRuta.catRutCod}" data-catrutdet="${cliRut.enP1mCatalogoRuta.catRutDet}">
                                                                    <i class="fa fa-trash-o fa-2x" style="color: red;"></i>
                                                                </a>
                                                            </td>
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
                        
        <div id="delDocumentoModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Documento</h4>
                    </div>
                    <form id="delDocumentoForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delDocumento">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <div class="table-responsive">
                                            <table class="table table-bordered table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>Cliente</th>
                                                        <th>Tipo de Documento</th>
                                                        <th>Numero del Documento</th>
                                                        <th>Acciones</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="cliDoc" items="${allDocClientes}">
                                                        <tr>
                                                            <td>${cliDoc.enP1mCliente.cliCod} - ${cliDoc.enP1mCliente.cliRazSoc}</td>
                                                            <td>${cliDoc.taGzzTipoDocCliente.tipDocCliCod} - ${cliDoc.taGzzTipoDocCliente.tipDocCliDet}</td>
                                                            <td>${cliDoc.docCliNum}</td>
                                                            
                                                            <td>
                                                                <a href="#" data-toggle="modal" data-target="#modDocClienteModal" 
                                                                   data-clicod="${cliDoc.enP1mCliente.cliCod}" data-clirazsoc="${cliDoc.enP1mCliente.cliRazSoc}"
                                                                   data-tipdocclicod="${cliDoc.taGzzTipoDocCliente.tipDocCliCod}" data-tipdocclidet="${cliDoc.taGzzTipoDocCliente.tipDocCliDet}"
                                                                   data-docclinum="${cliDoc.docCliNum}">
                                                                    <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
                                                                </a>
                                                                <a href="#" data-toggle="modal" data-target="#delDocClienteModal" 
                                                                   data-clicod="${cliDoc.enP1mCliente.cliCod}" data-clirazsoc="${cliDoc.enP1mCliente.cliRazSoc}"
                                                                   data-tipdocclicod="${cliDoc.taGzzTipoDocCliente.tipDocCliCod}" data-tipdocclidet="${cliDoc.taGzzTipoDocCliente.tipDocCliDet}">
                                                                    <i class="fa fa-trash-o fa-2x" style="color: red;"></i>
                                                                </a>
                                                            </td>
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
                        
        <div id="modRutClienteModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar Ruta</h4>
                    </div>
                    <form id="modRutClienteForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="modRuta">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <input type="hidden" name="cliCod" id="modRutCliCod">
                                    <input type="hidden" name="catRutCod" id="modRutCatRutCod">
                                    <div class="col-sm-6">
                                        <label>Cliente:</label>
                                        <input type="text" class="form-control" id="modRutCliAll" readonly>
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Ruta:</label>
                                        <input type="text" class="form-control" id="modRutCatRutAll" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label>Descripcion:</label>
                                        <input type="text" class="form-control" id="modRutCliRutDes" name="cliRutDes">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Modificar Ruta</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div>
                        
        <div id="modDocClienteModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Modificar Cliente</h4>
                    </div>
                    <form id="modDocClienteForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="modDoc">
                            <div class="form-horizontal">   
                                <div class="form-group">
                                    <input type="hidden" name="cliCod" id="modDocCliCod">
                                    <input type="hidden" name="tipDocCliCod" id="modDocTipDocCliCod">
                                    <div class="col-sm-6">
                                        <label>Cliente:</label>
                                        <input type="text" class="form-control" id="modDocCliAll" readonly>
                                    </div>
                                    <div class="col-sm-6">
                                        <label>Documento:</label>
                                        <input type="text" class="form-control" id="modDocTipDocCliAll" readonly>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label>Numero del Documento:</label>
                                        <input type="text" class="form-control" id="modDocDocCliNum" name="docCliNum">
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
                        
        <div id="delRutClienteModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Ruta</h4>
                    </div>
                    <form id="delRutClienteForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delRuta">
                            <input type="hidden" name="cliCod" id="delRutCliCod">
                            <input type="hidden" name="catRutCod" id="delRutCatRutCod">
                            <p> ¿Desea Eliminar la ruta: <span id="delRutCatRutAll"></span>, del Cliente: <span id="delRutCliAll"></span> ?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
                        
        <div id="delDocClienteModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Eliminar Documento</h4>
                    </div>
                    <form id="delDocClienteForm" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                        <div class="modal-body">
                            <input type="hidden" name="accion" value="delDoc">
                            <input type="hidden" name="cliCod" id="delDocCliCod">
                            <input type="hidden" name="tipDocCliCod" id="delDocTipDocCliCod">
                            <p> ¿Desea Eliminar el documento: <span id="delDocTipDocCliAll"></span>, del Cliente: <span id="delDocCliAll"></span> ?</p>
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
            $('#tablaClientes').DataTable({
                responsive: true
            });
            var updateModal = $("#modificarModal");
            var disableModal = $("#disableModal");
            var activateModal = $("#activateModal");
            var deleteModal = $("#deleteModal");
            var rutaModal = $("#rutaModal");
            var documentoModal = $("#documentoModal");
            
            var modRutClienteModal = $("#modRutClienteModal");
            var delRutClienteModal = $("#delRutClienteModal");
            
            var modDocClienteModal = $("#modDocClienteModal");
            var delDocClienteModal = $("#delDocClienteModal");

            var updateCliCod = $("#updateCliCod");
            var updateTipCliCod = $("#updateTipCliCod");
            var updateCliRazSoc = $("#updateCliRazSoc");
            var updateCliNomCom = $("#updateCliNomCom");
            var updateCliDomFis = $("#updateCliDomFis");
            var updateCliNom = $("#updateCliNom");
            var updateCliApePat = $("#updateCliApePat");
            var updateCliApeMat = $("#updateCliApeMat");
            var updateCliSex = $("#updateCliSex");
            var updateCliDir = $("#updateCliDir");
            var updateCliTelFij = $("#updateCliTelFij");
            var updateCliTelCel = $("#updateCliTelCel");
            var updateCliEmail = $("#updateCliEmail");
            var updateEstCivCod = $("#updateEstCivCod");

            var disableCliCod = $("#disableCliCod");
            var disableCliRazSoc = $("#disableCliRazSoc");

            var activateCliCod = $("#activateCliCod");
            var activateCliRazSoc = $("#activateCliRazSoc");

            var deleteCliCod = $("#deleteCliCod");
            var deleteCliRazSoc = $("#deleteCliRazSoc");
            
            var rutaCliCod = $("#rutaCliCod");
            var rutaCliShow = $("#rutaCliShow");
            
            var documentoCliCod = $("#documentoCliCod");
            var documentoCliShow = $("#documentoCliShow");
            
            var rutas = $("#rutas");
            var documentos = $("#documentos");
            
            var modRutCliCod = $("#modRutCliCod");
            var modRutCliAll = $("#modRutCliAll");
            var modRutCatRutCod = $("#modRutCatRutCod");
            var modRutCatRutAll = $("#modRutCatRutAll");
            var modRutCliRutDes = $("#modRutCliRutDes");
            
            var modDocCliCod = $("#modDocCliCod");
            var modDocCliAll = $("#modDocCliAll");
            var modDocTipDocCliCod = $("#modDocTipDocCliCod");
            var modDocTipDocCliAll = $("#modDocTipDocCliAll");
            var modDocDocCliNum = $("#modDocDocCliNum");
            
            var delRutCliCod = $("#delRutCliCod");
            var delRutCliAll = $("#delRutCliAll");
            var delRutCatRutCod = $("#delRutCatRutCod");
            var delRutCatRutAll = $("#delRutCatRutAll");
            
            var delDocCliCod = $("#delDocCliCod");
            var delDocCliAll = $("#delDocCliAll");
            var delDocTipDocCliCod = $("#delDocTipDocCliCod");
            var delDocTipDocCliAll = $("#delDocTipDocCliAll");
            
            
            updateModal.on('show.bs.modal', function (e) {
                updateCliCod.val($(e.relatedTarget).data('clicod'));
                updateTipCliCod.val($(e.relatedTarget).data('tipclicod'));
                updateCliRazSoc.val($(e.relatedTarget).data('clirazsoc'));
                updateCliNomCom.val($(e.relatedTarget).data('clinomcom'));
                updateCliDomFis.val($(e.relatedTarget).data('clidomfis'));
                updateCliNom.val($(e.relatedTarget).data('clinom'));
                updateCliApePat.val($(e.relatedTarget).data('cliapepat'));
                updateCliApeMat.val($(e.relatedTarget).data('cliapemat'));
                updateCliSex.val($(e.relatedTarget).data('clisex'));
                updateCliDir.val($(e.relatedTarget).data('clidir'));
                updateCliTelFij.val($(e.relatedTarget).data('clitelfij'));
                updateCliTelCel.val($(e.relatedTarget).data('clitelcel'));
                updateCliEmail.val($(e.relatedTarget).data('cliemail'));
                updateEstCivCod.val($(e.relatedTarget).data('estcivcod'));
                
                rutas.val($(e.relatedTarget).data('enp1mclientesrutases'));
                documentos.val($(e.relatedTarget).data('enp1mdocumentoclientes'));
            });

            disableModal.on('show.bs.modal', function (e) {
                disableCliCod.val($(e.relatedTarget).data('clicod'));
                disableCliRazSoc.text($(e.relatedTarget).data('clirazsoc'));
            });

            activateModal.on('show.bs.modal', function (e) {
                activateCliCod.val($(e.relatedTarget).data('clicod'));
                activateCliRazSoc.text($(e.relatedTarget).data('clirazsoc'));
            });

            deleteModal.on('show.bs.modal', function (e) {
                deleteCliCod.val($(e.relatedTarget).data('clicod'));
                deleteCliRazSoc.text($(e.relatedTarget).data('clirazsoc'));
            });
            
            rutaModal.on('show.bs.modal', function (e) {
                rutaCliCod.val($(e.relatedTarget).data('clicod'));
                rutaCliShow.val($(e.relatedTarget).data('clicod') +" - " + $(e.relatedTarget).data('clirazsoc'));
            });
            
            documentoModal.on('show.bs.modal', function (e) {
                documentoCliCod.val($(e.relatedTarget).data('clicod'));
                documentoCliShow.val($(e.relatedTarget).data('clicod') +" - " + $(e.relatedTarget).data('clirazsoc'));
            });
            
            modRutClienteModal.on('show.bs.modal', function (e) {
                modRutCliCod.val($(e.relatedTarget).data('clicod'));
                modRutCliAll.val($(e.relatedTarget).data('clicod') + " - " + $(e.relatedTarget).data('clirazsoc'));
                modRutCatRutCod.val($(e.relatedTarget).data('catrutcod'));
                modRutCatRutAll.val($(e.relatedTarget).data('catrutcod') + " - " + $(e.relatedTarget).data('catrutdet'));
                modRutCliRutDes.val($(e.relatedTarget).data('clirutdes'));
            });
            
            delRutClienteModal.on('show.bs.modal', function (e) {
                delRutCliCod.val($(e.relatedTarget).data('clicod'));
                delRutCliAll.text($(e.relatedTarget).data('clicod') + " - " + $(e.relatedTarget).data('clirazsoc'));
                delRutCatRutCod.val($(e.relatedTarget).data('catrutcod'));
                delRutCatRutAll.text($(e.relatedTarget).data('catrutcod') + " - " + $(e.relatedTarget).data('catrutdet'));
            });
            
            modDocClienteModal.on('show.bs.modal', function (e) {
                modDocCliCod.val($(e.relatedTarget).data('clicod'));
                modDocCliAll.val($(e.relatedTarget).data('clicod') + " - " + $(e.relatedTarget).data('clirazsoc'));
                modDocTipDocCliCod.val($(e.relatedTarget).data('tipdocclicod'));
                modDocTipDocCliAll.val($(e.relatedTarget).data('tipdocclicod') + " - " + $(e.relatedTarget).data('tipdocclidet'));
                modDocDocCliNum.val($(e.relatedTarget).data('docclinum'));
            });
            
            delDocClienteModal.on('show.bs.modal', function (e) {
                delDocCliCod.val($(e.relatedTarget).data('clicod'));
                delDocCliAll.text($(e.relatedTarget).data('clicod') + " - " + $(e.relatedTarget).data('clirazsoc'));
                delDocTipDocCliCod.val($(e.relatedTarget).data('tipdocclicod'));
                delDocTipDocCliAll.text($(e.relatedTarget).data('tipdocclicod') + " - " + $(e.relatedTarget).data('tipdocclidet'));
            });

            $("#createForm").validate({
                rules: {
                    cliCod: {
                        required: true,
                        number: true
                    },
                    cliRazSoc: {
                        required: true
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
                        required: "El Código de Cliente es Requerido",
                        number: "El Código de Cliente debe ser Numérico"
                    },
                    cliRazSoc: {
                        required: "La razon social es Requerida"
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
                    cliRazSoc: {
                        required: true
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
                        required: "El Código de Cliente es Requerido",
                        number: "El Código de Cliente debe ser Numérico"
                    },
                    cliRazSoc: {
                        required: "La razon social es Requerida"
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
