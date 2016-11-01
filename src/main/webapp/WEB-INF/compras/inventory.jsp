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
            <form id="preventaLoteForm" role="form" action="${pageContext.request.contextPath}/secured/compras/inventario" method="post">
           <div class="row">
                <div class="col-md-6">
                    <label>Código del producto</label>
                    <div class="form-group input-group">
                        <span class="input-group-addon"><i class="fa fa-barcode"></i></span>
                        <input type="text" class="form-control" id="proCod" name="proCod" placeholder="Código del producto">
                    </div>
                </div>
                <div class="col-md-3">
                    <button type="submit" onclick="return updateInventory()" class="btn btn-success"> Actualizar inventario</button>  
                </div>
                <div class="col-md-3">
                    <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&report=inventario&&jdbc=false&&key=null&&value=null" class="btn btn-outline btn-danger">
                        <i class="fa fa-file-pdf-o"></i>
                        Descargar Reporte [PDF]
                    </a>
                </div>
           </div>
            <br>
            <div class="row">
                <div class="table-responsive">
                    <table class = "table table-bordered table-condensed"  id = "id_table">
                        <thead>
                            <tr>
                                <th style="text-align: center">Código</th>
                                <th style="text-align: center">Descripción del producto</th>
                                <th style="text-align: center">Precio</th>
                                <th style="text-align: center">Cantidad</th>
                                <th style="text-align: center">Actual</th>
                                <th style="display:none;"></th>
                                <th style="display:none;"></th>
                            </tr>               
                        </thead>
                        <tbody>
                            <c:forEach items = "${productos}" var = "producto">    
                                <tr id="${producto.id.proCod}">
                                    <td><c:out value="${producto.id.proCod}"/> </td>
                                    <td><c:out value="${producto.proDet}"/></td>
                                    <td><c:out value="${producto.proPreUniVen}"/></td>
                                    <td><c:out value="${producto.proStk}"/></td>
                                    <td>0</td>
                                    <td style="display:none;"><input type="checkbox" name="proCodigos" value="${producto.id.proCod}" checked></td>
                                    <td style="display:none;"><input type="checkbox" name="proCantidades" value="0" checked></td>
                                </tr>
                            </c:forEach>  
                        </tbody>
                    </table>            
                </div>
            </div>
            </form> 
        </div>
        <script language="javascript"> 
            $('#proCod').bind('input', function(){
                var length = $("#proCod").val().length;
                if (length >= 13) {  
                    var actualValue = $("#id_table").find('tr#'+$("#proCod").val()).find('td:eq(4)').html();
                    $("#id_table").find('tr#'+$("#proCod").val()).find('td:eq(4)').html(parseInt(actualValue)+1);
                    $("#proCod").val('');
                }
            });
            
            $('#id_table').DataTable({
                responsive: true
            });
            
            function updateInventory() {
                var list = [];
                $('#id_table tr').each(function () {
                    var can = $(this).find("td").eq(4).html()
                    list.push(can);
                });
                var i = 1;
                $.each($("input[name='proCantidades']:checked"), function(){            
                   $(this).val(list[i]);
                   i++;
                });
            };
            
        </script>
    </jsp:attribute>
</minierptemplate:template>
