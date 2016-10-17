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
        <title>Log�stica - Stock</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
       
       <c:set var="alerta" value="0"/>
       <c:set var="alertamin" value="0"/>
        
       <div class="panel-body">
	
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> Stock</h1>
                </div>
            </div> 
        
            <div class="row">
                <br>
                <div class="col-lg-12">
                
                    <label for = "clase" style = "margin-right: 20px;"> Stock: </label>
                    <select class = "form-control" style = "width: 170px; display: inline-block;" onChange="Show(value,limitMin,limitMax);">
                        <option value="1"> Stock Maximo </option>
                        <option value="2"> Stock Minimo </option>
                       <!--
                       <select class = "form-control" style = "width: 170px; display: inline-block;" onChange="window.location.href=this.value">
                       <option value="${pageContext.request.contextPath}/secured/compras/stock"> Stock Minimo </option> -->
                    </select>
                </div>
            </div>
           <!--Contenido de Stock Maximo-->
           <div id="limitMax">
		<div class="row">
                    <div class="col-lg-12">
                        <br/>
                        <label> Los siguientes productos han sobrepasado el l�mite maximo: </label>
                        <br>
                        <div class="table-responsive">
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
                                            <c:set var="alerta" value="${alerta+1}"/>
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
                    </div>
		</div>

		<div class="row">
                        <div class="col-lg-12">
                            
                            <c:choose>
                                <c:when test="${alerta != 0}">
                                    <div class="alert alert-danger alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                        Para una posterior adquisici�n de productos se debe tomar en cuenta el limite maximo de 
                                        compra de cada producto que podria ser perjudicial para el futuro financiero de la empresa
                                    </div>    
                                </c:when>
                                <c:otherwise>
                                    <div class="alert alert-success alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                        Todos los productos se encuentran por debajo del limite maximo.
                                    </div>
                                </c:otherwise>
                            </c:choose>    
                            
                        </div>
		</div>
            </div>
            <!--Contenido de Stock minimo-->
            <br/>
            <div id="limitMin" hidden="hidden">
		<div class="row">
                        <div class="col-lg-12">
                            <label> Los siguientes productos han bajado del limite minimo: </label>
                            <br/>
                            <div class="table-responsive">
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
                                                <c:set var="alertamin" value="${alertamin+1}"/>
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
                        </div>
		</div>

		<div class="row">
                        <div class="col-lg-12">
                            
                            <c:choose>
                                <c:when test="${alertamin != 0}">
                                    <div class="alert alert-danger alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                            Se ha bajado del limite minimo de dichos productos en stock
                                            es necesario hacer el pedido de dichos productos lo antes posible
                                    </div>     
                                </c:when>
                                <c:otherwise>
                                    <div class="alert alert-success alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                            Todos los productos se encuentran por encima del limite minimo.
                                    </div>       
                                 </c:otherwise>
                            </c:choose> 
                        </div>
		</div>
            </div>
            <!--Contenido de stock minimo-->
            <div class="row">
                <div class="col-lg-12">
                    <button onClick = "imprSelec('limitMax')" target="_parent" class="btn btn-success"> Imprimir reporte </button>    
                </div>
            </div>
	</div>    
       
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
            
       
	function imprSelec(nombre) 
	{ 
            var articulo = document.getElementById(nombre); 
            var ventimp = window.open(' ','limitMax','no','no','50','no','no','no','no','no','no','no','no','50'); 
            ventimp.document.write(articulo.innerHTML ); 
            ventimp.document.close(); 
            ventimp.print( ); 
            ventimp.close(); 
	} 
        
        </script>                 
   
        </jsp:attribute>  
</minierptemplate:template>
