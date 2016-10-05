<!DOCTYPE html>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Clasificaci�n ABC</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <h1>Clasificaci�n ABC</h1>
        <div class = "side-body">
            <label for = "clase"> Clase del producto: </label>
            <select id = "clase">
                <option>A</option>
                <option>B</option>
                <option>C</option>
            </select>
        </div>
        <br>
        <div>
            <table>
            <thead>
                <tr>
                    <th>C�digo</th>
                    <th>Descripci�n del producto</th>
                    <th>Precio</th>
                    <th>Cantidad</th>
                </tr>               
            </thead>
            <tbody>
                
            </tbody>
        </table>            
        </div>
        <div>
            <button> Generar reporte </button>
        </div-->
    </jsp:attribute>  
</minierptemplate:template>
