<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Logística - Stock</title>
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
                <div class="col-lg-10">
                    <label for = "clase" style = "margin-right: 20px;"> Stock: </label>
                    <select class = "form-control" style = "width: 170px; display: inline-block;" onChange="Show(value,limitMin,limitMax);">
                        <option value="1"> Stock Máximo </option>
                        <option value="2"> Stock Mínimo </option>
                    </select>
                </div>    
                <div class="col-lg-2">
                    <button onClick = "imprSelec('limitMax')" target="_parent" class="btn btn-success"> Imprimir reporte </button>    
                </div>
            </div>
            <!--Contenido de Stock Maximo-->
            <div id="limitMax">
                <br>
                <div class="row">
                    <c:forEach items="${productos}" var="productos">
                        <c:if test="${productos.proStk > productos.proStkMax}">
                            <c:set var="alerta" value="${alerta+1}"/>
                        </c:if>
                    </c:forEach>
                    <div class="col-lg-12">
                        <c:choose>
                            <c:when test="${alerta != 0}">
                                <div class="alert alert-danger alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                        Se ha sobrepasado el limite maximo, para una posterior adquisición de productos se debe tomar en cuenta el límite máximo de 
                                        compra de cada producto que podría ser perjudicial para el futuro financiero de la empresa.
                                </div>    
                            </c:when>
                            <c:otherwise>
                                <div class="alert alert-success alert-dismissable">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                        Todos los productos se encuentran por debajo del límite máximo.
                                </div>
                            </c:otherwise>
                        </c:choose>    
                    </div>
		</div>
		<div class="row">
                    <div class="col-lg-12">
                        <br/>
                        <label> Los siguientes productos han sobrepasado el límite máximo: </label>
                        <br>
                        <div class="table-responsive">
                            <table class="table table-bordered table-striped table-hover" id="productTableM">
                                <thead>
                                    <tr>    
                                        <th> Código </th>
                                        <th>Producto</th>
                                        <th>Stock Actual</th>
                                        <th>Stock Máximo</th>
                                        <th>Stock-StockMax</th>
                                    </tr>
                                </thead>
                                <tbody>
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
                                </tbody>
                            </table>
                        </div>
                    </div>
		</div>
            </div>
            <!--Contenido de Stock minimo-->
            <br/>
            <div id="limitMin" hidden="hidden">
                <div class="row">
                    <c:forEach items="${productos}" var="productos">
                        <c:if test="${productos.proStk < productos.proStkMin}">
                            <c:set var="alertamin" value="${alertamin+1}"/>
                        </c:if>
                    </c:forEach>
                        <div class="col-lg-12">
                            <c:choose>
                                <c:when test="${alertamin != 0}">
                                    <div class="alert alert-danger alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                            Se ha bajado del límite mínimo del stock de los siguientes productos
                                            es necesario hacer el pedido de dichos productos lo antes posible.
                                        </div>     
                                </c:when>
                                <c:otherwise>
                                    <div class="alert alert-success alert-dismissable">
                                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                            Todos los productos se encuentran por encima del límite mínimo.
                                    </div>       
                                </c:otherwise>
                            </c:choose> 
                        </div>
		</div>
                
		<div class="row">
                        <div class="col-lg-12">
                            <label> Los siguientes productos han bajado del límite mínimo: </label>
                            <br/>
                            <div class="table-responsive">
                                <table class="table table-bordered table-striped table-hover" id="productTableM">
                                    <thead>
                                        <tr>    
                                            <th> Código </th>
                                            <th>Producto</th>
                                            <th>Stock Actual</th>
                                            <th>Stock Mínimo</th>
                                            <th>Stock-StockMin</th>
                                        </tr>
                                    </thead>
                                    <tbody>
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
                                    </tbody>
                                </table>
                            </div>
                        </div>
		</div>
		
            </div>
            <!--Contenido de stock minimo-->
	</div>    
       
    <script type="text/javascript" language="javasript">
        $('#productTableM').DataTable({
            responsive: true
        });
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
