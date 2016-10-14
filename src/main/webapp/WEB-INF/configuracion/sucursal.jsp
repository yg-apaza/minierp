<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>MiniERP - Configuraciones </title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/sb-admin-2.min.js"></script>
        
        <script>
            $(document).ready(
                 
                 function(){
                     
                    $("#addbtn").click(
                        function(){
                            window.location.href="${pageContext.request.contextPath}/secured/configuracion/addsucursal";
                        }
                    );
                 }
            );     
        </script>
        
        <div id="wrapper">
            <div class="navbar-default sidebar">
                <div class="sidebar-nav">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/secured/configuracion"><i class="fa fa-dashboard fa-fw"></i> Panel General</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-group fa-fw"></i> Configuracion<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/configuracion/empresa">Datos de la Empresa</a>
                                </li>
                                <li>
                                   <a href="${pageContext.request.contextPath}/secured/configuracion/sucursal">Sucursal</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/secured/configuracion/puntodeventa">Punto de Venta</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
                                
        <div id="page-wrapper">
	<!--Barra de opciones-->
            <div class="row">
                <br/>
                    <div class="panel panel-primary" style="margin-bottom: -20px;">
                            <div class="panel-heading" style="height: 55px;">
                                 <button class="btn btn-success" id="addbtn" style="float: leaft; display: block;"> Agregar Sucursal</button> 
                            </div>
                    </div>
                   
                </div>
           <!--Contenido de Sucursal-->
           <div id="sucursal">
		<div class="row">
			<h2 class="page-header"> Sucursales: </h2>
			<table class="table table-bordered table-striped table-hover" id="productTableM">
				<tr>    
                                        <th> Codigo </th>
					<th>Descripcion</th>
					<th>Direccion</th>
                                        <th>Acciones </th>
					
				</tr>
                                <c:forEach items="${sucursales}" var="sucursales">
                                    
                                    <tr>
                                      <td value="${sucursales}"> ${sucursales.sucCod} </td> 
                                      <td value="${sucursales}"> ${sucursales.sucDes} </td> 
                                      <td value="${sucursales}"> ${sucursales.sucDir} </td>
                                      <td>
                                            <a href="/minierp/eliminar?id=41273392" >
                                            <i class="fa fa-trash-o fa-2x"></i> </a>                                          
                                            <a href="/minierp/updatecontroller?id=41273392">
                                            <i class="fa fa-pencil-square-o fa-2x"></i> </a>       
                                       </td>
                                    </tr> 
                                    
                                </c:forEach>		
			</table>
		</div>
            </div>            
                                
        </div>        
        </div>
    </jsp:attribute>
</minierptemplate:template>
