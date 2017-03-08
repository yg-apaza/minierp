<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir='/WEB-INF/tags'%>
<%@taglib prefix="cc" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<t:template-page-nav>
    <jsp:attribute name="mybody">
        <div class="panel panel-default class">
            <div class="panel-heading">
                <h1 class="text-left">Listas de Precios</h1>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-12">
                        <div class="btn-group btn-group-justified" role="group" aria-label="First group">
                            <div class="col-md-3 text-center">
                                <button type="button" 
                                        id="guiaTranportista" 
                                        class="btn btn-primary btn-block">Guías de Remisión 
                                    <i class="fa fa-book"></i>
                                </button>
                            </div>
                            <div class="col-md-3 text-center">
                                <button type="button" id="imprimir" 
                                        class="btn btn-primary btn-warning btn-block">Imprimir 
                                    <i class="fa fa-print"></i>
                                </button>
                            </div>
                            <div class="col-md-3 col-md-offset-3 text-center">
                                <a onclick='viewReferralGuide("${c.facVenCabCod}")' title="Vista Detallada de Guía R. Remitente">
                                    <i class="fa fa-book fa-lg" style="color: black;"></i>
                                </a>                               
                            </div>
                        </div>
                    </div>
                    <br />
                    <br />
                    <br />
                    <div class="col-lg-12">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="tablePurchases">
                                <thead>
                                    <tr>
                                        <th class="text-center">Valor Total</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td nowrap="nowrap"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </jsp:attribute>

            <jsp:attribute name="myscripts">

            </jsp:attribute>
        </t:template-page-nav>