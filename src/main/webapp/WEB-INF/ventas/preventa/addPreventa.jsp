<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Ventas - Preventa</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        
        <div class="panel-body">
            
            <div class="row">
                <div class="col-md-4"><br>
                    <h1 class="page-header">Agregar Preventa</h1>
                </div>
                
            
                <div class="col-md-4 col-md-offset-4"><br>  
                    <div class="form-group input-group" >
                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                        <input type="text" class="form-control" name="usuCod" value="${usuario.usuCod} - ${usuario.usuNom} ${usuario.usuApePat} " readonly>
                    </div>
                    
                </div>            		
            </div>            
            	
            
            <div class="row">
                    <div class="col-lg-12">  
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <form role=form" method="post" action="${pageContext.request.contextPath}/secured/ventas/preventa/addPreventa">                   
                                    <div class="row">
                                        <div class="col-xs-12 col-md-8">
                                            <div class="row">
                                                <div class="col-md-5">
                                                    <div class="form-group input-group">
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        <input type="text" class="form-control" name="facVenCabCod" placeholder="Número de Factura" pattern="[0-9]{3}-[0-9]{6}">
                                                    </div>
                                                </div>
                                                <div class="col-md-7">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Cliente</span>
                                                        <select class="form-control" id="cliCod" name="cliCod">
                                                            <c:forEach items="${clientes}" var="t" varStatus="status">
                                                                <option value="${status.count}">${t.cliNom} ${t.cliApePat} ${t.cliApeMat}</option>
                                                            </c:forEach>
                                                        </select>
                                                        <span class="input-group-addon">
                                                            <a href="#" data-toggle="modal" data-target="#searchClient">
                                                                <i class="fa fa-pencil-square-o" style="color: black;"></i>
                                                            </a>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">IGV</span>
                                                        <input type="number" class="form-control" name="facVenCabIgv" value="${empresa.empIgv}" id="facIgv" readOnly>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        <input type="date" class="form-control" name="facVenCabFec">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                        <select class="form-control" id="tipMon" name="tipMon">
                                                            <c:forEach items="${monedas}" var="m" varStatus="status">
                                                                <option value="${status.count}">${m.monDet}</option>
                                                            </c:forEach>
                                                        </select>                                                 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Duración</span>
                                                        <input type="number" class="form-control" min="1" placeholder=1 id="plazo" name="plazo">
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-xs-6 col-md-4">
                                            <textarea class="form-control" rows="6" name="facVenCabObs" placeholder="Observaciones"></textarea>
                                        </div>
                                    </div>
                                    
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fa fa-plus"></i>Agregar Preventa
                                    </button>
                                </form>  
                            </div>
                        
                            <div class="panel-body">
                            
                            <div class="form-group">
                                <label><h4>Detalle Preventa</h4></label>
                                <table id="tabla_productos" class="table table-hover table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th style="width: 20%">Producto</th>
                                            <th style="width: 20%">Clase</th>
                                            <th style="width: 20%">Cantidad</th>
                                            <th style="width: 20%">Valor Unitario</th>
                                            <th style="width: 20%">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr name="fila_form">
                                            <td><input type="text" class="form-control" placeholder="Producto" name="form_col1" id="form_col1"></td>
                                            <td><input type="text" class="form-control" placeholder="Clase" id="form_col2" ></td>
                                            <td><input type="number" min="1" class="form-control" placeholder="Cnt" id="form_col3" ></td>
                                            <td><input type="number" step="0.001" class="form-control" placeholder="Pre. Uni" id="form_col4" ></td>
                                            <td name="lel">
                                                <button onclick="capturar(4)"><i class="fa fa-plus fa-2x"></i></button>
                                                <button onclick="limpiarFila(4)"><i class="fa fa-trash-o fa-2x"></i></button>
                                                <script>
                                                    var totlFld=0;
                                                    function capturar(numCol){
                                                        var table=document.getElementById("tabla_productos");
                                                        var rowCount = table.rows.length;
                                                        var tr=table.insertRow(rowCount);
                                                        tr.id="tabl_prods_fila"+rowCount;
                                                        var cell=tr.insertCell(0);
                                                        cell.innerHTML='<button onclick="eliminarFila(this.parentNode.parentNode.rowIndex)"><i class="fa fa-trash-o fa-2x"></i></button></td>';
                                                        for(var i=0;i<numCol;i++){
                                                            var cell=tr.insertCell(i);
                                                            var valor=document.getElementById("form_col"+(i+1)).value;
                                                            cell.innerHTML='<td>'+valor+'</td>';
                                                        }
                                                        totlFld+=parseFloat(valor);
                                                        document.getElementById("subtotal").value=totlFld.toFixed(3);
                                                        document.getElementById("total").value=parseFloat(totlFld+totlFld*document.getElementById("igv").value).toFixed(3);
                                                        /***
                                                        * GUARDANDO LOS DATOS DE LA TABLA
                                                        *   */
                                                       for(var i=0;i<rowCount;i++){
                                                           localStorage.setItem('prod_fila'+(i+1),document.getElementById('tabl_prods_fila'+(i+1)).innerHTML);
                                                       }
                                                    };
                                                    function eliminarFila(i){
                                                            document.getElementById("tabla_productos").deleteRow(i);
                                                    };
                                                    function limpiarFila(numCol){
                                                        for(var i=0;i<numCol;i++){
                                                            document.getElementById("form_col"+(i+1)).value="";
                                                        }
                                                    }
                                                </script>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div align="center">
                                    <div class="col-sm-6">Total
                                        <div class="col-sm-6 input-group">                                        
                                            <input type="text" step="0.001" class="form-control"  name="total" id="total" readonly>
                                            <span class="input-group-addon"><i class="fa fa-money"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">Subtotal
                                        <div class="col-sm-6 input-group">                                        
                                            <input type="text" class="form-control" name="subtotal" id="subtotal" readonly>
                                            <span class="input-group-addon"><i class="fa fa-money"></i>
                                            </span>
                                        </div>
                                    </div>
                                    <br>
                                </div>
                                <br>
                                <br>
                                  
                                <div align="center">
                                    
                                    <a onclick="enviarVenta()" class="btn btn-lg btn-success" href="${pageContext.request.contextPath}/secured/ventas/factura/addFactura" role="button">
                                        <i class="fa fa-arrow-right" aria-hidden="true"></i>Generar Venta
                                    </a>
                                    <script>
                                        function enviarVenta(){
                                            var cliFld=document.getElementById("cliCod").value-1;
                                                //var usrFld=document.getElementById("usuCod").value;
                                                var dateFld=document.getElementById("usuFecPreVen").value;
                                                var crncyFld=document.getElementById("tipMon").value;
                                                var igvFld=document.getElementById("igv").value;
                                                var ttlFld=document.getElementById("total").value;
                                                var obsFld=document.getElementById("obsrs").value;
                                            localStorage.removeItem('cliFld');
                                            localStorage.removeItem('usrFld');
                                            localStorage.removeItem('dateFld');
                                            localStorage.removeItem('crncyFld');
                                            localStorage.removeItem('igvFld');
                                            localStorage.removeItem('ttlFld');
                                            localStorage.removeItem('obsFld');
                                            localStorage.setItem('cliFld',cliFld);
                                            localStorage.setItem('dateFld',dateFld);
                                            localStorage.setItem('crncyFld',crncyFld);
                                            localStorage.setItem('igvFld',igvFld);
                                            localStorage.setItem('ttlFld',ttlFld);
                                            localStorage.setItem('obsFld',obsFld);
                                            console.log('asdasd');

                                        }
                                    </script>
                                </div>
                            </div>    
                        </div>
                    
                        </div>
                    </div>
            </div>
        </div>
        <script type="text/javascript">
            var d=new Date();
            document.getElementById("usuFecPreVen").value=d.getFullYear()+'-'+
                    ((d.getMonth()+1)<10 ? '0'+(d.getMonth()+1) : (d.getMonth()+1))+
                    '-'+(d.getDate()<10 ? '0'+d.getDate() : d.getDate());
        </script>
    </jsp:attribute>
</minierptemplate:template>
