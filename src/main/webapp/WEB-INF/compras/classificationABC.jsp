<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Clasificación ABC</title>
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
                        <br><h1 class="page-header"> Clasificación ABC </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <label for = "clase" style = "margin-right: 20px;"> Clase del producto: </label>
                                    <select class = "form-control" name = "clase" id="class_select" style = "width: 70px; display: inline-block;">
                                        <option> A </option>
                                        <option> B </option>
                                        <option> C </option>
                                    </select>
                                    <button class="btn btn-success" style="float: right; display: block;" onclick=""> Generar reporte </button> 
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
                         <c:forEach items = "${productos}" var = "producto">    
                            <tr>
                                <td><c:out value="${producto.id.proCod}"/> </td>
                                <td><c:out value="${producto.proDet}"/></td>
                                <td><c:out value="${producto.proPreUni}"/></td>
                                <td><c:out value="${producto.proStk}"/></td>
                            </tr>
                        </c:forEach>  
                    </tbody>
                </table>            
                </div>
        </div>
        <script>
            $(document).ready(
                    
                function(){
                    $("#class_select").change(
                        function(){
                            
                            var clase = $("#class_select").val();
                            $("#id_table").find("tr:gt(0)").remove();
                            $.get('clasificacionABC',{clase: clase},function(productosR){
                            
                                var productos = productosR;
                                
                                var posdet = productos.search("proDet");
                                
                                while(posdet!=-1)
                                {
                                    var subcadena = productos.substring(posdet+7);
                                    var poscom = subcadena.search(",");
                                    var detalle = subcadena.substring(0,poscom);
                                                                       
                                    subcadena = subcadena.substring(poscom+12);
                                    poscom = subcadena.search(",");
                                    var precio = subcadena.substring(0,poscom);

                                    subcadena = subcadena.substring(poscom+9);
                                    poscom = subcadena.search(",");
                                    var cantidad = subcadena.substring(0,poscom);
                                    
                                    $("#id_table").append($("<tr>").append("<td>#</td>"+
                                                                        "<td>"+detalle+"</td>"+
                                                                        "<td>"+precio+"</td>"+
                                                                        "<td>"+cantidad+"</td>"));
                                    
                                    posdet = subcadena.search("proDet");
                                    productos = subcadena;
                                }
                            /*$("#productitos").data(productosR);
                            
                            var productillos = $("#productitos");
                            
                            alert(productillos.attr('proDet'));*/
                                   
                            
                            });                        
                        }
                    );
                }
            );
        </script>
    </jsp:attribute>  
</minierptemplate:template>
