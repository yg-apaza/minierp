<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Clasificaci�n ABC</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.min"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.validate.min"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.PrintArea.js"></script>
        
        <div id ="wrapper">
            <div class="navbar-default sidebar">
                <div class="sidebar-nav">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/secured/compras"><i class="fa fa-dashboard fa-fw"></i> Panel General</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-group fa-fw"></i> Log�stica<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Kardex</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/compras/clasificacionABC">Clasificaci�n ABC</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/compras/inventario">Inventario</a>
                                </li>
                                 <li>
                                    <a href="${pageContext.request.contextPath}/secured/compras/limiteMaximo">Stock</a>
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
                        <br><h1 class="page-header"> Proveedores </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading" style="height: 55px;">
                                <button class="btn btn-success" id="addbtn" style="float: right; display: block;"> Agregar nuevo </button> 
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div id="printarea">
                    <table class = "table table-bordered table-condensed"  id = "id_table">
                    <thead>
                        <tr>
                            <th style="text-align: center">C�digo</th>
                            <th style="text-align: center">Nombre del proveedor</th>
                            <th style="text-align: center">Contacto</th>
                            <th style="text-align: center">Direcci�n</th>
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
        <script>
            $(document).ready(
                 
                 function(){
                     
                    $("#addbtn").click(
                        function(){
                            window.location.href="${pageContext.request.contextPath}/secured/compras/form_proveedor";
                        }
                    );
                 }
            );     
        </script>
    </jsp:attribute>  
</minierptemplate:template>