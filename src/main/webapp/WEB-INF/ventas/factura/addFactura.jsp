<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>

<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">

        <div class="container">
            <h1 class="page-header">Agregar Factura</h1>
            <br>			
            <div class="form-horizontal">
                <div class="panel panel-default">
                    <form role=form" method="post" action="${pageContext.request.contextPath}/secured/ventas/factura/addFactura">
                        <div class="panel-heading">

                            <div class=form-group>
                                <label class="col-sm-2"><h4>Añadir Factura</h4></label>
                            </div>
                            <div class="form-group"> 
                                <div class="col-sm-6">                               
                                    <input type="text" class="form-control" placeholder="Codidgo Factura" name="CodCabFac">                                                                                                         
                                </div>
                                <div class="col-sm-6">
                                    <select class="form-control" name="cliCod" id="cliCod">
                                        <c:forEach items="${clientes}" var="t">    
                                            <option value="${t.cliCod}">${t.cliNom} ${t.cliApePat} ${t.cliApeMat}</option>
                                        </c:forEach>
                                    </select>
                                </div>                                  
                            </div>

                            <div class="form-group">
                                <div class="col-sm-6">
                                    <select class="form-control" name="usuCod" id="usuCod">
                                        <c:forEach items="${users}" var="t">    
                                            <option value="${t.usuCod}">${t.usuNom} ${t.usuApePat} ${t.usuApeMat}</option>
                                        </c:forEach>
                                    </select>
                                </div> 
                                <div class="col-sm-3">
                                    <input placeholder="Fecha de venta" type='text' class="form-control" name="usuFecVen" id="usuFecVen"/>
                                </div>

                                <div class="col-sm-3">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Total" name="total" id="total">
                                        <span class="input-group-addon"><i class="fa fa-money"></i>
                                        </span>                                        
                                    </div>                                              
                                </div>

                            </div>

                        </div>

                        <div class="panel-body"> 

                            <div class="form-group">

                                <div class="col-sm-6">
                                    <label class="control-label">Método de Pago</label> 
                                    <select class="form-control" name="selecMetodoPago" id="metPagCod">
                                        <c:forEach items="${metodosPago}" var="t">    
                                            <option value="${t.metPagCod}">${t.metPagDet}</option>
                                        </c:forEach>
                                    </select>
                                    <label class="control-label">Tipo de Pago</label>                                
                                    <select class="form-control" id="tipPag" name="selectTipPag">
                                        <c:forEach items="${tipoPagos}" var="t">
                                            <option value="${t.tipPagCod}">${t.tipPagDet}</option>
                                        </c:forEach>
                                    </select>
                                    <label class="control-label">Tipo de Moneda</label>                                
                                    <select class="form-control" name="selectTipMon" id="tipMon">
                                        <c:forEach items="${monedas}" var="t">
                                            <option value="${t.monCod}">${t.monDet}</option>
                                        </c:forEach>
                                    </select>
                                    <label class="control-label">IGV</label>  
                                    <div class="input-group">                                        
                                        <input type="text" class="form-control" placeholder="19%" name="igv" id="igv">
                                        <span class="input-group-addon"><i class="fa fa-money"></i>
                                        </span>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <label class="control-label">Observaciones</label>
                                    <textarea class="form-control" rows="7" name="obsrs" id="obsrs">

                                    </textarea>
                                </div>

                            </div>                                                                                                    
                            <div class="form-group">
                                <div>

                                    <label class="col-sm-2"><h4>Detalle Factura</h4></label>
                                    <table id="tabla_productos" class="table table-hover table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th style="width: 15%">Clase</th>
                                                <th style="width: 20%">SubClase</th>
                                                <th style="width: 20%">Producto</th>
                                                <th style="width: 15%">Cantidad</th>
                                                <th style="width: 15%">Valor Unitario</th>
                                                <th style="width: 15%">Acciones</th>
                                        </thead>
                                        <tbody id="body_tabl_prods">
                                        <td>
                                            <select class="form-control" name="clases" id="clases">
                                                <option value=1>Domestico</option>
                                                <option value=2>Casero</option>
                                                <option value=3>De Hogar</option>
                                                <option value=4>Grifos</option>
                                                <option value=5>Varios</option>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" name="subclases" id="subclases">
                                                <option value=1>Barato</option>
                                                <option value=2>No tan barato</option>
                                                <option value=3>Caro y para Hogar</option>
                                                <option value=4>Grifos</option>
                                                <option value=5>Varios</option>
                                            </select>
                                        </td>
                                        <td>
                                            <select class="form-control" name="productos" id="productos">
                                                <option value=1>Pollo</option>
                                                <option value=2>Carne</option>
                                                <option value=3>De Zapatos</option>
                                                <option value=4>Escritorio</option>
                                                <option value=5>Mesa</option>
                                            </select>
                                        </td>
                                        <td><input type="text" class="form-control" placeholder="Cantidad" name="cnt" ></td>
                                        <td><input type="text" class="form-control" placeholder="Pre. Uni" pre="pre" >${precio}</td>
                                        <td><button ><i class="fa fa-plus fa-2x"></i></button>
                                            <button ><i class="fa fa-trash-o fa-2x"></i></button></td>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--
                               <table class="table table-hover">
                                   <tbody>                      
                                       <tr name="fila">
                                           <td><input type="text" class="form-control" placeholder="Clase" id="form_col0" ></td>  
                                           <td><input type="text" class="form-control" placeholder="SubClase" id="form_col1" ></td>
                                           <td><input type="text" class="form-control" placeholder="Producto" id="form_col2"></td>                                            
                                           <td><input type="text" class="form-control" placeholder="Cnt" id="form_col3" ></td>
                                           <td><input type="text" class="form-control" placeholder="Pre. Uni" id="form_col4" ></td>
                                           <td name="lel">
                                               <button onclick="capturar(5)" action="" method=""><i class="fa fa-plus fa-2x"></i></button>
                                               <button onclick="limpiarFila(5)" action="" method=""><i class="fa fa-trash-o fa-2x"></i></button>
                                               <script>
                                                   var cliFldFctr=localStorage.getItem('cliFld');
                                                   var usrFldFctr=localStorage.getItem('usrFld');
                                                   var dateFldFctr=localStorage.getItem('dateFld');
                                                   var crncyFldFctr=localStorage.getItem('crncyFld');
                                                   var igvFldFctr=localStorage.getItem('igvFld');
                                                   var ttlFldFctr=localStorage.getItem('ttlFld');
                                                   var obsFldFctr=localStorage.getItem('obsFld');
                                                   document.getElementById("cliCod").getElementsByTagName("option")[cliFldFctr].selected='selected';
                                                   document.getElementById("usuCod").getElementsByTagName("option")[usrFldFctr].selected='selected';
                                                   document.getElementById("usuFecVen").value=dateFldFctr;
                                                   document.getElementById("tipMon").getElementsByTagName("option")[crncyFldFctr-1].selected='selected';
                                                   document.getElementById("igv").value=igvFldFctr;
                                                   document.getElementById("total").value=ttlFldFctr;
                                                   document.getElementById("obsrs").value=obsFldFctr;
                                                   
                                                   
                                                   
                                                   localStorage.removeItem('cliFld');
                                                   localStorage.removeItem('usrFld');
                                                   localStorage.removeItem('dateFld');
                                                   localStorage.removeItem('crncyFld');
                                                   localStorage.removeItem('igvFld');
                                                   localStorage.removeItem('ttlFld');
                                                   localStorage.removeItem('obsFld');
                                                   
                                                   /*ACCEDIENDO A LOS ITEMS DE LA TABLA GUARDADOS EN LS*/
                                                   var html="",length=localStorage.length;
                                                   for(var j=0;j<length;j++){
                                                       html+='<tr>'+localStorage.getItem('prod_fila'+(j+1))+'</tr>';
                                                       document.getElementById("body_tabl_prods").innerHTML=html;
                                                   }
                                                   for(var k=0;k<length;k++){
                                                       localStorage.removeItem('prod_fila'+(k+1));
                                                   }
                                                   function ca
                            
                            pturar(numCol){
                                                       var table=document.getElementById("tabla_productos");
                                                       var rowCount = table.rows.length;
                                                       var tr=table.insertRow(rowCount);
                                                       var cell=tr.insertCell(0);
                                                       cell.innerHTML='<button onclick="eliminarFila(this.parentNode.parentNode.rowIndex)"><i class="fa fa-trash-o fa-2x"></i></button></td>';
                                                       for(var i=0;i<numCol;i++){
                                                           var cell=tr.insertCell(i);
                                                           var valor=document.getElementById("form_col"+(i)).value;
                                                           cell.innerHTML='<td>'+valor+'</td>';
                                                       }
                                                   };
                                                   function eliminarFila(i){
                                                       console.log("Temp");
                                                           console.log(i);
                                                           document.getElementById("tabla_productos").deleteRow(i);
                                                   };
                                                   function limpiarFila(numCol){
                                                       for(var i=0;i<numCol;i++){
                                                           document.getElementById("form_col"+(i)).value="";
                                                       }
                                                   }
                                               </script>
                                           </td>
                                       </tr>
                                   </tbody>
                               </table>  
                            -->
                            <button type="submit" class="btn btn-lg btn-success btn-block" name="agregarFactura">
                                <i class="fa fa-plus"></i>Agregar Factura
                            </button>

                        </div> 
                    </form>
                </div>                                                                
            </div>
        </div>

        <script type="text/javascript">
            $(document).ready(function () {
                $('#datetimepicker1').datetimepicker({
                    format: 'DD/MM/YYYY'
                });
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>