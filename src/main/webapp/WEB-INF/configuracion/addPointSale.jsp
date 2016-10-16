<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuraciones - Punto de Venta</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
                     
         <div id="pagel-body">
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
        
    </jsp:attribute>
</minierptemplate:template>
