<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Panel de Administración</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Panel de Administración</h1>   
                </div>
            </div>
            <!--Para el administrador-->
            <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod() == 2}">
            <div>
                <div class="col-lg-6">
                    <canvas id="IngDia"></canvas>
                </div>
                <div class="col-lg-6">
                    <canvas id="PreDia"></canvas>
                </div>
            </div>
            </c:if>

             <!-- Para el comprador -->
            <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod() == 3}">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group input-group">
                                <span class="input-group-addon">Almacen</span>
                                <select name="AlmPro" id="almSelected" class="form-control validate[requiered]" onchange="changingAlmacen()">
                                    <option disabled="" selected="">Select Option</option>
                                    <c:forEach items="${almacenes}" var="alm">
                                        <option value="${alm.almCod}">${alm.almDet}</option>
                                    </c:forEach>
                                </select>
                                <span class="input-group-addon"><i class="fa fa-industry"></i></span>
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group input-group">
                               <div class="form-group input-group">
                                    <span class="input-group-addon">Producto</span>
                                        <select name="Pro" id="prodSelected" class="form-control validate[requiered]" onchange="changingProductos()" >

                                        </select>
                                    <span class="input-group-addon"><i class="fa fa-shopping-cart"></i></span>
                                </div>
                            </div>
                        </div>
                        <!--Canvas grafica-->
                    </div>
                </div>
            </c:if>
        </div>
        
        <!--Administrador-->
        <script type="text/javascript">
            var chart_Ingresos = {
                type: 'line',
                data: {
                    labels: ["Anteayer", "Ayer", "Hoy"],
                    datasets: [
                        {
                            label: "Ingresos por dia",
                            fill: false,
                            lineTension: 0.1,
                            backgroundColor: "rgba(75,192,192,0.4)",
                            borderColor: "rgba(75,192,192,1)",
                            borderCapStyle: 'butt',
                            borderDash: [],
                            borderDashOffset: 0.0,
                            borderJoinStyle: 'miter',
                            pointBorderColor: "rgba(75,192,192,1)",
                            pointBackgroundColor: "#fff",
                            pointBorderWidth: 1,
                            pointHoverRadius: 5,
                            pointHoverBackgroundColor: "rgba(75,192,192,1)",
                            pointHoverBorderColor: "rgba(220,220,220,1)",
                            pointHoverBorderWidth: 2,
                            pointRadius: 1,
                            pointHitRadius: 10,
                            data: [${iANTEAYER}, ${iAYER}, ${iHOY}],
                            spanGaps: false,
                        }
                    ]
                },
                options: {
                    responsive:true,

                }
            };
            var chart_Preventas = {
                type: 'line',
                data: {
                    labels: ["Anteayer", "Ayer", "Hoy"],
                    datasets: [
                        {
                            label: "Preventas por dia",
                            fill: false,
                            lineTension: 0.1,
                            backgroundColor: "rgba(75,192,192,0.4)",
                            borderColor: "rgba(75,192,192,1)",
                            borderCapStyle: 'butt',
                            borderDash: [],
                            borderDashOffset: 0.0,
                            borderJoinStyle: 'miter',
                            pointBorderColor: "rgba(75,192,192,1)",
                            pointBackgroundColor: "#fff",
                            pointBorderWidth: 1,
                            pointHoverRadius: 5,
                            pointHoverBackgroundColor: "rgba(75,192,192,1)",
                            pointHoverBorderColor: "rgba(220,220,220,1)",
                            pointHoverBorderWidth: 2,
                            pointRadius: 1,
                            pointHitRadius: 10,
                            data: [${pANTEAYER}, ${pAYER}, ${pHOY}],
                            spanGaps: false,
                        }
                    ]
                },
                options: {
                    responsive:true
                }
            };
            var ctx1 = document.getElementById("IngDia").getContext("2d");
            var ctx2 = document.getElementById("PreDia").getContext("2d");
            var IngDia = new Chart(ctx1,chart_Ingresos);
            var PreDia = new Chart(ctx2,chart_Preventas);
        </script>

        <!--Comprador-->
        <script type='text/javascript'>
        $(document).ready(function() {
          $('#almSelected').select2({
              placeholder: "Select a state",
              allowClear: true
          });
        });

        $(document).ready(function() {
          $('#prodSelected').select2({
              placeholder: "Select a state",
              allowClear: true
          });
        });
        </script>

        <script language="javascript">
            $(document).ready(function () {
                changingAlmacen();
            });

            $(document).ready(function () {
                changingProductos();
            });

            function changingAlmacen() {
                $('#prodSelected').empty();
                var tag = true;
                $.post(
                    "${pageContext.request.contextPath}/secured/general/panel/productosByAlmacen",
                    {almCod: $("#almSelected").val()})
                    .done(function (data) {
                        if (data != null)
                        {
                            $.each(data, function(k,v){
                                $("#prodSelected").append($('<option>', {
                                value: v.proCod,
                                text: v.proDet
                                })); 
                            });                                
                        }
                        else
                        {
                            $("#prodSelected").append($('<option>', {
                                value: "",
                                text: "No existen productos"
                            }));
                        }
                    });
            }
            function changingProductos(){
                // Grafica
                $.post(
                    "${pageContext.request.contextPath}/secured/general/panel/datosGraficaComprador",
                    {proCod: $("#prodSelected").val()})
            }
        </script>
    </jsp:attribute>
</minierptemplate:template>