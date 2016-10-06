<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Agregar Factura</h1>
            <br>
            <div class="row">
                <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Añadir Factura
                        </div>
                        <div class="panel-body">
                            <form role=form" method="post" action="${pageContext.request.contextPath}/secured/ventas/factura/addFactura">
                                <div class="form-group">
                                    <div class="row">                                        
                                        <div class="col-sm-3">
                                            <label>Cliente</label>                                            
                                        </div>
                                        <div class="col-sm-5">
                                            <select class="form-control" name="cliCod">
                                                <option value="1">Roberto Perez Linares</option>
                                                <option value="2">Josep Pedrerol Tamudo</option>
                                                <option value="3">Diana Gamarra Florez</option>
                                                <option value="4">Lucia Quispe Mamani</option>
                                                <option value="5">Jose Perez Condo</option>
                                                <option value="6" selected="selected">Juan Carlos Villarin</option>
                                            </select>
                                        </div>                                        
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label>Usuario</label>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-user"></i>
                                                </span>
                                                <input type="text" class="form-control" placeholder="Nombres" name="cliNom">
                                            </div>                                            
                                        </div>                                        
                                    </div>
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label>Fecha de venta</label>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class='form-group input-group date' id='datetimepicker1'>
                                                <input placeholder="Fecha de venta" type='text' class="form-control" name="usuFecNac"/>
                                                <span class="input-group-addon">
                                                    <i class="fa fa-calendar"></i>
                                                </span>
                                            </div>                                            
                                        </div>                                        
                                    </div>

                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label>Total</label>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-money"></i>
                                                </span>
                                                <input type="text" class="form-control" placeholder="Nombres" name="cliNom">
                                            </div>
                                        </div>                                        
                                    </div>                                    
                                    
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label>IGV</label>                                            
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-money"></i>
                                                </span>
                                                <input type="text" class="form-control" placeholder="Nombres" name="cliNom">
                                            </div>                                              
                                        </div>                                        
                                    </div>    

                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label>Método de Pago</label> 
                                        </div>
                                        <div class="col-sm-6">
                                            <select class="form-control" name="cliCod">
                                                <option value="1">Credito</option>
                                                <option value="2">Al Contado</option>
                                                <option value="6" selected="selected">Ninguna</option>
                                            </select>                                            
                                        </div>                                        
                                    </div>                                    


                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label>Tipo de Pago</label> 
                                        </div>
                                        <div class="col-sm-6">
                                            <select class="form-control" name="cliCod">
                                                <option value="1">Letras</option>
                                                <option value="2">Pago ünico</option>
                                                <option value="6" selected="selected">Ninguno</option>
                                            </select>                                                                                        
                                        </div>                                        
                                    </div>
                                    
                                    <hr>
                                    <div class="row">
                                        <div class="col-sm-3">
                                            <label>Observaciones</label>                                            
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-eye"></i>
                                                </span>
                                                <input type="text" class="form-control" placeholder="Observaciones" name="cliNom">
                                            </div>                                              
                                        </div>                                        
                                    </div>                                    
                                    
                                    <hr>
                                    
                            </form>
                        </div>
                    </div>
                                
                                
                </div>
            </div>
        </div>
                                <div class="row">
                                    <label><h3>Detalle Factura</h3></label>
                                 <table id="tabla_productos" class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Producto</th>
                                            <th>Clase</th>
                                            <th>Cantidad</th>
                                            <th>Valor Unitario</th>
                                            <th>Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        <td>Calzado</td>
                                        <td>Doméstico</td>
                                        <td>2</td>
                                        <td>60</td>
                                        <td>
                                            <i class="fa fa-pencil-square-o fa-2x"></i>
                                            <i class="fa fa-trash-o fa-2x"></i>
                                        </td>
                                        </tr>
                                        
                                        <tr>
                                        <td>Cuaderno</td>
                                        <td>Doméstico</td>
                                        <td>10</td>
                                        <td>5</td>
                                        <td>
                                            <i class="fa fa-pencil-square-o fa-2x"></i>
                                            <i class="fa fa-trash-o fa-2x"></i>
                                        </td>
                                        </tr>
                                        
                                    </tbody>
                                </table>  
                                    <table class="table table-hover">
                                        
                                        <tbody>                                            
                                            <tr>
                                                <td><input type="text" class="form-control" placeholder="Producto" name="cliNom"></td>
                                                <td><input type="text" class="form-control" placeholder="Clase" name="cliNom" ></td>
                                                <td><input type="text" class="form-control" placeholder="Cnt" name="cliNom" ></td>
                                                <td><input type="text" class="form-control" placeholder="Pre. Uni" name="cliNom" ></td>
                                                <td>
                                                    <button onclick="agregarProducto('5')"><i class="fa fa-plus fa-2x"></i></button>
                                                    <button><i class="fa fa-trash-o fa-2x"></i></button>
                                                    <script>
                                                        function agregarProducto(colCount,producto,clase, cantidad, valor unitario){
                                                                var table = document.getElementById('tabla_productos');
                                                               var rowCount = table.rows.length;
                                                               var row = table.insertRow(rowCount);  
                                                               for(var i=0; i<colCount; i++){
                                                                        row.insertCell(i);
                                                                }
                                                      }
                                                    </script>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>

                                  
                                                                                                           
                                <button type="submit" class="btn btn-lg btn-success btn-block">
                                    <i class="fa fa-plus"></i> Agregar factura
                                </button>
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