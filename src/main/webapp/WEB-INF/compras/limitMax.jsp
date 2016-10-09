<%-- 
    Document   : limitMax
    Created on : 08/10/2016, 06:20:49 PM
    Author     : User
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Clasificaci�n ABC</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
        <script type="text/javascript" language="javasript">
            function Show(valor, min, max)
            {
                if(valor === "1")
                {   
                    var d = document.getElementById(valor); 
                    min.setAttribute("hidden", "hidden");
                    max.removeAttribute('hidden');
                }
                if(valor === "2")
                {
                    max.setAttribute("hidden", "hidden");
                    min.removeAttribute('hidden');
                }    
            }
        </script>
        
        
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
                                    <a href="#">Inventarios</a>
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
        </div> 
       <div id="page-wrapper">
	<!--Barra de opciones-->
            <div class="row">
                <br/>
                    <div class="panel panel-primary" style="margin-bottom: -20px;">
                            <div class="panel-heading">
                                <label for = "clase" style = "margin-right: 20px;"> Stock: </label>
                                <select class = "form-control" style = "width: 170px; display: inline-block;" onChange="Show(value,limitMin,limitMax);">
                                    <option value="1"> Stock Maximo </option>
                                    <option value="2"> Stock Minimo </option>
                                   <!--
                                   <select class = "form-control" style = "width: 170px; display: inline-block;" onChange="window.location.href=this.value">
                                   <option value="${pageContext.request.contextPath}/secured/compras/limiteMaximo"> Stock Minimo </option> -->
                                </select>
                                <button class="btn btn-success" style="float: right; display: block;"> Generar reporte </button>
                            </div>
                    </div>
                   
                </div>
           <!--Contenido de Stock Maximo-->
           <div id="limitMax">
		<div class="row">
			<h2 class="page-header"> Los siguientes productos han sobrepasado el l�mite maximo: </h2>
			<table class="table table-bordered table-striped table-hover" id="productTableM">
				<tr>    
                                       <th> Codigo </th>
					<th>Producto</th>
					<th>Stock Actual</th>
					<th>Stock Maximo</th>
					<th>Stock-StockMax</th>
				</tr>
                                <c:forEach items="${productos}" var="productos">
                                    <c:if test="${productos.proStk > productos.proStkMax}">
                                    <tr>
                                        <td value="${productos}"> ${productos.id.proCod} </td> 
                                        <td value="${productos}"> ${productos.proDet} </td> 
                                        <td value="${productos}"> ${productos.proStk} </td> 
                                        <td value="${productos}"> ${productos.proStkMax} </td>
                                        <td value="${productos}"> ${productos.proStk-productos.proStkMax} </td>
                                    </tr> 
                                    </c:if>
                                </c:forEach>
				
				
			</table>
		</div>

		<div class="row">
                        <div class="col-md-1">
                            <br/>
                        <img src="${pageContext.request.contextPath}/img/Alerta4.PNG" class="img-responsive" alt="MiniERP"/>
                        </div>
			<div class="col-md-11"><h3>Para una posterior adquisici�n de productos se debe tomar en cuenta el limite maximo de compra de cada producto que podria ser perjudicial para el futuro financiero de la empresa </h3>
			</div>
		</div>
            </div>
            <!--Contenido de Stock minimo-->
            <div id="limitMin" hidden="hidden">
		<div class="row">
			<h2 class="page-header"> Los siguientes productos han bajado del limite minimo: </h2>
			<table class="table table-bordered table-striped table-hover" id="productTableM">
				<tr>    
                                       <th> Codigo </th>
					<th>Producto</th>
					<th>Stock Actual</th>
					<th>Stock Minimo</th>
					<th>Stock-StockMin</th>
				</tr>
                                <c:forEach items="${productos}" var="productos">
                                    <c:if test="${productos.proStk < productos.proStkMin}">
                                    <tr>
                                        <td value="${productos}"> ${productos.id.proCod} </td> 
                                        <td value="${productos}"> ${productos.proDet} </td> 
                                        <td value="${productos}"> ${productos.proStk} </td> 
                                        <td value="${productos}"> ${productos.proStkMin} </td>
                                        <td value="${productos}"> ${productos.proStk-productos.proStkMin} </td>
                                    </tr> 
                                    </c:if>
                                </c:forEach>
				
				
			</table>
		</div>

		<div class="row">
                        <div class="col-md-1">
                            <br/>
                        <img src="${pageContext.request.contextPath}/img/Alerta4.PNG" class="img-responsive" alt="MiniERP"/>
                        </div>
			<div class="col-md-11"><h3>Se ha sobrepasado el limite minimo permitido de dichos productos en stock
                            es necesario hacer el pedido de dichos productos lo antes posible </h3>
			</div>
		</div>
            </div>
	<!--Contenido de stock minimo-->
		<br/>

		<!--<div class="row">
			 <center> <button class="btn btn-primary btn-lg">  Continuar </button> </center></div> 
		</div>
		-->
		
	</div>    
        
            </jsp:attribute>  
</minierptemplate:template>
