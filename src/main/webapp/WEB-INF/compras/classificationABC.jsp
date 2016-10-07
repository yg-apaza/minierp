<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Clasificación ABC</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div id ="wrapper">
            <div class="navbar-default sidebar">
                <div class="sidebar-nav">
                    <ul class="nav" id="side-menu">
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
                                    <a href="#">Inventarios</a>
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
                                <select class = "form-control" style = "width: 70px; display: inline-block;">
                                    <option> A </option>
                                    <option> B </option>
                                    <option> C </option>
                                </select>
                                <button class="btn btn-success" style="float: right; display: block;"> Generar reporte </button>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div>
                    <table class = "table table-bordered table-condensed table-striped">
                    <thead>
                        <tr>
                            <th>Código</th>
                            <th>Descripción del producto</th>
                            <th>Precio</th>
                            <th>Cantidad</th>
                        </tr>               
                    </thead>
                    <tbody>
                        <c:forEach items ="${productos}" var = "producto">
                            <tr>
                                <td><c:out value="${producto.id.proCod}" /></td>
                                <td><c:out value="${producto.proDet}" /></td>
                                <td><c:out value="${producto.proPreUni}" /></td>
                                <td><c:out value="${producto.proStk}" /></td>
                            </tr>
                        </c:forEach>                    
                    </tbody>
                </table>            
                </div> 
        </div>
        
    </jsp:attribute>  
</minierptemplate:template>
