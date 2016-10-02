<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Usuarios</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="container">
            <h1 class="page-header">Usuarios</h1>
            <br>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Usuario</th>
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>Rol</th>
                        <th>Fecha de nacimiento</th>
                        <th>Estado Civil</th>
                        <th>Género</th>
                        <th>Estado de Registro</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>administrador</td>
                        <td>Yuliana Guadalupe</td>
                        <td>Apaza Yllachura</td>
                        <td>Administrador</td>
                        <td>1994/10/28</td>
                        <td>Soltero</td>
                        <td>Femenino</td>
                        <td>A</td>
                        <td>
                            <i class="fa fa-pencil-square-o fa-2x"></i>
                            <i class="fa fa-trash-o fa-2x"></i>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </jsp:attribute>
</minierptemplate:template>