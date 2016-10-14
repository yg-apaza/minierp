<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Inventario</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
     
        <div id="pagel-body">
            <div class="row">
                <div class="col-lg-12">
                    <br><h1 class="page-header"> Inventario </h1>
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
        </jsp:attribute>

    </minierptemplate:template>
