<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Logística - Clasificación ABC</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/jquery.PrintArea.js"></script>
        
        <div id ="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <br><h1 class="page-header"> Clasificación ABC </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="col-xs-4">
                        <label for = "clase"> Clase del producto: </label>
                        <select class = "form-control" name = "clase" id="class_select">
                                <option> A </option>
                                <option> B </option>
                                <option> C </option>  
                        </select>  
                    </div>
                </div>
            </div>
            <br>
            <div class="row" id="printarea">
                <div class="col-lg-12"><div class="col-xs-12">
                <div class="table-responsive">
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
                </div></div>
            </div>
            
            <div class="row">
                <div class="col-lg-12">  
                    <div class="col-xs-4">
                        <a href="#" class="btn btn-success" id="printbtn"> Generar reporte </a> 
                    </div>
                </div>
            </div>
        </div>
        <script>
            document.getElementById("class_select").selectedIndex = 0;
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
                            
                            });                        
                        }
                    );
            
                    $("#printbtn").click(
                        function print(){
                            var mode = 'iframe';
                            var close = mode == "popup";
                            var options = {mode: mode, popClose: close};
                            $("#printarea").printArea(options);
                        }

                    );
                }
            );
            
        </script>
    </jsp:attribute>  
</minierptemplate:template>
