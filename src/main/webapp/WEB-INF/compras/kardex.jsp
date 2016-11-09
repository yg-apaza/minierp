<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Logística - Kardex</title>
    </jsp:attribute>
        <jsp:attribute name="contenido">
<!--            <script src="js/bootstrap.min.js" type="text/javascript"></script>
            <script src="js/datatables/jquery.dataTables.js" type="text/javascript"></script>
            <script src="js/datatables/dataTables.bootstrap.js" type="text/javascript"></script>-->
            <script type="text/javascript">
               $(function() {
                $("#table1").dataTable({
                    "iDisplayLength": 10,
                    "aLengthMenu": [[10, 25, 50, 100,  -1], [10, 25, 50, 100, "Todos"]]
                   });
               });
            </script>
            <script type="text/javascript" language="javasript">
            var idProducto="";
            var nombreProducto="";
            var kardexf="kardexfisico";
            var kardexv="kardexvalorizado";
            
            function cambiom()
            {
                kardexf="kardexfisico";
                kardexv="kardexvalorizado";
            }
            function cambiop()
            {
                kardexf="kardexfisicopeps";
                kardexv="kardexvalorizadopeps";
            }
            function Show(valor)
            {
                 if(valor !== "")
                
               
                {   
                    var valarray=valor.split(',');
                    idProducto=valarray[0];
                    nombreProducto=valarray[1];
                    localStorage.setItem("nomProd",nombreProducto );
                    localStorage.setItem("idProd",idProducto );
                }       
            }
            
        </script>
        

        
        
        <div class="panel-body">
            
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> Kardex</h1>
                </div>
            </div>
            
            <br>
            
            <div class="row">
                <form role="form"  method="post" action="${pageContext.request.contextPath}/secured/compras/kardex">
 
                    <div class="col-lg-4">
                        <div class="col-xs-12">
                            <label>Seleccione Producto: </label>
                        </div>
                        <div class="col-xs-9"> 
                            <select class="form-control input-small" name="item" onChange="Show(value);">
                            <option id="sel" value="">Seleccione:</option>
                            <c:forEach items="${productos}" var="p">  
                                <option type="submit" value="${p.id.proCod},${p.proDet}" >${p.proDet}</option> 
                            </c:forEach>
                            </select>
                        </div>
                        <div class="col-xs-3">
                            <button type="submit" class="btn btn-primary" name="button" value="btn_ver" >Ver</button>
                            
                        </div>
                    </div>
                    <div class="col-lg-2">

                        <div class="col-xs-12">
                            <label>Tipo: </label>
                        </div>
                        <div class="col-xs-6">
                            <label><input class="radio" type="radio" name="optradio" value="prom" checked onclick="cambiom()">Prom.</label>
                        </div>
                        <div class="col-xs-6">
                            <label><input class="radio" type="radio" name="optradio" value="peps" onclick="cambiop()">PEPS</label>
                        </div>
                        
                        
                    </div>
                    <div class="col-lg-3">
                        <div class="col-xs-12">
                            <label>Kardex Físico</label>
                        </div>
                        <div class="col-xs-12">
                            <a  href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&jdbc=true&&key=PRODUCTO_ID&&value=" class="btn btn-danger" onclick="location.href=this.href+idProducto+'\&report='+kardexf;return false;">
                                <i class="fa fa-file-pdf-o"></i>
                            </a>
                            <a  href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&jdbc=true&&key=PRODUCTO_ID&&value=" class="btn btn-success" onclick="location.href=this.href+idProducto+'\&report='+kardexf;return false;">
                                <i class="fa fa-file-excel-o"></i>
                            </a>
                            <a  href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&jdbc=true&&key=PRODUCTO_ID&&value=" class="btn  btn-primary" onclick="location.href=this.href+idProducto+'\&report='+kardexf;return false;">
                                <i class="fa fa-file-word-o"></i>
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-3">  
                        <div class="col-xs-12">
                            <label>Kardex Valorado</label>
                        </div>
                        
                        <div class="col-xs-12">
                            <a href="${pageContext.request.contextPath}/secured/general/reporte?type=pdf&&jdbc=true&&key=PRODUCTO_ID&&value=" class="btn  btn-danger" onclick="location.href=this.href+idProducto+'\&report='+kardexv;return false;">
                                <i class="fa fa-file-pdf-o"></i>
                            </a>
                            <a href="${pageContext.request.contextPath}/secured/general/reporte?type=xls&&jdbc=true&&key=PRODUCTO_ID&&value=" class="btn  btn-success" onclick="location.href=this.href+idProducto+'\&report='+kardexv;return false;">
                                <i class="fa fa-file-excel-o"></i>
                            </a>
                            <a href="${pageContext.request.contextPath}/secured/general/reporte?type=doc&&jdbc=true&&key=PRODUCTO_ID&&value=" class="btn  btn-primary" onclick="location.href=this.href+idProducto+'\&report='+kardexv;return false;">
                                <i class="fa fa-file-word-o"></i>
                            </a>
                        </div>
                       
                    </div>
                    <br>
                    
                </form>    
            </div>
            
                <br><br>
                <div class="row">
                <div class="table-responsive">
                    
                    <table class="table table-bordered table-condensed" width="1600" id="table1">
                        <thead class="thead-inverse" >
                            <tr class="success">
                                <th style="text-align: center;">Fecha</th>
                                <th style="text-align: center;">Glosa </th>
                                <th style="text-align: center;">Operacion </th>
                                <th style="text-align: center;">Nro. </th>
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
                                    <td style="text-align: center;">${u.glosa}</td>
                                    <td style="text-align: center;">${u.tipo_operacion}</td>
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
            </div>
          
        </div>
        <script>
            if (typeof(Storage) !== "undefined") {
                document.getElementById("sel").innerHTML = localStorage.getItem("nomProd");
                var element=document.getElementById("sel");
                element.value=localStorage.getItem("idProd")+","+localStorage.getItem("nomProd");
                idProducto=localStorage.getItem("idProd");
            }
        </script>
    </jsp:attribute>
</minierptemplate:template>
