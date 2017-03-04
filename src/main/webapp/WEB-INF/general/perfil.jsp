<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir='/WEB-INF/tags'%>
<%@taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<t:template-page-nav>
    <jsp:attribute name="mybody">
        <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-primary class">
                <div class="panel-heading">
                    <h1 class="text-center">Mi Perfil de Usuario</h1>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="text-center">
                            <img src="${pageContext.request.contextPath}/img/avatar.png" 
                                 id="imgUsu" class="img-circle" 
                                 alt="Imagen de Perfil Usuario" 
                                 width="250" 
                                 height="250">
                            <hr />
                            <form>
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><strong>Codigo de Usuario</strong></span>                                                           
                                        <input class="form-control" value="${sessionScope.usuario.usuCod}" disabled>
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                    </div>
                                </div>
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><strong>Nombres</strong></span>                                                           
                                        <input class="form-control" value="${sessionScope.usuario.usuNom}" disabled>
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                    </div>
                                </div>
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><strong>Apellidos</strong></span>                                                           
                                        <input class="form-control" value="${sessionScope.usuario.usuApePat} ${sessionScope.usuario.usuApeMat}" disabled>
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                    </div>
                                </div>
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><strong>Login Usuario</strong></span>                                                           
                                        <input class="form-control" value="${sessionScope.usuario.usuLog}" disabled>
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                    </div>
                                </div>
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><strong>Rol Usuario</strong></span>                                                           
                                        <input class="form-control" value="${sessionScope.usuario.taGzzTipoUsuario.tipUsuDet}" disabled>
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                    </div>
                                </div>
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><strong>Lista de Precios</strong></span>                                                           
                                        <input class="form-control" value="${sessionScope.usuario.taGzzListaPrecios.lisPreDet}" disabled>
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                    </div>
                                </div>
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><strong>Fecha de Nacimiento</strong></span>                                                           
                                        <input class="form-control" value="<fmt:formatDate value="${sessionScope.usuario.usuFecNac}" pattern="dd/MM/yyyy" />" disabled>
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                    </div>
                                </div>
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><strong>Estado Civil</strong></span>                                                           
                                        <input class="form-control" value="${sessionScope.usuario.taGzzEstadoCivil.estCivDet}" disabled>
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                    </div>
                                </div>
                                <div class="col-md-10 col-md-offset-1">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><strong>Genero</strong></span>                                                           
                                        <cc:if test = "${sessionScope.usuario.usuSex == 'M'.charAt(0)}">
                                            <input class="form-control" value="Masculino" disabled>
                                        </cc:if>
                                        <cc:if test = "${sessionScope.usuario.usuSex == 'F'.charAt(0)}">
                                            <input class="form-control" value="Femenino" disabled>
                                        </cc:if>
                                        <cc:if test = "${sessionScope.usuario.usuSex == 'N'.charAt(0)}">
                                            <input class="form-control" value="No Espesifica" disabled>
                                        </cc:if>
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                    </div>
                                </div>
                            </form>
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</t:template-page-nav>