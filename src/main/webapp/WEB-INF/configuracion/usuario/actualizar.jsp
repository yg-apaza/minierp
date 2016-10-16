<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Usuarios</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Actualizar Usuario</h1>
            <br>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Usuario
                        </div>
                        <div class="panel-body">
                            <form role="form" method="post" action="${pageContext.request.contextPath}/updatecontrollerpost">
                                <div class="form-group">
                                    <label>Código de usuario</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control"  name="usuCod" value="${usuario.usuCod}">
                                    </div>
                                    <label>Nombres</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control"  name="usuNom" value="${usuario.usuNom}">
                                    </div>
                                    <label>Apellido Paterno</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Apellido Paterno" name="usuApePat" value="${usuario.usuApePat}">
                                    </div>
                                    <label>Apellido Materno</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Apellido Materno" name="usuApeMat" value="${usuario.usuApeMat}">
                                    </div>
                                    <label>Login</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Login" name="usuLog" value="${usuario.usuLog}">
                                    </div>
                                    <label>Tipo de usuario</label>
                                    <div class="form-group">
                                        <select class="form-control" name="tipUsuCod" >
                                            <c:forEach items="${tipos}" var="t">
                                                <option value="${t.tipUsuCod}">${t.tipUsuDet}</option>
                                               
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <label>Fecha de nacimiento</label>
                                    <div class='form-group input-group date' id='datetimepicker1'>
                                        <input placeholder="Fecha de nacimiento" type='text' class="form-control" name="usuFecNac" value="<fmt:formatDate value="${usuario.usuFecNac}" pattern="dd/MM/yyyy" />"/>
                                        <span class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </span>
                                    </div>
                                    <label>Estado Civil</label>
                                    <div class="form-group">
                                        <select class="form-control" name="estCivCod">
                                            <c:forEach items="${estados}" var="e">
                                                <option value="${e.estCivCod}">${e.estCivDet}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <label>Género</label>
                                    <div class="form-group">
                                        <select class="form-control" name="usuSex">
                                            <option value="M">Masculino</option>
                                            <option value="F">Femenino</option>
                                            <option value="N" selected="selected">No especifica</option>
                                        </select>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-lg btn-success btn-block">
                                    <i class="fa fa-user-plus"></i> Actualizar Usuario
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(document).ready(function(){
                $('#datetimepicker1').datetimepicker({
                    format: 'DD/MM/YYYY'
                });
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>