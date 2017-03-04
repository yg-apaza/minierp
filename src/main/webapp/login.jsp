<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template-login-nav>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <img id="logoEmp" src="${pageContext.request.contextPath}/img/${empImg}" class="img-responsive center-block" alt="MiniERP"/>
                    </div>
                    <div class="panel-body">
                        <form role="form" method="post" action="${pageContext.request.contextPath}/">
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Usuario" name="usuario" autofocus>
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Contraseña" name="password" type="password" value="">
                                </div>                                
                                <button type="submit" class="btn btn-lg btn-success btn-block">
                                    <i class="fa fa-sign-in"></i>Ingresar
                                </button>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</t:template-login-nav>