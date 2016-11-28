<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Contabilidad - Hoja de Trabajo</title>
    </jsp:attribute>   
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <h1 class="page-header"> Hoja de Trabajo </h1>
        </div>
        <div class="table-responsive">
			<table id="hojaT" class="table table-hover table-bordered table-striped table-sm text-center">
                <thead>
                    <tr class="bg-primary">
                        <th rowspan="2" class="text-center" style="vertical-align:middle">Cuenta</th>
                        <th rowspan="2" class="text-center" style="vertical-align:middle">Denominación</th>
                        <th rowspan="2" class="text-center" style="vertical-align:middle" id="click-me"> <i class="fa fa-angle-double-right" aria-hidden="true"></i></th>
                        <th colspan="2" class="text-center toggleDisplay">Sumas del mayor</th>
                        <th colspan="2" class="text-center toggleDisplay">Saldos del mayor</th>
                        <th colspan="2" class="text-center toggleDisplay">Ajustes</th>
                        <th colspan="2" class="text-center">Balance</th>
                        <th colspan="2" class="text-center">Por Naturaleza</th>
                        <th colspan="2" class="text-center">Por Función</th>
                    </tr>
                    <tr class="table-active">
                        <th class="text-center small toggleDisplay">DEBE</th>
                        <th class="text-center small toggleDisplay">HABER</th>
                        <th class="text-center small toggleDisplay">DEUDOR</th>
                        <th class="text-center small toggleDisplay">ACREEDOR</th>
                        <th class="text-center small toggleDisplay">DEBE</th>
                        <th class="text-center small toggleDisplay">HABER</th>
                        <th class="text-center small">DEBE</th>
                        <th class="text-center small">HABER</th>
                        <th class="text-center small">PERDIDA</th>
                        <th class="text-center small">GANANCIA</th>
                        <th class="text-center small">DEBE</th>
                        <th class="text-center small">HABER</th>
                    </tr>
                </thead>
                <tbody>
                	
                </tbody>
			</table>
        </div>
        <script>
        	var flag = true;
        	$("#click-me").click(function(){
        		$(".table .toggleDisplay").toggleClass("in");
        		if (flag) {
        			$(this).find('.fa-angle-double-right').toggleClass('fa-angle-double-right fa-angle-double-left');
        			flag = false;
        		}
        		else{
        			$(this).find('.fa-angle-double-left').toggleClass('fa-angle-double-left fa-angle-double-right');
        			flag = true;
        		}
        	});
		        
		</script>
        </script>
        <style>
        	.toggleDisplay {
			  display: none;
			}
			.toggleDisplay.in {
			  display: table-cell;
			}
        </style>
    </jsp:attribute>
</minierptemplate:template>


