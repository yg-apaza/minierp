<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuraciones - Sucursal</title>
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
        
        
        <div id="pagel-body">
	<!--Barra de opciones-->
            <div class="row">
                <div class="col-lg-12">
                    <br><h1 class="page-header"> Sucursal</h1>
                </div>
            </div> 
            <div class="row">
                <button class="btn btn-success" id="addbtn" style="float: leaft; display: block;"> Agregar Sucursal</button>   
            </div>
           <!--Contenido de Sucursal-->
           
           <br>
           <div id="sucursal">
		<div class="row">
			<label> Sucursales: </label>
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
