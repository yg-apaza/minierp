<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Logística - Proveedores</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/jquery.PrintArea.js"></script>

        <div class="panel-body">
            <div class="row">   
                <div class="col-lg-12">
                    <h1 class="page-header"> Proveedores </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-7">
                    <button class="btn btn-success" id="addbtn"> Agregar nuevo </button> 
                </div>
                <div class=" col-lg-5">
                    <div class="col-lg-offset-4 col-lg-2">
                        <label>Reporte</label>
                    </div>
                    <div class="col-lg-6">
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=proovedores&&jdbc=true&&key=null&&value=null" class="btn btn-danger">
                            <i class="fa fa-file-pdf-o"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&report=proovedores&&jdbc=true&&key=null&&value=null" class="btn btn-success">
                            <i class="fa fa-file-excel-o"></i>
                        </a>
                        <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&report=proovedores&&jdbc=true&&key=null&&value=null" class="btn  btn-primary">
                            <i class="fa fa-file-word-o"></i>
                        </a>
                    </div>

                </div>
                
            </div>
            <br>
             
            <div id="printarea">
                <div class="table-responsive">
                    <table class = "table table-bordered table-condensed"  id = "id_table">
                        <thead>
                            <tr>
                                <th style="text-align: center">Código</th>
                                <th style="text-align: center">Nombre del proveedor</th>
                                <th style="text-align: center">Contacto</th>
                                <th style="text-align: center">Dirección</th>
                                <th style="text-align: center">Celular</th>
                                <th style="text-align: center">Email</th>
                            </tr>               
                        </thead>
                        <tbody>
                            <c:forEach items = "${proveedores}" var = "proveedor">    
                                <tr>
                                    <td><c:out value="${proveedor.proCod}"/> </td>
                                    <td><c:out value="${proveedor.proDet}"/></td>
                                    <td><c:out value="${proveedor.proCon}"/></td>
                                    <td><c:out value="${proveedor.proDir}"/></td>
                                    <td style="text-align: center"><c:out value="${proveedor.proTelCel}"/></td>
                                    <td style="text-align: center"><c:out value="${proveedor.proEmail}"/></td>
                                </tr>
                            </c:forEach>  
                        </tbody>
                    </table>       
                </div>

            </div>
        </div>
        <div id="addSupplier" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <div class = "modal-content">
                    <div class = "modal-header">
                        <button type = "button" class = "close" data-dismiss = "modal">&times;</button>
                        <h4 class = "modal-title">Agregar Proveedor</h4>
                    </div>
                    <form role = "form" method = "post" action="${pageContext.request.contextPath}/secured/compras/form_proveedor">
                        <div class="modal-body">
                            <div class = "form-horizontal">
                                <div class = "panel panel-default">
                                    <div class = "panel-heading">
                                        <div class="form-group">
                                            <div class="col-sm-6">                               
                                                <input type="text" class="form-control" placeholder="Código Proveedor" name="codPro">
                                            </div>
                                            <div class="col-sm-6">                               
                                                <input type="text" class="form-control" placeholder="Nombre Proveedor" name="detPro">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="panel-body">
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <label class="control-label">Nombre Contacto</label>
                                                <input type="text" class="form-control" placeholder="Nombre del Contacto" name="conPro">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <label class="control-label">Dirección</label>
                                                <input type="text" class="form-control" placeholder="Dirección" name="dirPro">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <label class="control-label">Teléfono Fijo</label>
                                                <input type="text" class="form-control" placeholder="Teléfono Fijo" name="telFijPro">
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">Teléfono Celular</label>
                                                <input type="text" class="form-control" placeholder="Teléfono Celular" name="telCelPro">
                                            </div>                                
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-6">
                                                <label class="control-label">Email</label>
                                                <input type="text" class="form-control" placeholder="Email" name="emailPro">
                                            </div>
                                            <div class="col-sm-6">
                                                <label class="control-label">Página Web</label>
                                                <input type="text" class="form-control" placeholder="Página web" name="pagWebPro">
                                            </div> 
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-12">
                                                <label class="control-label">Observaciones</label>
                                                <textarea class="form-control" placeholder="Observaciones" name="obsPro" style="resize: vertical;"></textarea>    
                                            </div>                               
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                                        <button type="submit" class="btn btn-default" >Agregar</button>
                                    </div>
                                </div>
                            </div> 
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </jsp:attribute>  
</minierptemplate:template>
