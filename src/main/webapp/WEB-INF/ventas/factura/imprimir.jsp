<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <title>Factura_${factura.facVenCabCod}</title>
    </head>
    <body>
        <br><br><br><br><br>
        <pre>            ${factura.enP1mCliente.cliNom}</pre>
        <pre>            ${factura.enP1mCliente.cliDir}                                ${factura.facVenCabCod}</pre>

        <br><br><br>
        <table>
            <c:forEach items="${factura.enP1tFacturaVentaDets}" var="d">
                <tr>
                    <td width ="40mm"><pre> ${d.facVenDetCan} </pre></td>
                    <td width ="300mm"><pre> ${d.enP2mProducto.proDet}</pre></td>
                    <td width ="70mm"><pre> ${d.facVenDetValUni}</pre></td>
                    <td width ="40mm"><pre> importe</pre></td>
                </tr>
            </c:forEach>
                <tr>
                    <td colspan="3"></td>
                    <td><pre>${factura.facVenCabIgv}</pre></td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                    <td><pre>${factura.facVenCabSubTot}</pre></td>
                </tr>
                <tr>
                    <td colspan="3"></td>
                    <td><pre>${factura.facVenCabTot}</pre></td>
                </tr>
        </table>
    </body>
</html>
<style type="text/css" media="print">
    @page { size: auto; margin: 0mm; }
    html { background-color: #FFFFFF; margin: 0px;}
    body { margin: 15mm 15mm 15mm 15mm; font-family: Sans-Serif; }
</style>
<script type="text/javascript">
    $( document ).ready(function() {
        window.print();
        history.go(-1);
        return false;
    });
</script>