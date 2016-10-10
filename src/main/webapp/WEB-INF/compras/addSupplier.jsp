<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Clasificación ABC</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.min"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.validate.min"></script>
        <script src="${pageContext.request.contextPath}/js/jquery.PrintArea.js"></script>
        
        <div id ="wrapper">
            <div class="navbar-default sidebar">
                <div class="sidebar-nav">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/secured/compras"><i class="fa fa-dashboard fa-fw"></i> Panel General</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-group fa-fw"></i> Logística<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="#">Kardex</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/compras/clasificacionABC">Clasificación ABC</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/compras/inventario">Inventario</a>
                                </li>
                                 <li>
                                    <a href="${pageContext.request.contextPath}/secured/compras/limiteMaximo">Stock</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-truck fa-fw"></i> Compras<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/compras/registerPurchase">Registrar Factura</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="page-wrapper">
                <div class="row">
                    <div class="col-lg-12">
                        <br><h1 class="page-header"> Agregar nuevo proveedor </h1>
                    </div>
                </div>
                <form class="form-group-sm">
                    <label class = "form-control" style="background: #A9E2F3;" for = "nombre"> Nombre del proveedor: </label>
                    <input class = "form-control" name = "nombre" type = "text" placeholder = "Nombre del Proveedor">
                    <br>
                    <label class = "form-control" style="background: #A9E2F3;" for = "contacto"> Nombre del contacto: </label>
                    <input class = "form-control" name = "contacto" type = "text" placeholder = "Nombre del contacto">
                    <br>
                    <label class = "form-control" style="background: #A9E2F3;"  for = "direccion"> Dirección: </label>
                    <input class = "form-control" name = "direccion" type = "text" placeholder = "Distrito, Provincia,País">
                    <br>
                    <label class = "form-control" style="background: #A9E2F3;" for = "telefono"> Teléfono: </label>
                    <input class = "form-control" name = "telefono" type = "text" placeholder = "Ej. 054425689">
                    <br>
                    <label class = "form-control" style="background: #A9E2F3;" for = "celular"> Celular: </label>
                    <input class = "form-control" name = "celular" type = "text" placeholder = "Ej. 940562312">
                    <br>
                    <label class = "form-control" style="background: #A9E2F3;" for = "email"> Email: </label>
                    <input class = "form-control" name = "email" type = "text" placeholder = "Ej. example@example.com">
                    <br>
                    <label class = "form-control" style="background: #A9E2F3;" for = "pagina"> Página Web: </label>
                    <input class = "form-control" name = "pagina" type = "text" placeholder = "Ej. wwww.proveedores.com">
                    <br>
                    <label class = "form-control" style="background: #A9E2F3;" for = "observaciones"> Observaciones: </label>
                    <textarea class = "form-control" name = "observaciones" placeholder = "Comentarios"></textarea>
                    <br>
                    <br>
                    <button class="btn btn-success" id="addbtn" style="float: right; display: block;"> Agregar</button> 
                </form>
                
            </div>
        </div>
        <script>
            $(document).ready(
                 
                 function(){
                     
                    $("#addbtn").click(
                        function(){
                            window.location.href="#";
                        }
                    );
                 }
            );     
        </script>
    </jsp:attribute>  
</minierptemplate:template>
