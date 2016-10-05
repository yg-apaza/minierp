<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Contabilidad</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
        	<div class="row-fluid">
        		<div class="span12">
        			<div class="well">
        				<h1 class="text-center">BALANCE GENERAL</h1>
        				<button class="btn btn-default pull-right" type="submit">Imprimir</button>
        			</div>
        		</div>
        	</div>
        	<div class="row-fluid">
        		<div class="span12">
        			<ul class="nav nav-tabs nav-justified">
        				<li class="active"><a data-toggle="tab" href="#detalle">Detalle</a></li>
        				<li><a data-toggle="tab" href="#resumen">Resumen</a></li>
        			</ul>
        			<div class="tab-content">
        				<div id="detalle" class="tab-pane active">
        					<table class="table table-bordered table-striped">
                                                    <!--EJEMPLO-->
	        					<thead>
	        						<tr>
	        							<th>ACTIVO</th>
	        							<th>EJERCICIO O PERIODO</th>
	        							<th>PASIVO Y PATRIMONIO</th>
	        							<th>EJERCICIO O PERIODO</th>
	        						</tr>
	        					</thead>
	        					<tbody>
	        						<tr>
	        							<td>Activos Corrientes</td>
	        							<td>3.256.984</td>
	        							<td>Pasivos</td>
	        							<td>1.416.080</td>
	        						</tr>
	        						<tr>
	        							<td>Caja Bancos</td>
	        							<td>194.924</td>
	        							<td>Ctas x pagar corto plazo</td>
	        							<td>100.000</td>
	        						</tr>
	        						<tr>
	        							<td>Ctas x cobro. corto plazo</td>
	        							<td>2.000.000</td>
	        							<td>Ctas x pagar largo plazo</td>
	        							<td>1.316.080</td>
	        						</tr>
	        						<tr>
	        							<td>Inventarios</td>
	        							<td>1.062.060</td>
	        							<td>Patrimonio</td>
	        							<td>2.124.120</td>
	        						</tr>
	        						<tr>
	        							<td>Activos no Corrientes</td>
	        							<td>281.216</td>
	        							<td>Capital</td>
	        							<td>1.889.820</td>
	        						</tr>
	        						<tr>
	        							<td>Edificios</td>
	        							<td>283.216</td>
	        							<td>Utilidad del Ejercicio</td>
	        							<td>234.300</td>
	        						</tr>
	        						<tr>
	        							<td>Total de Activos</td>
	        							<td>3.540.200</td>
	        							<td>Total Pasivo + Patrimonio</td>
	        							<td>3.540.200</td>
	        						</tr>
	        					</tbody>
	        				</table>
        				</div>
        				<div id="resumen" class="tab-pane">
        					<div class="span12 center-block">
								<div class = "span12" id="canvas-holder">
								<canvas class = "span6" id="chart-area" width="300" height="300"></canvas>
								<canvas class = "span6" id="chart-area2" width="300" height="300"></canvas>
								<canvas class = "span12"id="chart-area3" width="600" height="300"></canvas>
								<canvas class = "span12"id="chart-area4" width="600" height="300"></canvas>
								</div>
								<script>
								var pieData = [{value: 40,color:"#0b82e7",highlight: "#0c62ab",label: "Activos"},
												{
													value: 16,
													color: "#e3e860",
													highlight: "#a9ad47",
													label: "Caja Bancos"
												},
												{
													value: 11,
													color: "#eb5d82",
													highlight: "#b74865",
													label: "Ctas x cobro. corto plazo"
												},
												{
													value: 10,
													color: "#5ae85a",
													highlight: "#42a642",
													label: "Inventarios"
												},
												{
													value: 8.6,
													color: "#e965db",
													highlight: "#a6429b",
													label: "Edificios"
												}
											];

									var barChartData = {
										labels : ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio"],
										datasets : [
											{
												fillColor : "#6b9dfa",
												strokeColor : "#ffffff",
												highlightFill: "#1864f2",
												highlightStroke: "#ffffff",
												data : [90,30,10,80,15,5,15]
											},
											{
												fillColor : "#e9e225",
												strokeColor : "#ffffff",
												highlightFill : "#ee7f49",
												highlightStroke : "#ffffff",
												data : [40,50,70,40,85,55,15]
											}
										]

									}	
										var lineChartData = {
											labels : ["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio"],
											datasets : [
												{
													label: "Primera serie de datos",
													fillColor : "rgba(220,220,220,0.2)",
													strokeColor : "#6b9dfa",
													pointColor : "#1e45d7",
													pointStrokeColor : "#fff",
													pointHighlightFill : "#fff",
													pointHighlightStroke : "rgba(220,220,220,1)",
													data : [90,30,10,80,15,5,15]
												},
												{
													label: "Segunda serie de datos",
													fillColor : "rgba(151,187,205,0.2)",
													strokeColor : "#e9e225",
													pointColor : "#faab12",
													pointStrokeColor : "#fff",
													pointHighlightFill : "#fff",
													pointHighlightStroke : "rgba(151,187,205,1)",
													data : [40,50,70,40,85,55,15]
												}
											]

										}
								var ctx = document.getElementById("chart-area").getContext("2d");
								var ctx2 = document.getElementById("chart-area2").getContext("2d");
								var ctx3 = document.getElementById("chart-area3").getContext("2d");
								var ctx4 = document.getElementById("chart-area4").getContext("2d");
								window.myPie = new Chart(ctx).Pie(pieData);	
								window.myPie = new Chart(ctx2).Doughnut(pieData);				
								window.myPie = new Chart(ctx3).Bar(barChartData, {responsive:true});
								window.myPie = new Chart(ctx4).Line(lineChartData, {responsive:true});
								</script>
							</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
    </jsp:attribute>
</minierptemplate:template>