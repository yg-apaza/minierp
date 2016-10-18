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
            <form id="registerBill" method="post" action="${pageContext.request.contextPath}/secured/ventas/preventa/addPreventa">
            <input type="hidden" class="form-control" name="productsAmounts" id="proAmo">
            <input type="hidden" class="form-control" name="productsDescriptions" id="proDes">
            <input type="hidden" class="form-control" name="productsPrices" id="proPri">
            <div class="row">
                <div class="col-md-4">
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
                                                        <input type="text" class="form-control" name="CodCabPre" placeholder="Número de Factura" pattern="[0-9]{3}-[0-9]{6}">
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
                                                        <input type="number" class="form-control" name="igvCabPre" value="18" id="facIgv" readOnly>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                                        <input type="date" class="form-control" name="fecCabPre">
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
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Descuento</span>
                                                        <input type="number" class="form-control" name="desCabPre" min="0" step="any" value="0" id="facDes">
                                                        <span class="input-group-addon"><i class="fa fa-sort-amount-asc"></i></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-6 col-md-4">
                                            <textarea class="form-control" rows="6" name="obsCabPre" placeholder="Observaciones"></textarea>
                                        </div>
                                    </div>
                                </form>  
                            </div>
                        
                            <div class="panel-body">
                            
                            <div class="form-group">
                                <label><h4>Detalle Preventa</h4></label>
                                <form id="detailsForm">
                                    <div class="row">
                                        <div class="col-xs-12 col-md-12">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Clase</i></span>
                                                        <select class="form-control validate[required]" name="claProCod" id="classSelected" onchange="changingClasses()">
                                                            <c:forEach items="${clases}" var="clase">
                                                                <option value="${clase.claProCod}">${clase.claProDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-sitemap"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group input-group">
                                                        <span class="input-group-addon">SubClase</span>
                                                        <select class="form-control validate[required]" name="subClaProCod" id="subClassSelected" onchange="changingSubClasses()">
                                                            <c:forEach items="${subclases}" var="subclase">
                                                                <option value="${subclase.id.subClaProCod}">${subclase.subClaProDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-tasks"></i></span>
                                                    </div>
                                                </div> 
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon">Producto</i></span>
                                                        <select class="form-control validate[required]" name="proCod" id="productSelected">
                                                            <c:forEach items="${productos}" var="producto">
                                                                <option value="${producto.id.proCod}">${producto.proDet}</option>
                                                            </c:forEach>
                                                        </select> 
                                                        <span class="input-group-addon"><i class="fa fa-tag"></i></span>
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group input-group" >
                                                        <span class="input-group-addon"><i class="fa fa-money"></i></span>
                                                        <input type="number" class="form-control" id="priceSelected" readOnly>                                                    
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group input-group">
                                                        <span class="input-group-addon">Cantidad</span>
                                                        <input type="number" class="form-control" id="amountSelected" min="0" step="any" value="0" name="canPro">
                                                        <span class="input-group-addon"><i class="fa fa-gear"></i></span>
                                                    </div>
                                                </div> 
                                                <div class="col-md-2 col-md-offset-10" align = "right">
                                                    <button type="button" class="btn btn-success" id="addDetail" onclick="addNewDetail()"><i class="fa fa-plus-square-o fa-1x"></i></button>
                                                    <button type="button" class="btn btn-danger" onclick="deleteRow('productTable')"><i class="fa fa-trash-o fa-1x"></i></button>
                                                </div>
                                            </div>
                                        </div>                                    
                                    </div>
                                </form>
                                
                                <div class="table-responsive">
                                    <table width="100%" class="table table-striped table-bordered table-hover" id="productTable">
                                        <thead align="center">
                                            <tr >
                                                <th colspan="2">Cantidad</th>
                                                <th>Descripción del Producto</th>
                                                <th>Precio Unitario</th>
                                                <th>Importe</th>
                                            </tr>
                                        </thead>
                                        <tbody>                                        
                                        </tbody>
                                    </table>
                                </div>
                                <div align="center">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">SubTotal</span>
                                                <input type="number" class="form-control" name="subTotCabPre" id="facSub" value="0" readonly>
                                                <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                            </div>
                                        </div>
                                        
                                        <div class="col-lg-6">
                                            <div class="form-group input-group" >
                                                <span class="input-group-addon">Total</i></span>
                                                <input type="number" class="form-control" name="totCabPre" id="facTot" value="0" readonly>
                                                <span class="input-group-addon"><i class="fa fa-usd"></i></span>
                                            </div>
                                        </div>
                                    </div>
                                    
                                </div>
                                
                                
                                
                            </div>
                            <div align="right">
                                <button type="submit" class="btn btn-primary">Registrar Preventa</button>
                            </div>
                        </div>
                            
                        </div>
                    </div>
            </div>
        </div>
        <script language="javascript">
            $(document).ready(function () {
                changingClasses();
            });

            $(document).ready(function () {
                changingSubClasses();
            });

            $(document).ready(function () {
                putPrice();
            });

            function putPrice() {
                if ($('#productSelected')[0].val!= "") {
                    var codeCla = Number($("#classSelected").val());
                    var codeSub = Number($("#subClassSelected").val());
                    var codePro = Number($("#productSelected").val());
                    var tag = true;
                    <c:forEach items="${productos}" var="product">
                        if ((${product.id.claProCod} == codeCla) && (${product.id.subClaProCod} == codeSub) && (${product.id.proCod} == codePro)) {
                            tag = false;
                            $('#priceSelected').val(${product.proPreUni});
                            $('#amountSelected')[0].max = ${product.proStk};
                        }
                    </c:forEach>
                    if (tag) {
                        $('#priceSelected').val("");
                    }
                }
            }

            function changingClasses() {
                $('#subClassSelected').empty();
                var code = Number($("#classSelected").val());
                var tag = true;
            <c:forEach items="${subclases}" var="subclass">
                if (${subclass.id.claProCod} == code) {
                    tag = false;
                    $('#subClassSelected').append($('<option>', {
                        value: "${subclass.id.subClaProCod}",
                        text: "${subclass.subClaProDet}"
                    }));
                }
            </c:forEach>
                if (tag) {
                    $('#subClassSelected').append($('<option>', {
                        value: "",
                        text: "No existen subclases"
                    }));
                }
                changingSubClasses();
            }

            function changingSubClasses() {
                $('#productSelected').empty();
                var codeCla = Number($("#classSelected").val());
                var codeSub = Number($("#subClassSelected").val());
                var tag = true;
                <c:forEach items="${productos}" var="product">
                    if ((${product.id.claProCod} == codeCla) && (${product.id.subClaProCod} == codeSub)) {
                        tag = false;
                        $('#productSelected').append($('<option>', {
                            value: "${product.id.proCod}",
                            text: "${product.proDet}",
                        }));
                    }
                </c:forEach>
                if (tag) {
                    $('#productSelected').append($('<option>', {
                        value: "",
                        text: "No existen productos"
                    }));
                } else {
                    putPrice();
                }
            }

            $.validator.messages.max = "Stock superado";
            
            $(document).ready(function () {
                $('#addDetail').on('click', function () {
                    $('input[name="canPro"]').valid();
                });
            });
            
            $(document).ready(function () {
                $('#productSelected').change(putPrice);
            });
            
            function getClient(tableID) {
                try {
                    var table = document.getElementById(tableID);
                    var rowCount = table.rows.length;

                    for (var i = 1; i < rowCount; i++) {
                        var row = table.rows[i];
                        var chkbox = row.cells[0].childNodes[1];
                        if (true == chkbox.checked) {
                            $('#clienteCodigo').val(row.cells[1].childNodes[0].data);
                            $('#clientCode').val(row.id);
                            break;
                        }
                    }
                } catch (e) {
                    alert(e);
                }
            }

            function addNewDetail() {
                var combo = document.getElementById("productSelected");
                $('#productTable tbody').append('<tr align="center">'+
                                                '<td style="width: 30px;" align = "center"><input type = "checkbox"></td>'+
                                                '<td width = "10%">'+$('#amountSelected').val()+'</td>'+
                                                '<td align = "left" width = "60%">'+ combo.options[combo.selectedIndex].text+'</td>'+
                                                '<td width = "20%">'+ $('#priceSelected').val()+'</td>'+
                                                '<td width = "10%">'+ $('#priceSelected').val()*$('#amountSelected').val()+'</td></tr>');         
                                        updateDescription();
            }
            
            function deleteRow(tableID){
                try {
                    var table = document.getElementById(tableID);
                    var rowCount = table.rows.length;

                    for (var i = 0; i < rowCount; i++) {
                        var row = table.rows[i];
                        var chkbox = row.cells[0].childNodes[0];
                        
                        if (true == chkbox.checked) {
                            table.deleteRow(i);
                            rowCount--;
                            i--;
                        }
                    }

                    updateDescription();
                } catch (e) {
                    alert(e);
                }
            }

            function getSupplier(tableID) {
                try {
                    var table = document.getElementById(tableID);
                    var rowCount = table.rows.length;

                    for (var i = 1; i < rowCount; i++) {
                        var row = table.rows[i];
                        var chkbox = row.cells[0].childNodes[1];
                        if (true == chkbox.checked) {
                            $('#supCod').val(row.cells[1].childNodes[0].data);
                            $('#proCod').val(row.id);
                            break;
                        }
                    }
                } catch (e) {
                    alert(e);
                }
            }
            
            function updateDescription() {
                try {
                    var amounts = new Array();
                    var descriptions = new Array();
                    var prices = new Array();
                    var table = document.getElementById('productTable');
                    var rowCount = table.rows.length;
                    var subtotal = 0;

                    for (var i = 1; i < rowCount; i++) {
                        var row = table.rows[i];
                        
                        var quant = row.cells[1].innerText;
                        amounts.push(quant);
                        descriptions.push(row.cells[2].innerText);
                        var price = row.cells[3].innerText;
                        prices.push(price);
                        subtotal += quant * price;
                    }
                    $('#facSub').val(subtotal);
                    $('#facTot').val((subtotal * (1 + $('#facIgv').val()) / 100)- ($('#facDes').val()));
                    $('#proAmo').val(amounts);
                    $('#proDes').val(descriptions);
                    $('#proPri').val(prices);
                } catch (e) {
                    alert(e);
                }
            }
        </script>
    </jsp:attribute>
</minierptemplate:template>
