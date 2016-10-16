<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Logística - Clasificación ABC</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.min"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.validate.min"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.PrintArea.js"></script>
        
        <div id ="panel-body">
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
                            <button class="btn btn-success" id="printbtn" style="float: right; display: block;"> Generar reporte </button> 
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div id="printarea">
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
                    <c:forEach items = "${productosA}" var = "producto">    
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
            document.getElementById("class_select").selectedIndex = 0;
            $(document).ready(
                    
                function(){
                    $("#class_select").change(
                        function(){
                            
                            var clase = $("#class_select").val();
                            $("#id_table").find("tr:gt(0)").remove();
                            
                            switch (clase){
                                
                                case 'A':   <c:forEach items = "${productosA}" var = "producto">
                                            $("#id_table").append($("<tr>").append(
                                                                    "<td>"+"<c:out value="${producto.id.proCod}"/>"+"</td>"+
                                                                    "<td>"+"<c:out value="${producto.proDet}"/>"+"</td>"+
                                                                    "<td>"+"<c:out value="${producto.proPreUni}"/>"+"</td>"+
                                                                    "<td>"+"<c:out value="${producto.proStk}"/>"+"</td>"));
                                            </c:forEach>
                                    break;
                                case 'B':   <c:forEach items = "${productosB}" var = "producto">
                                            $("#id_table").append($("<tr>").append(
                                                                    "<td>"+"<c:out value="${producto.id.proCod}"/>"+"</td>"+
                                                                    "<td>"+"<c:out value="${producto.proDet}"/>"+"</td>"+
                                                                    "<td>"+"<c:out value="${producto.proPreUni}"/>"+"</td>"+
                                                                    "<td>"+"<c:out value="${producto.proStk}"/>"+"</td>"));
                                            </c:forEach>
                                    break;
                                case 'C':    <c:forEach items = "${productosC}" var = "producto">
                                            $("#id_table").append($("<tr>").append(
                                                                    "<td>"+"<c:out value="${producto.id.proCod}"/>"+"</td>"+
                                                                    "<td>"+"<c:out value="${producto.proDet}"/>"+"</td>"+
                                                                    "<td>"+"<c:out value="${producto.proPreUni}"/>"+"</td>"+
                                                                    "<td>"+"<c:out value="${producto.proStk}"/>"+"</td>"));
                                            </c:forEach>
                                    break;
                                default:
                                    break;
                            }
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
