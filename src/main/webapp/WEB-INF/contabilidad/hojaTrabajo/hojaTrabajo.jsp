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
                    <c:forEach items="${hojaT}" var="h">
                        <tr>
                            <td class="small"> ${h.cueNum} </td>
                            <td class="small" colspan="2"> ${h.cueDes} </td>
                            <td class="text-center small toggleDisplay"> ${h.mayorDebe} </td>
                            <td class="text-center small toggleDisplay"> ${h.mayorHaber} </td>
                            <td class="text-center small toggleDisplay"> 
                                <c:if test="${h.flagMayor}" >
                                    <c:out value="${h.mayorSaldo}"/> 
                                </c:if>
                            </td>
                            <td class="text-center small toggleDisplay"> 
                                <c:if test="${not h.flagMayor}" >
                                    <c:out value="${h.mayorSaldo}"/> 
                                </c:if>
                            </td>
                            <td class="text-center small toggleDisplay"> 
                                <c:if test="${h.flagAjustes}" >
                                    <c:if test="${h.ajustesMonto != 0}">
                                        <c:out value="${h.ajustesMonto}"/> 
                                    </c:if>
                                </c:if> 
                            </td>
                            <td class="text-center small toggleDisplay"> 
                                <c:if test="${not h.flagAjustes}" >
                                    <c:if test="${h.ajustesMonto != 0}">
                                        <c:out value="${h.ajustesMonto}"/> 
                                    </c:if>
                                </c:if> 
                            </td>
                            <td class="text-center small">
                                <c:if test="${h.flagBalance}" >
                                    <c:if test="${h.balanceMonto != 0}">
                                        <c:out value="${h.balanceMonto}"/>
                                    </c:if>
                                </c:if> 
                            </td>
                            <td class="text-center small">
                                <c:if test="${not h.flagBalance}" >
                                    <c:if test="${h.balanceMonto != 0}">
                                        <c:out value="${h.balanceMonto}"/> 
                                    </c:if>
                                </c:if> 
                            </td>
                            <td class="text-center small"> 
                                <c:if test="${h.flagNaturaleza}" >
                                    <c:if test="${h.naturalezaMonto != 0}">
                                        <c:out value="${h.naturalezaMonto}"/> 
                                    </c:if>
                                </c:if> 
                            </td>
                            <td class="text-center small"> 
                                <c:if test="${not h.flagNaturaleza}" >
                                    <c:if test="${h.naturalezaMonto != 0}">
                                        <c:out value="${h.naturalezaMonto}"/> 
                                    </c:if>
                                </c:if> 
                            </td>
                            <td class="text-center small">
                                <c:if test="${h.flagFuncion}" >
                                    <c:if test="${h.funcionMonto != 0}">
                                        <c:out value="${h.funcionMonto}"/> 
                                    </c:if>
                                </c:if>  
                            </td>
                            <td class="text-center small">
                                <c:if test="${not h.flagFuncion}" >
                                    <c:if test="${h.funcionMonto != 0}">
                                        <c:out value="${h.funcionMonto}"/>
                                    </c:if>
                                </c:if>  
                            </td>
                        </tr>
                    </c:forEach>
                    <tr>
                    	<td class="info" colspan="3">Sub-Totales</td>
                    	<td class="text-center small toggleDisplay"> ${totales.get(0)}</td>
                    	<td class="text-center small toggleDisplay"> ${totales.get(1)}</td>
                    	<td class="text-center small toggleDisplay"> ${totales.get(2)}</td>
                    	<td class="text-center small toggleDisplay"> ${totales.get(3)}</td>
                    	<td class="text-center small toggleDisplay"> ${totales.get(4)}</td>
                    	<td class="text-center small toggleDisplay"> ${totales.get(5)}</td>
                    	<td class="text-center small"> ${totales.get(6)}</td>
                    	<td class="text-center small"> ${totales.get(7)}</td>
                    	<td class="text-center small"> ${totales.get(8)}</td>
                    	<td class="text-center small"> ${totales.get(9)}</td>
                    	<td class="text-center small"> ${totales.get(10)}</td>
                    	<td class="text-center small"> ${totales.get(11)}</td>
                    </tr>
                    <tr>
                    	<td class="success" colspan="3" class="text-center small">Resultado del Ejercicio</td>
                    	<td class="success text-center small toggleDisplay"></td>
                    	<td class="success text-center small toggleDisplay"></td>
                    	<td class="success text-center small toggleDisplay"></td>
                    	<td class="success text-center small toggleDisplay"></td>
                    	<td class="success text-center small toggleDisplay"></td>
                    	<td class="success text-center small toggleDisplay"></td>
                    	<td class="text-center small">
                            <c:if test="${totales.get(6) < totales.get(7)}" >
                                <c:out value="${totales.get(7) - totales.get(6)}"/>
                            </c:if>
                    	</td>
                    	<td class="text-center small"> 
                            <c:if test="${totales.get(6) > totales.get(7)}" >
                                <c:out value="${totales.get(6) - totales.get(7)}"/>
                            </c:if>
                        </td>
                        <td class="text-center small">
                            <c:if test="${totales.get(8) < totales.get(9)}" >
                                <c:out value="${totales.get(9) - totales.get(8)}"/>
                            </c:if>
                        </td>
                    	<td class="text-center small"> 
                            <c:if test="${totales.get(8) > totales.get(9)}" >
                                <c:out value="${totales.get(8) - totales.get(9)}"/>
                            </c:if>
                        </td>
                        <td class="text-center small">
                            <c:if test="${totales.get(10) < totales.get(11)}" >
                                <c:out value="${totales.get(11) - totales.get(10)}"/>
                            </c:if>
                    	</td>
                    	<td class="text-center small"> 
                            <c:if test="${totales.get(10) > totales.get(11)}" >
                                <c:out value="${totales.get(10) - totales.get(11)}"/>
                            </c:if>
                        </td>
                    </tr>
                    <tr>
                    	<td class="bg-primary" colspan="3" class="text-center small">Totales</td>
                    	<td class="bg-primary text-center small toggleDisplay"></td>
                    	<td class="bg-primary text-center small toggleDisplay"></td>
                    	<td class="bg-primary text-center small toggleDisplay"></td>
                    	<td class="bg-primary text-center small toggleDisplay"></td>
                    	<td class="bg-primary text-center small toggleDisplay"></td>
                    	<td class="bg-primary text-center small toggleDisplay"></td>
                    	
                    	<c:if test="${totales.get(6) < totales.get(7)}" >
                            <td class="text-center small"> <c:out value="${totales.get(7)}"/> </td>
                            <td class="text-center small"> <c:out value="${totales.get(7)}"/> </td>
                    	</c:if>
                    	<c:if test="${totales.get(6) > totales.get(7)}" >
                            <td class="text-center small"> <c:out value="${totales.get(6)}"/> </td>
                            <td class="text-center small"> <c:out value="${totales.get(6)}"/> </td>
                    	</c:if>
                    	<c:if test="${totales.get(8) < totales.get(9)}" >
                            <td class="text-center small"> <c:out value="${totales.get(9)}"/> </td>
                            <td class="text-center small"> <c:out value="${totales.get(9)}"/> </td>
                    	</c:if>
                    	<c:if test="${totales.get(8) > totales.get(9)}" >
                            <td class="text-center small"> <c:out value="${totales.get(8)}"/> </td>
                            <td class="text-center small"> <c:out value="${totales.get(8)}"/> </td>
                    	</c:if>
                        <c:if test="${totales.get(10) < totales.get(11)}" >
                            <td class="text-center small"> <c:out value="${totales.get(11)}"/> </td>
                            <td class="text-center small"> <c:out value="${totales.get(11)}"/> </td>
                        </c:if>
                    	<c:if test="${totales.get(10) > totales.get(11)}" >
                            <td class="text-center small"> <c:out value="${totales.get(10)}"/> </td>
                            <td class="text-center small"> <c:out value="${totales.get(10)}"/> </td>
                    	</c:if>
                    </tr>
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


