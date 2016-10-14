<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Configuraciones </title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
                     
        <div id="wrapper">
            <div class="navbar-default sidebar">
                <div class="sidebar-nav">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/secured/configuracion"><i class="fa fa-dashboard fa-fw"></i> Panel General</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-group fa-fw"></i> Configuracion<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/configuracion/empresa">Datos de la Empresa</a>
                                </li>
                                <li>
                                   <a href="${pageContext.request.contextPath}/secured/configuracion/sucursal">Sucursal</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/configuracion/puntodeventa">Punto de Venta</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
                                
        <div id="page-wrapper">
             <div class="row">
                    <div class="col-lg-12">
                        <br><h1 class="page-header"> Agregar Punto de Venta </h1>
                    </div>
                </div>
                <form class="form-group-sm" id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/configuracion/addpuntoventa"> 
                    <label class = "form-control" for = "punVenCod"> Codigo de Punto de Venta: </label>
                    <input class = "form-control" name = "punVenCod" type = "text" placeholder = "Codigo de Punto de Venta">
                    <br>
                    <label class = "form-control" for = "sucCod"> Codigo de la Sucursal: </label>
                    <input class = "form-control" name = "sucCod" type = "text" placeholder = "Codigo de Sucursal">
                    <br>
                    <label class = "form-control" for = "punVenDes"> Nombre del Punto de venta: </label>
                    <input class = "form-control" name = "punVenDes" type = "text" placeholder = "Nombre del punto de Venta">
                    <br>
                    
                    <br>
                    <button type="submit" class="btn btn-primary"> Agregar</button> 
                </form>
	      
        </div>        
        </div>
    </jsp:attribute>
</minierptemplate:template>
