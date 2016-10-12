<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Clientes</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Agregar Cliente</h1>
            <br>
            <div class="form-horizontal">
                <div class="panel panel-default">
                    <form role="form" method="post" action="${pageContext.request.contextPath}/secured/clientes/addCliente">
                    <div class="panel-heading">
                        <div class=form-group>
                                <label class="col-sm-2"><h4>Añadir Cliente</h4></label>
                        </div>                        
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
                            <button type="submit" class="btn btn-lg btn-success btn-block">
                        <i class="fa fa-user-plus"></i> Agregar usuario
                    </button>   
                        </form>
                    </div>
                    
                                                                             
                </div>
            </div>x            
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