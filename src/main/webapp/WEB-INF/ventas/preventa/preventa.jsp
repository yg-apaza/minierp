<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Preventa</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        
        <div class="container">
            <h1 class="page-header">Agregar Preventa</h1>
            <br>			
            <div class="form-horizontal">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class=form-group>
                                    <label class="col-sm-2"><h4>Nueva preventa</h4></label>
                            </div>
                            <div class="form-group"> 
                                    <!--div class="col-sm-6">                               
                                            <input type="text" class="form-control" placeholder="Codidgo Factura" id="CodCabFac">                                                                                                         
                                    </div-->
                                    <div class="col-sm-4">
                                            <select class="form-control" id="cliCod">
                                                    <option value="0" hidden>Cliente</option>
                                                    <option value="1">Roberto Perez Linares</option>
                                                    <option value="2">Josep Pedrerol Tamudo</option>
                                                    <option value="3">Diana Gamarra Florez</option>
                                                    <option value="4">Lucia Quispe Mamani</option>
                                                    <option value="5">Jose Perez Condo</option>
                                                    <option value="6">Juan Carlos Villarin</option>
                                            </select>
                                    </div>
                                    <div class="col-sm-4">
                                            <select class="form-control" id="usuCod">
                                                    <option value="0" hidden>Usuario</option>
                                                    <option value="1">Roberto Perez Linares</option>
                                                    <option value="2">Josep Pedrerol Tamudo</option>
                                                    <option value="3">Diana Gamarra Florez</option>
                                                    <option value="4">Lucia Quispe Mamani</option>
                                                    <option value="5">Jose Perez Condo</option>
                                                    <option value="6">Juan Carlos Villarin</option>
                                            </select>
                                    </div>
                                    <div class="col-sm-4">
                                        <div class="input-group date" id="datetimepicker1">
                                            <input placeholder="Fecha de preventa" type="text" class="form-control" id="usuFecPreVen"/>
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        </div>
                                    </div>
                            </div>

                            <!--div class="form-group">
                                     
                                    
                                    <div class="col-sm-3">
                                            <div class="input-group">
                                                    <input type="text" class="form-control" placeholder="Total" name="total">
                                                    <span class="input-group-addon"><i class="fa fa-money"></i>
                                                    </span>                                        
                                            </div>                                              
                                    </div>

                            </div-->
                        </div>
                        <div class="panel-body">
                            <form role=form" method="post" action="${pageContext.request.contextPath}/secured/ventas/factura/addFactura">
                                <div class="form-group">
                                    <div class="col-sm-6">
                                            <label class="control-label">Tipo de Moneda</label>                                
                                            <select class="form-control" id="tipMon">
                                                    <option value="1">Soles</option>
                                                    <option value="2">Dolares</option>
                                                    <option value="3" selected="selected">Ninguna</option>
                                            </select>
                                            <label class="control-label">IGV</label>  
                                            <div class="input-group">                                        
                                                    <input type="text" class="form-control" placeholder="19%" id="igv">
                                                    <span class="input-group-addon"><i class="fa fa-money"></i>
                                                    </span>
                                            </div>
                                            <label class="control-label">Total</label>  
                                            <div class="input-group">                                        
                                                    <input type="text" class="form-control" placeholder="0" id="total">
                                                    <span class="input-group-addon"><i class="fa fa-money"></i>
                                                    </span>
                                            </div>
                                    </div>
                                    <div class="col-sm-6">
                                            <label class="control-label">Observaciones</label>
                                            <textarea class="form-control" rows="7" id="obsrs">
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
                                        <tr name="fila_form">
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
                                                        tr.id="tabl_prods_fila"+rowCount;
                                                        var cell=tr.insertCell(0);
                                                        cell.innerHTML='<button onclick="eliminarFila(this.parentNode.parentNode.rowIndex)"><i class="fa fa-trash-o fa-2x"></i></button></td>';
                                                        for(var i=0;i<numCol;i++){
                                                            var cell=tr.insertCell(i);
                                                            var valor=document.getElementById("form_col"+(i+1)).value;
                                                            cell.innerHTML='<td>'+valor+'</td>';
                                                        }
                                                        /***
                                                        * GUARDANDO LOS DATOS DE LA TABLA
                                                        *   */
                                                       for(var i=0;i<rowCount;i++){
                                                           localStorage.setItem('prod_fila'+(i+1),document.getElementById('tabl_prods_fila'+(i+1)).innerHTML);
                                                           console.log(localStorage.getItem('prod_fila'+(i+1)));
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
                                <div align="center">
                                    <a class="btn btn-lg btn-success" id="btn_addPrv">
                                        <i class="fa fa-plus"></i>Agregar Preventa
                                    </a>
                                    <a onclick="enviarVenta()" class="btn btn-lg btn-success" href="${pageContext.request.contextPath}/secured/ventas/factura/addFactura" role="button">
                                        <i class="fa fa-arrow-right" aria-hidden="true"></i>Generar Venta
                                    </a>
                                </div>
                            </div>    
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
            function enviarVenta(){
                var cliFld=document.getElementById("cliCod").value;
                var usrFld=document.getElementById("usuCod").value;
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
                localStorage.setItem('usrFld',usrFld);
                localStorage.setItem('dateFld',dateFld);
                localStorage.setItem('crncyFld',crncyFld);
                localStorage.setItem('igvFld',igvFld);
                localStorage.setItem('ttlFld',ttlFld);
                localStorage.setItem('obsFld',obsFld);
                
            }
        </script>
    </jsp:attribute>
</minierptemplate:template>




<!--DOCTYPE html>
<html>
 <head>
     <title>Maintaining State With Cookies</title>
 </head>
 <body>
     <form id="myForm" action="submit.mumps.cgi" method="POST">
         <input type="text" name="title" />
     </form>
     <script>
        var el=localStorage.getItem('senum');
        document.getElementById("myForm").getElementsByTagName("input")[0].value=el;
     </script>
 </body>
</html-->
