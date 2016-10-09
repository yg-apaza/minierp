<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Inventario</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.min"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.validate.min"></script>
        
        <div id ="wrapper">
            <div class="navbar-default sidebar">
                <div class="sidebar-nav">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/secured/compras"><i class="fa fa-dashboard fa-fw"></i> Panel General</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-group fa-fw"></i> Logística<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Kardex</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/compras/clasificacionABC">Clasificación ABC</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/compras/inventario">Inventario</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-truck fa-fw"></i> Compras<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/compras/registerPurchase">Registrar Factura</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <br><h1 class="page-header"> Clasificación ABC </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <label for = "clase" style = "margin-right: 20px;"> Clase del producto: </label>
                                <form>
                                    <select class = "form-control" name = "clase" id="class_select" style = "width: 70px; display: inline-block;">
                                        <option> A </option>
                                        <option> B </option>
                                        <option> C </option>
                                    </select>
                                    <button class="btn btn-success" style="float: right; display: block;" onclick=""> Generar reporte </button>
                                </form>    
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div>
                    <table class = "table table-bordered table-condensed"  id = "id_table">
                    <thead>
                        <tr>
                            <th style="text-align: center">Código</th>
                            <th style="text-align: center">Descripción del producto</th>
                            <th style="text-align: center">Precio</th>
                            <th style="text-align: center">Cantidad</th>
                        </tr>               
                    </thead>
                    <tbody>
                                   
                    </tbody>
                </table>            
                </div>
                
        </div>

    </jsp:attribute>
        
</minierptemplate:template>
