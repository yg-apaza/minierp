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
           <div class="row">
                <div class="col-lg-7">
                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#addInventory"> Hacer inventario <i class="fa fa-plus"></i></button>                
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
                
                <div class="modal fade" id="addInventory">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">Añadir Producto</h4>
                        </div>
                        <form id="updForm" method="post" action="${pageContext.request.contextPath}/secured/compras/inventario">
                            <div class="modal-body">
                                <input type="hidden" name="action" value="upd">
                                <div class="col-md-12 form-group input-group">
                                    <div class="col-xs-12 col-md-12">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon"><i class="fa fa-barcode"></i></span>
                                            <input type="text" class="form-control" name="proCodUpd" placeholder="Código del producto">
                                        </div>
                                    </div>
                                    <div class="col-xs-12 col-md-6">
                                        <div class="form-group input-group">
                                            <span class="input-group-addon">Cantidad</span>                                                            
                                            <input type="number" class="form-control" name="proCanUpd" min="1.0" step="any" value="1.0">
                                            <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                                <button type="submit" class="btn btn-success">Aceptar</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div> 
        </div>
        <script language="javascript">    
            $("#updForm").validate({
                rules: {
                    proCodUpd: {
                        required: true
                    },
                },
                messages: {
                    proCanUpd: {
                        required: "Ingrese o escanee el código del producto"
                    },
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>
