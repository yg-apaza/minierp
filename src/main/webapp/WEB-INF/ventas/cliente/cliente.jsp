<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<jsp:declaration> private String codCliSelec;</jsp:declaration>
<% session.setAttribute("codCliSelec", codCliSelec);%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Ventas - Clientes</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <form role="form" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes">
                <h1 class="page-header">Clientes</h1>
                <div class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-sm-2">DNI</label>
                        <div class="col-lg-6">
                            <input type="text" class="form-control" placeholder="Codigo" name="dniCli">
                        </div>
                        <div class="col-lg-6">
                            <button type="submit" class="btn btn-primary" name="buscarCliente">Buscar <i class="fa fa-search-plus fa-1x"></i></button>
                            <button type="submit" class="btn btn-primary" name="todos">Todos <i class="fa fa-child"></i></button>
                            <button type="button" data-toggle="modal" data-target="#addCliente" class="btn btn-success">Agregar cliente <i class="fa fa-plus"></i></button>
                        </div>        
                    </div>
                </div>  
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Cliente</th>
                                <th>Nombres</th>
                                <th>Apellidos</th>
                                <th>Estado Civil</th>
                                <th>Género</th>
                                <th>Fijo</th>
                                <th>Celular</th>
                                <th>Estado de Registro</th>
                                <th>Acciones</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${clientes}" var="c">
                                <tr>
                                    <td>${c.cliCod}</td>
                                    <td>${c.cliNom}</td>
                                    <td>${c.cliApePat} ${c.cliApeMat}</td>
                                    <td>${c.taGzzEstadoCivil.estCivDet}</td>
                                    <td>${c.cliSex}</td>
                                    <td>${c.cliTelFij}</td>
                                    <td>${c.cliTelCel}</td>
                                    <td>${c.estRegCod}</td>
                                    <td><!--
                                        <button type="submit" class="btn btn-primary" name="modificarCliente" value="${c.cliCod}"><i class="fa fa-pencil-square-o fa-1x"></i></button>-->
                                        <button type="submit" class="btn btn-danger" name="eliminarCliente" value="${c.cliCod}"><i class="fa fa-trash-o fa-1x"></i></button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
                            
        <div id="addCliente" class="modal fade" role="dialog"><div class="modal-dialog"><div class="modal-content">
             
            <!-- TITULO-->
            <div class="modal-header"> <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Agregar Cliente</h4>
            </div>
            <!-- FIN_TITULO -->

            <form role="form" method="post" action="${pageContext.request.contextPath}/secured/ventas/clientes/addCliente">
            <!-- CONTENIDO -->
            <div class="modal-body">   
                <div class="form-horizontal">
                    <div class="panel panel-default">    
                        <div class="panel-heading">                       
                            <div class="form-group">
                                <div class="col-sm-6">                               
                                    <input type="text" class="form-control" placeholder="Codigo Cliente" name="codCli">
                                </div>
                                <div class="col-sm-6">                               
                                        <input type="text" class="form-control" placeholder="Nombre Cliente" name="nomCli">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-6">                               
                                        <input type="text" class="form-control" placeholder="Apellido Paterno Cliente" name="apePatCli">
                                </div>
                                <div class="col-sm-6">                               
                                        <input type="text" class="form-control" placeholder="Apellido Materno Cliente" name="apeMatCli">
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label class="control-label">Direccion</label>
                                    <input type="text" class="form-control" placeholder="Dirección" name="dirCli">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="control-label">Estado Civil</label>
                                    <select class="form-control" name="estCivCod">
                                        <option value="1">Soltero</option>
                                        <option value="2">Casado</option>
                                        <option value="3">Divorciado</option>
                                        <option value="4">Viudo</option>
                                    </select>
                                </div>
                                <div class="col-sm-6">
                                    <label class="control-label">Género</label>
                                    <select class="form-control" name="cliSex">
                                        <option value="M">Masculino</option>
                                        <option value="F">Femenino</option>
                                        <option value="N" selected="selected">No especifica</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label class="control-label">Teléfono Fijo</label>
                                    <input type="text" class="form-control" placeholder="Teléfono Fijo" name="telFijCli">
                                </div>
                                <div class="col-sm-6">
                                    <label class="control-label">Teléfono Celular</label>
                                    <input type="text" class="form-control" placeholder="Teléfono Celular" name="telCelCli">
                                </div>                                
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label class="control-label">Email</label>
                                     <input type="text" class="form-control" placeholder="Email" name="emailCli">      
                                </div>                               
                            </div> 
                        </div>
                    </div>
                </div>               
            </div>
            <!-- FIN CONTENIDO-->
              
            <!-- PIE -->
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button type="submit" class="btn btn-default" >Agregar</button>
            </div>
            <!-- FIN PIE -->
            </form>
        </div></div></div>
        <!-- FIN MODAL1 -->                    
                            
    </jsp:attribute>
</minierptemplate:template>