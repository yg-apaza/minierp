<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuración - Factura</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <br>
        <div class="pagel-body">
            <h1 class="page-header"> Factura </h1>
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover" id="tablaFacSobCab">
                        <tr>
                            <td>CLIENTE:</td>
                            <td contenteditable="true">0</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>DIRECCIÓN:</td>
                            <td><input type="text" width="10px" value=" "></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>FECHA EMISIÓN:</td>
                            <td><input type="text" width="10px" value=" "></td>
                        </tr>
                    </table>
                </div>
            </div>                        
        </div>
    </jsp:attribute>
</minierptemplate:template>