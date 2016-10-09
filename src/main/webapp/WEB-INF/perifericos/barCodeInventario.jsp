<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Código de Barras</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Productos</h1>
            <br>
            <a class="btn btn-success" href="${pageContext.request.contextPath}/secured/perifericos/lecCodBarras" role="button">
                <i class="fa fa-plus"></i>
                Regresar
            </a>
            <br>
            <br>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th>Imagen</th>
                        <th>Operación</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${productos}" var="p">
                        <tr>
                            <td>${p.proCod}</td>
                            <td><img src="${pageContext.request.contextPath}/img/barcodes/${p.proCod}.png" width="240" height="74"></td>
                            <td>
                                <a class="btn btn-success" href="${pageContext.request.contextPath}/secured/perifericos/addStock?p=${p.proCod}" role="button">
                                    <i class="fa fa-plus"></i> Registrar
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </jsp:attribute>
</minierptemplate:template>