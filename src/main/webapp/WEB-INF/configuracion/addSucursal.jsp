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
                        <br><h1 class="page-header"> Agregar Sucursal </h1>
                    </div>
                </div>
                <form class="form-group-sm" id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/configuracion/addsucursal"> 
                    <label class = "form-control" for = "sucCod"> Codigo: </label>
                    <input class = "form-control" name = "sucCod" type = "text" placeholder = "Codigo de la Sucursal">
                    <br>
                    <label class = "form-control" for = "sucDes"> Descripcion de la Sucursal: </label>
                    <input class = "form-control" name = "sucDes" type = "text" placeholder = "Nombre de la Sucursal">
                    <br>
                    <label class = "form-control" for = "sucDir"> Dirección: </label>
                    <input class = "form-control" name = "sucDir" type = "text" placeholder = "Distrito, Provincia,País">
                    <br>
                    
                    <br>
                    <button type="submit" class="btn btn-primary"> Agregar</button> 
                </form>
	      
        </div>        
        </div>
    </jsp:attribute>
</minierptemplate:template>
