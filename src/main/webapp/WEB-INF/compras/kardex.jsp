<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Logística - Kardex</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header">kardex</h1>
            <br>
           <form role="form"  method="post" action="${pageContext.request.contextPath}/secured/compras/kardexInicio">
                <label class="col-sm-2 control-label">Seleccione Producto: </label>
                <div class="col-xs-2">

                    <select class="form-control input-small" name="item">
                        <option value="">Seleccione:</option>
                        <c:forEach items="${productos}" var="p">  
                            <option  value="${p.id.proCod}" >${p.proDet}</option>
                        </c:forEach>
                    </select>
                </div>
            
               
                <div class="col-sm-4">
                <button type="submit" class="btn btn-primary" name="button" value="btn_ver">Ver</button>
                </div>
                
                <button type="submit" class="btn btn-danger" name="button" value="btn_reporteFisico">Reporte Fisico</button>
                <button type="submit" class="btn btn-danger" name="button" value="btn_reporteValor">Reporte Valorizado</button>
            
            </form>

                <br><br>
                <table class="table table-bordered   table-striped">
                    <thead class="thead-inverse" >
                        <tr class="success">
                            <th style="text-align: center;">Fecha</th>
                            <th style="text-align: center;">Nro. Factura </th>
                            <th style="text-align: center;">Producto</th>
                            <th style="text-align: center;">Cantidad Entrada</th>
                            <th style="text-align: center;">Precio Unitario</th>
                            <th style="text-align: center;">Precio Total</th>
                            <th style="text-align: center;">Cantidad Salida</th>
                            <th style="text-align: center;">Precio Unitario</th>
                            <th style="text-align: center;">Precio Total</th>
                            <th style="text-align: center;">Cantidad Saldo</th>
                            <th style="text-align: center;">Precio Unitario</th>
                            <th style="text-align: center;">Precio Total</th>
                            
                        </tr>
                    </thead>
                    
                    <tbody>
                        <c:forEach items="${registros}" var="u">
                            <tr>
                                <td style="text-align: center;"><fmt:formatDate value="${u.fecha}" pattern="dd/MM/yyyy"/></td>
                                <td style="text-align: center;">${u.numero_factura}</td>
                                <td style="text-align: center;">${u.producto}</td>
                                <td style="text-align: center;">${u.cantidad_entrada}</td>
                                <td style="text-align: center;">${u.precio_unitario_entrada}</td>
                                <td class="info" style="text-align: center;">${u.precio_total_entrada}</td>
                                <td style="text-align: center;">${u.cantidad_salida}</td>
                                <td style="text-align: center;">${u.precio_unitario_salida}</td>
                                <td class="info" style="text-align: center;">${u.precio_total_salida}</td>
                                <td style="text-align: center;">${u.cantidad_saldo}</td>
                                <td style="text-align: center;">${u.precio_unitario_saldo}</td>
                                <td class="info" style="text-align: center;">${u.precio_total_saldo}</td>

                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
           

        </div>
    </jsp:attribute>
</minierptemplate:template>