<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Clientes</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Agregar Cliente</h1>
            <br>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Cliente
                        </div>
                        <div class="panel-body">
                            <form role=form" method="post" action="${pageContext.request.contextPath}/secured/ventas/cliente">
                                <div class="form-group">
                                    <label>Cliente</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Cliente" name="cliCod">
                                    </div>
                                    <label>Nombres</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Nombres" name="cliNom">
                                    </div>
                                    <label>Apellido Paterno</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Apellido Paterno" name="cliApePat">
                                    </div>
                                    <label>Apellido Materno</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Apellido Materno" name="cliApeMat">
                                    </div>
                                    
                                    <label>Dirección</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Direccion" name="cliDir">
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

                                    <label>Telefono fijo</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Telefono fijo" name="cliTelFij">
                                    </div>
                                    
                                    <label>Telefono celular</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Telefono celular" name="cliTelCel">
                                    </div>                                    
                                    

                                    <label>Email</label>
                                    <div class="form-group input-group">
                                        <span class="input-group-addon"><i class="fa fa-user"></i>
                                        </span>
                                        <input type="text" class="form-control" placeholder="Email" name="cliEmail">
                                    </div>
                                    
                                    
                                    
                                <button type="submit" class="btn btn-lg btn-success btn-block">
                                    <i class="fa fa-user-plus"></i> Agregar usuario
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