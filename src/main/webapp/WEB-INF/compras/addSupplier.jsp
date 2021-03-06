<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Log�stica - Proveedor</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        
        <script src="${pageContext.request.contextPath}/js/jquery.PrintArea.js"></script>

        <div class ="panel-body">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"> Agregar nuevo proveedor </h1>
                </div>
            </div>
            <form class="form-group-sm">
                <label class = "form-control" style="background: #A9E2F3;" for = "nombre"> Nombre del proveedor: </label>
                <input class = "form-control" name = "nombre" type = "text" placeholder = "Nombre del Proveedor">
                <br>
                <label class = "form-control" style="background: #A9E2F3;" for = "contacto"> Nombre del contacto: </label>
                <input class = "form-control" name = "contacto" type = "text" placeholder = "Nombre del contacto">
                <br>
                <label class = "form-control" style="background: #A9E2F3;"  for = "direccion"> Direcci�n: </label>
                <input class = "form-control" name = "direccion" type = "text" placeholder = "Distrito, Provincia, Pa�s">
                <br>
                <label class = "form-control" style="background: #A9E2F3;" for = "telefono"> Tel�fono: </label>
                <input class = "form-control" name = "telefono" type = "text" placeholder = "Ej. 054425689">
                <br>
                <label class = "form-control" style="background: #A9E2F3;" for = "celular"> Celular: </label>
                <input class = "form-control" name = "celular" type = "text" placeholder = "Ej. 940562312">
                <br>
                <label class = "form-control" style="background: #A9E2F3;" for = "email"> Email: </label>
                <input class = "form-control" name = "email" type = "text" placeholder = "Ej. example@example.com">
                <br>
                <label class = "form-control" style="background: #A9E2F3;" for = "pagina"> P�gina Web: </label>
                <input class = "form-control" name = "pagina" type = "text" placeholder = "Ej. wwww.proveedores.com">
                <br>
                <label class = "form-control" style="background: #A9E2F3;" for = "observaciones"> Observaciones: </label>
                <textarea class = "form-control" name = "observaciones" placeholder = "Comentarios"></textarea>
                <br>
                <br>
                <button class="btn btn-success" id="addbtn" style="float: right; display: block;"> Agregar</button> 
            </form>

        </div>
        <script>
            $(document).ready(
                    function () {

                        $("#addbtn").click(
                                function () {
                                    window.location.href = "#";
                                }
                        );
                    }
            );
        </script>
    </jsp:attribute>  
</minierptemplate:template>
