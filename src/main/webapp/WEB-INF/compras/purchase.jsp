<%-- 
    Document   : purchase
    Created on : 01-oct-2016, 10:38:37
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Mini ERP</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">
    
    <!-- Custom Fonts -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Mini ERP</a>
            </div>
            <!-- /.navbar-header -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-group fa-fw"></i> Logística<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Kardex</a>
                                </li>
                                <li>
                                    <a href="#">Clasificación ABC</a>
                                </li>
                                <li>
                                    <a href="#">Inventarios</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-truck fa-fw"></i> Compras<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Registrar Factura</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> Registrar Factura de Compra</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4>Información General</h4>
                            
                                <div class="col-xs-12 col-sm-6 col-md-8">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><i class="fa fa-shopping-cart"></i></span>
                                        <input type="text" class="form-control" placeholder="Número de Factura">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-md-4">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                        <input type="date" class="form-control">
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-6 col-md-6">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                        <input type="text" class="form-control" placeholder="Usuario">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-md-6">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon"><i class="fa fa-child"></i></span>
                                        <input type="text" class="form-control" placeholder="Proveedor">
                                    </div>
                                </div>
                                <div align="right">
                                    <button type="button" class="btn btn-success" onclick="addRow('productTable')"><i class="fa fa-plus"></i></button>
                                    <button type="button" class="btn btn-danger" onclick="deleteRow('productTable')"><i class="fa fa-minus"></i></button>
                                </div>                            
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="productTable">
                                <h4>Detalle de Compra</h4>
                                <thead>
                                    <tr>
                                        <th colspan="2" >Cantidad</th>
                                        <th>Descripción del Producto</th>
                                        <th>Precio Unitario</th>
                                        <th>Importe</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td style="width: 30px;" align="center">
                                            <input type="checkbox">
                                        </td>
                                        <td style="width: 130px;">
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-gear"></i></span>
                                                <input type="number" min="0" step="1" class="form-control">
                                            </div>
                                        </td>
                                        <td>
                                            <select class="form-control">
                                                <option>Seleccione artículo</option>
                                                <option>2</option>
                                            </select>
                                        </td>
                                        <td style="width: 166px;">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                <input type="number" class="form-control">
                                            </div>
                                        </td>
                                        <td style="width: 166px;">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                                <input class="form-control" disabled>
                                            </div>
                                        </td>                                        
                                    </tr>
                                </tbody>
                            </table>
                            
                            <div>
                                <div class="col-xs-12 col-sm-6 col-md-8">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            Observaciones <br><br> <textarea class="form-control" rows="2"></textarea>
                                        </div>
                                        <div class="panel-body">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Método de Pago</span>
                                                <select class="form-control">
                                                    <option>Seleccione artículo</option>
                                                    <option>2</option>
                                                </select>
                                                <span class="input-group-addon"><i class="fa fa-fax"></i></span>
                                            </div>
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Tipo de Pago</span>
                                                <select class="form-control">
                                                    <option>Seleccione artículo</option>
                                                    <option>2</option>
                                                </select>
                                                <span class="input-group-addon"><i class="fa fa-list-alt"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-md-4">
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon">SubTotal</span>
                                        <input type="number" class="form-control" disabled>
                                        <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                    </div>
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon">IGV (18%)</span>
                                        <input type="number" class="form-control" disabled>
                                        <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                    </div>
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon">Descuento</span>
                                        <input type="number" class="form-control" disabled>
                                        <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                    </div>
                                    <div class="form-group input-group" >
                                        <span class="input-group-addon">Total</i></span>
                                        <input type="number" class="form-control" disabled>
                                        <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                    </div>
                                    <button type="button" class="btn btn-primary">Registrar Factura</button>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="script/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="script/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="script/metisMenu.min.js"></script>
            
    <!-- Custom Theme JavaScript -->
    <script src="script/sb-admin-2.js"></script>
    
    <script language="javascript">
        function addRow(tableID) {
            var table = document.getElementById(tableID);
            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount);
            var colCount = table.rows[1].cells.length;

            for(var i=0; i<colCount; i++) {
                var newcell = row.insertCell(i);
                
                newcell.innerHTML = table.rows[1].cells[i].innerHTML;
                switch(newcell.childNodes[1].type) {
                    case "text":    newcell.childNodes[1].value = "";
                                    break;
                                    
                    case "checkbox":    newcell.childNodes[1].checked = false;
                                        break;
                                        
                    case "select-one":  newcell.childNodes[1].selectedIndex = 0;
                                        break;
                }
            }
        }
                
        function deleteRow(tableID) {
            try {
                    var table = document.getElementById(tableID);
                    var rowCount = table.rows.length;
                    
                    for(var i=1; i<rowCount; i++) {
                        var row = table.rows[i];
                        var chkbox = row.cells[0].childNodes[1];
                        if(true == chkbox.checked) {
                            if(rowCount-1 <= 1) {
                                alert("Cannot delete all the rows.");
                                break;
                            }
                            table.deleteRow(i);
                            rowCount--;
                            i--;
                        }
                    }
                }catch(e) {
                        alert(e);
                }
            }

	</script>
    
</body>

</html>
