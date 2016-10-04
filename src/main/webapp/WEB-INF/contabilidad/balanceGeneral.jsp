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
	        							<td>Holi prueba</td>
	        							<td>Holi prueba</td>
	        							<td>Holi prueba</td>
	        						</tr>
	        						<tr>
	        							<td>Holi prueba</td>
	        							<td>Holi prueba</td>
	        							<td>Holi prueba</td>
	        						</tr>
	        						<tr>
	        							<td>Holi prueba</td>
	        							<td>Holi prueba</td>
	        							<td>Holi prueba</td>
	        						</tr>
	        						<tr>
	        							<td>Holi prueba</td>
	        							<td>Holi prueba</td>
	        							<td>Holi prueba</td>
	        						</tr>
	        					</tbody>
	        				</table>
        				</div>
        				<div id="resumen" class="tab-pane">
							<p>Composicion de activos</p>
							<p>Composicion de pasivos y patrimonio</p>
							<p>Por año, barras de activos vs pasivos</p>
        				</div>
        			</div>
        		</div>
        	</div>
        </div>
    </jsp:attribute>
</minierptemplate:template>