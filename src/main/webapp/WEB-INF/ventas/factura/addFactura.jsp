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
                        <div class="panel-heading">
                            <div class=form-group>
                                    <label class="col-sm-2"><h4>Añadir Factura</h4></label>
                            </div>
                            <div class="form-group"> 
                                    <div class="col-sm-6">                               
                                            <input type="text" class="form-control" placeholder="Codidgo Factura" name="CodCabFac">
                                    </div>
                                    <div class="col-sm-6">
                                            <select class="form-control" name="cliCod">
                                                    <option hidden>Cliente</option>
                                                    <option value="1">Roberto Perez Linares</option>
                                                    <option value="2">Josep Pedrerol Tamudo</option>
                                                    <option value="3">Diana Gamarra Florez</option>
                                                    <option value="4">Lucia Quispe Mamani</option>
                                                    <option value="5">Jose Perez Condo</option>
                                                    <option value="6">Juan Carlos Villarin</option>
                                            </select>
                                    </div>                                  
                            </div>

                            <div class="form-group">
                                    <div class="col-sm-6">
                                            <select class="form-control" name="usuCod">
                                                    <option hidden>Usuario</option>
                                                    <option value="1">Roberto Perez Linares</option>
                                                    <option value="2">Josep Pedrerol Tamudo</option>
                                                    <option value="3">Diana Gamarra Florez</option>
                                                    <option value="4">Lucia Quispe Mamani</option>
                                                    <option value="5">Jose Perez Condo</option>
                                                    <option value="6">Juan Carlos Villarin</option>
                                            </select>
                                    </div> 
                                    <div class="col-sm-3">
                                            <input placeholder="Fecha de venta" type='text' class="form-control" name="usuFecVen"/>
                                    </div>

                                    <div class="col-sm-3">
                                            <div class="input-group">
                                                    <input type="text" class="form-control" placeholder="Total" name="total">
                                                    <span class="input-group-addon"><i class="fa fa-money"></i>
                                                    </span>                                        
                                            </div>                                              
                                    </div>

                            </div>
                        </div>
                        <div class="panel-body">
                            <form role=form" method="post" action="${pageContext.request.contextPath}/secured/ventas/factura/addFactura">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                            <label class="control-label">Método de Pago</label> 
                                            <select class="form-control" name="metPagCod">
                                                    <option value="1">Credito</option>
                                                    <option value="2">Al Contado</option>
                                                    <option value="6" selected="selected">Ninguna</option>
                                            </select>
                                            <label class="control-label">Tipo de Moneda</label>                                
                                            <select class="form-control" name="tipMon">
                                                    <option value="1">Soles</option>
                                                    <option value="2">Dolares</option>
                                                    <option value="6" selected="selected">Ninguna</option>
                                            </select>
                                            <label class="control-label">IGV</label>  
                                            <div class="input-group">                                        
                                                    <input type="text" class="form-control" placeholder="19%" name="igv">
                                                    <span class="input-group-addon"><i class="fa fa-money"></i>
                                                    </span>
                                            </div>
                                    </div>
                                    <div class="col-sm-6">
                                            <label class="control-label">Observaciones</label>
                                            <textarea class="form-control" rows="7">

                                            </textarea>
                                    </div>
                                </div>                                                                                                    
                            </form>
                            <div class="form-group">
                                <label class="col-sm-2"><h4>Detalle Factura</h4></label>
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

                                    </tbody>
                                </table>  
                                <table class="table table-hover">
                                    <tbody>                      
                                        <tr name="fila">
                                            <td><input type="text" class="form-control" placeholder="Producto" id="form_col1"></td>
                                            <td><input type="text" class="form-control" placeholder="Clase" id="form_col2" ></td>
                                            <td><input type="text" class="form-control" placeholder="Cnt" id="form_col3" ></td>
                                            <td><input type="text" class="form-control" placeholder="Pre. Uni" id="form_col4" ></td>
                                            <td name="lel">
                                                <button onclick="capturar(4)"><i class="fa fa-plus fa-2x"></i></button>
                                                <button onclick="limpiarFila(4)"><i class="fa fa-trash-o fa-2x"></i></button>
                                                <script>
                                                    function capturar(numCol){
                                                        var table=document.getElementById("tabla_productos");
                                                        var rowCount = table.rows.length;
                                                        var tr=table.insertRow(rowCount);
                                                        var cell=tr.insertCell(0);
                                                        cell.innerHTML='<button onclick="eliminarFila(this.parentNode.parentNode.rowIndex)"><i class="fa fa-trash-o fa-2x"></i></button></td>';
                                                        for(var i=0;i<numCol;i++){
                                                            var cell=tr.insertCell(i);
                                                            var valor=document.getElementById("form_col"+(i+1)).value;
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
                                                            document.getElementById("form_col"+(i+1)).value="";
                                                        }
                                                    }
                                                </script>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>                                                              
                                <button type="submit" class="btn btn-lg btn-success btn-block">
                                    <i class="fa fa-plus"></i>Agregar Factura
                                </button>
                            </div>    
                        </div>                                                                
                    </div>
            </div>
        
        <script type="text/javascript">
            $(document).ready(function(){
                $('#datetimepicker1').datetimepicker({
                    format: 'DD/MM/YYYY'
                });
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>