<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Logística - Inventario</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">

        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> Inventario </h1>
                </div>
            </div>
            <form id="preventaLoteForm" role="form" action="${pageContext.request.contextPath}/secured/compras/addInventario" method="post">
            <div class="row">
<!--                <div class="col-md-6">
                    <label>Código del producto</label>
                    <div class="form-group input-group">
                        <span class="input-group-addon"><i class="fa fa-barcode"></i></span>
                        <input type="text" class="form-control" id="proCod" name="proCod" placeholder="Código del producto">
                    </div>
                </div>-->
                <div class="col-md-3">
                    <button type="submit" onclick="return updateInventory()" class="btn btn-success"> Actualizar inventario</button>  
                </div>
                <div class="col-md-3">
                    <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=inventario&&jdbc=true&&key=null&&value=null" class="btn btn-outline btn-danger">
                        <i class="fa fa-file-pdf-o"></i>
                        Ultimo Inventario [PDF]
                    </a>
                </div>
           </div>
            <br>
            <div class="row">
                <div class="table-responsive">
                    <table class = "table table-striped table-bordered table-hover"  id = "id_table">
                        <thead>
                            <tr>
                                <th style="text-align: center">Numero</th>
                                <th style="text-align: center">Descripción del producto</th>
                                <th style="text-align: center">Precio</th>
                                <th style="text-align: center" width="15px">Cantidad</th>
                                <th style="text-align: center" width="15px">Actual</th>
                                <th style="text-align: center" width="20px" >Motivo</th>
                                <th style="display:none;"></th>
                                <th style="display:none;"></th>
                                <th style="display:none;"></th>
                            </tr>               
                        </thead>
                        <tbody>
                            <c:set var="count" value="0" scope="page" />
                            <c:forEach items = "${productos}" var = "producto">
                                <tr id="${producto.id.proCod}">
                                    <td style="text-align: center"><c:out value="${count}"/> </td>
                                    <td style="text-align: center"><c:out value="${producto.proDet}"/></td>
                                    <td style="text-align: center"><c:out value="${producto.proPreUniVen}"/></td>
                                    <td style="text-align: center"><c:out value="${producto.proStk}"/></td>
                                    <!--<td contenteditable="true">0</td>-->
                                    <td> <input type="number" step="0.01" name="{producto.id.proCod}" min="0" value="0"> </td>
                                    <td>
                                        <!-- CADA FALLA ES UN SELECT Y LO QUE MANDO AL CONTROLADOR ES SU VALOR,
                                            SU VALOR ES EL CÓDIGO DEL TIPO DE FALLA-->
                                        
                                        <select id="falla${count}" name="falla${count}" class="form-control" style="width: 170px; display: inline-block;">
                                            <option value="">Ninguno</option>
                                            <c:forEach items = "${falla_producto}" var = "falla_producto">
                                            
                                            <option value="${falla_producto.tipFallProCod}"> ${falla_producto.tipFallProDet} </option>
                                        </c:forEach>  
                                        </select>   
                                    </td>
                                    <td style="display:none;"><input type="checkbox" name="proCodigos" value="${producto.id.proCod}" checked></td>
                                    <td style="display:none;"><input type="checkbox" name="proCantidades" value="0" checked></td>
                                    <td style="display:none;"><input type="checkbox" name="proFallas" value="0" checked></td>
                                    <c:set var="count" value="${count + 1}" scope="page"/>
                                </tr>
                            </c:forEach>  
                        </tbody>
                    </table>            
                </div>
            </div>
            </form> 
        </div>
        <script language="javascript"> 
//            var productDescriptions = new Array();
//            
//            
//            <c:forEach items="${productos}" var="p" varStatus="loop">
//                
//                productDescriptions.push("${p.proDet}");
//            </c:forEach>
//                
//            $("#proCod").autocomplete({
//                source: productDescriptions
//            });
            
//            $('#proCod').bind('input', function(){
//                var length = $("#proCod").val().length;
//                if (length >= 13) {  
//                    var actualValue = $("#id_table").find('tr#'+$("#proCod").val()).find('td:eq(4)').html();
//                    $("#id_table").find('tr#'+$("#proCod").val()).find('td:eq(4)').html(parseInt(actualValue)+1);
//                    $("#proCod").val('');
//                }
//            });
            
//            $(document).ready(function () {
//                $('#id_table').DataTable({
//                    responsive: true
//                });
//            });
            
            function updateInventory() {
                var list = [];
                var listF = [];
                $('#id_table tr').each(function () {
                    var can = $(this).find("td").eq(4).html();
                    var fal = $(this).find("select").val();
                    list.push(can);
                    listF.push(fal);
                });
                var i = 1;
                $.each($("input[name='proCantidades']:checked"), function(){
                   $(this).val(list[i]);
                   i++;
                });
                var j=1;
                $.each($("input[name='proFallas']:checked"), function(){
                    console.log(listF[j]);
                   $(this).val(listF[j]);
                   j++;
                });
            };
            
        </script>
    </jsp:attribute>
</minierptemplate:template>
