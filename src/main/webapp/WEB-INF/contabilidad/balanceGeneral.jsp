<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Contabilidad - Balance General</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
    <script type="text/javascript">
function imprSelec(muestra)
{var ficha=document.getElementById(muestra);var ventimp=window.open(' ','popimpr');ventimp.document.write(ficha.innerHTML);ventimp.document.close();ventimp.print();ventimp.close();}
</script>
        <div id="muestra" class="panel-body">
        	<div class="row">
                        <div class="col-lg-12">
                            <h1 class="page-header">Balance General</h1>
                        </div> 
        	</div>
                <a href="javascript:imprSelec('muestra')">Imprimir Tabla</a>
                <br><br>
        	<div class="row-fluid">
        		<div class="span12">
        			<ul class="nav nav-tabs nav-">
        				<li class="active"><a data-toggle="tab" href="#detalle">Detalle</a></li>
        				<li><a data-toggle="tab" href="#resumen">Resumen</a></li>
        			</ul>
        			<div class="tab-content">
        				<div id="detalle" class="tab-pane active">
        				<table class="table" width="100%">
        				<tr>
        				<td width="50%">
                                            <div class="table-responsive">
        					<table id="tablaActivo" class="table table-hover table-bordered table-striped">
                                                    <thead>
                                                            <tr class="info">
                                                                    <th>ACTIVO</th>
                                                                    <th>EJERCICIO O PERIODO</th>
                                                            </tr>
                                                    </thead>
                                                    <tbody>
                                                            <c:forEach items="${lista.get(0)}" var="la">
                                                            <tr>
                                                                    <td> ${la.get(0)} </td>
                                                                    <td> ${la.get(1)} </td>
                                                            </tr>
                                                            </c:forEach>
                                                    </tbody>
	        				</table>
                                            </div>
	        			</td>
	        			<td width="50%">
		        			<table id="tablaPasivo" class="table table-hover table-bordered table-striped">
	        					<thead>
	        						<tr class="info">
	        							<th>PASIVO Y PATRIMONIO</th>
	        							<th>EJERCICIO O PERIODO</th>
	        						</tr>
	        					</thead>
	        					<tbody>
	        						<c:forEach items="${lista.get(1)}" var="lp">
	        						<tr>
	        							<td> ${lp.get(0)} </td>
	        							<td> ${lp.get(1)} </td>
                                    </tr>
		        					</c:forEach>
	        					</tbody>
	        				</table>
	        			</td>
	        			</tr>
                        <tr>
                        	<td width="100%" colspan="2">
                            <table id="Total" class="table table-hover table-bordered table-striped">
	        					<tbody>
	        						<c:forEach items="${lista.get(2)}" var="lr">
	        						<tr class="info">
	        							<td> <b> TOTAL ACTIVOS </b> </td>
	        							<td> ${lr.get(0)} </td>
	        							<td> <b> TOTAL PASIVOS </b> </td>
	        							<td> ${lr.get(1)} </td>
                                    </tr>
                                    </c:forEach>
	        					</tbody>
                            </table>
                            </td>
                        </tr>
        				</table>
        				</div>


        				<div id="resumen" class="tab-pane">
        					<div class="row-fliud">
								<!--<div id="canvas-holder">-->
								<div class="col-md-4">
									<canvas id="chart-area1" width="300" height="300"></canvas>
									<p class="text-primary text-center bg-primary">Activos y Pasivos</p>
								</div>
								<div class="col-md-4">
									<canvas id="chart-area2" width="300" height="300"></canvas>
									<p class="text-primary text-center bg-primary">Balance Activos</p>
								</div>
								<div class="col-md-4">
									<canvas id="chart-area3" width="300" height="300"></canvas>
									<p class="text-primary text-center bg-primary">Balance Pasivos</p>
								</div>
								<!--</div>-->
								<script>
									var table1 = document.getElementById("Total");
									var valor1 = parseInt(table1.rows[0].cells[1].innerHTML);
									var valor2 = parseInt(table1.rows[0].cells[3].innerHTML);
									var table2 = document.getElementById("tablaActivo");
									var monto = 0;
									var des = "";
									var table3 = document.getElementById("tablaPasivo");
									
									var pieDataGeneral = [{value: valor1, 
											color: "#0b82e7", highlight: "#0c62ab",
											label: "Total Activos"
										},
										{value: valor2, 
											color: "#0b82e7", highlight: "#0c62ab",
											label: "Total Pasivos"
										}]; 

									var pieDataActivo = [];
									for (var i = 1; i < table2.rows.length; i++) {
										monto = parseInt(table2.rows[i].cells[1].innerHTML);
										des = table2.rows[i].cells[0].innerHTML;
									
										pieDataActivo.push({value: monto, 
												color: "#"+((1<<24)*Math.random()|0).toString(16), 
												highlight: "#"+((1<<24)*Math.random()|0).toString(16),
												label: des
											}); 
									}

									var pieDataPasivo = [];
									for (var i = 1; i < table3.rows.length; i++) {
										monto = parseInt(table3.rows[i].cells[1].innerHTML);
										des = table3.rows[i].cells[0].innerHTML;
									
										pieDataPasivo.push({value: monto, 
												color: "#"+((1<<24)*Math.random()|0).toString(16), 
												highlight: "#"+((1<<24)*Math.random()|0).toString(16),
												label: des
											}); 
									}

								var ctx1 = document.getElementById("chart-area1").getContext("2d");
								var ctx2 = document.getElementById("chart-area2").getContext("2d");
								var ctx3 = document.getElementById("chart-area3").getContext("2d");
								window.myPie1 = new Chart(ctx1).Pie(pieDataGeneral);	
								window.myPie2 = new Chart(ctx2).Pie(pieDataActivo);
								window.myPie3 = new Chart(ctx3).Pie(pieDataPasivo);
								</script>
							</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
    </jsp:attribute>
</minierptemplate:template>
