<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Perfil</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Mi perfil</h1>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            Usuario
                        </div>
                        <div class="panel-body">
                            <div  style="text-align: center;">
                                <i class="fa fa-user fa-5x"></i>
                            </div>
                            <br>
                            <form role="form">
                                <div class="form-group">
                                    <label>Usuario:</label>
                                    <input class="form-control" value="${sessionScope.usuario.usuCod}" disabled>
                                </div>
                                <div class="form-group">
                                    <label>Nombres:</label>
                                    <input class="form-control" value="${sessionScope.usuario.usuNom}" disabled>
                                </div>
                                <div class="form-group">
                                    <label>Apellidos:</label>
                                    <input class="form-control" value="${sessionScope.usuario.usuApePat} ${sessionScope.usuario.usuApeMat}" disabled>
                                </div>
                                <div class="form-group">
                                    <label>Rol:</label>
                                    <input class="form-control" value="${sessionScope.usuario.tipUsuDet}" disabled>
                                </div>
                                <div class="form-group">
                                    <label>Fecha de nacimiento:</label>
                                    <input class="form-control" value="<fmt:formatDate value="${sessionScope.usuario.usuFecNac}" pattern="dd/MM/yyyy" />" disabled>
                                </div>
                                <div class="form-group">
                                    <label>Estado Civil:</label>
                                    <input class="form-control" value="${sessionScope.usuario.estCivDet}" disabled>
                                </div>
                                <div class="form-group">
                                    <label>Género:</label>
                                    <input class="form-control" value="${sessionScope.usuario.usuSex}" disabled>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</minierptemplate:template>