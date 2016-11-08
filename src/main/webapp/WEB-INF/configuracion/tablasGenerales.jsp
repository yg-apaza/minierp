<%-- 
    Document   : tablasGenerales
    Created on : 06-nov-2016, 11:13:15
    Author     : Bryan
--%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuraciones - Tablas Generales</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <br>
        <div class="pagel-body">
            <h1 class="page-header"> Tablas Generales
                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                <a href="#" class="btn btn-success btn-circle" data-toggle="modal" data-target="#agregarModal"><i class="fa fa-plus"></i></a>
                </c:if>
            </h1>
            
            <div class="form-group"> 
                <label> Tablas: </label><br/>
                <select id="tab" name="tab" class="form-control">
                    <option value="0">Banco</option>
                    <option value="1">Estado civil</option>
                    <option value="2">Estado de factura</option>
                    <option value="3">Estado de unidad de transporte</option>
                    <option value="4">M�todo de pago de factura</option>
                    <option value="5">Moneda</option>
                    <option value="6">Motivo de traslado</option>
                    <option value="7">Tipo de cliente</option>
                    <option value="8">Tipo de comprobante</option>
                    <option value="9">Tipo de descuento</option>
                    <option value="10">Tipo de destinatario</option>
                    <option value="11">Tipo de devoluci�n</option>
                    <option value="12">Tipo de documento de cliente</option>
                    <option value="13">Tipo de documento de proveedor</option>
                    <option value="14">Tipo de documento de transportista</option>
                    <option value="15">Tipo de documento de usuario</option>
                    <option value="16">Tipo de pago de factura</option>
                    <option value="17">Tipo de unidad de transporte</option>
                    <option value="18">Tipo de usuario</option>
                    <option value="19">Unidad de medida</option>
                    <option value="20">Canal de cliente</option>
                    <option value="21">Tipo de falla de producto</option>
                </select>
            </div>
            
            
            <div class="col-md-12">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover" id="tablaDocClientes">
                        <thead>
                            <tr>    
                                <th>Datos</th>
                                <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
                                <th class="text-left">Acciones</th>
                                </c:if>
                            </tr>
                        </thead>
                        <tbody id="tableId">
                            
                        </tbody>
                    </table>
                </div>
            </div>                        
        </div>       
        
        <!-- MODAL PARA AGREGAR -->
        <div id="agregarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 id="addTitle" class="modal-title"></h4>
                    </div>
                    <form id="createForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/tablasGenerales">
                        <div class="modal-body">
                            <input type="hidden" name="selTabla" id="crtSelTabla">
                            <input type="hidden" name="accion" value="create">
                            <div class="form-group">
                                <label> Detalle: </label><br/>
                                <input type="text" class="form-control" name="regTabDet" id="regTabDet">
                            </div>
                        </div>   
                        <div class="modal-footer">
                            <button type="submit"  class="btn btn-outline btn-success">Agregar</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>                                        
            </div>
        </div>
        
        <!-- MODAL PARA MODIFICAR -->
        <div id="modificarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 id="updtTitle" class="modal-title"></h4>
                    </div>
                    <form id="updateForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/tablasGenerales">
                        <div class="modal-body">
                            <input type="hidden" name="selTabla" id="updtSelTabla">
                            <input type="hidden" name="accion" value="update">  
                            <input type="hidden" name="regTabCod" id="updtRegTabCod">
                            <div class="form-group">
                                <label> Detalle: </label><br/>
                                <input type="text" class="form-control" name="regTabDet" id="updtRegTabDet">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit"  class="btn btn-outline btn-success">Modificar</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
          </div>
        </div>
        
        <!-- MODAL PARA ELIMINAR -->
        <div id="eliminarModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 id="delTitle" class="modal-title">Eliminar Documento</h4>
                    </div>
                    <form id="deleteForm" method="post" action="${pageContext.request.contextPath}/secured/configuracion/tablasGenerales">
                        <div class="modal-body">
                            <input type="hidden" name="selTabla" id="delSelTabla">
                            <input type="hidden" name="accion" value="delete">
                            <input type="hidden" class="form-control" name="regTabCod" id="delRegTabCod">
                            <input type="hidden" class="form-control" name="regTabDet" id="delRegTabDet">
                            <p> �Desea dar de baja a:<br/> <span id="delTabNom"></span> - <span id="delTabReg"></span>?</p>
                        </div>
                        <div class="modal-footer">
                            <button type="submit"  class="btn btn-outline btn-success">Si</button>
                            <button type="button" class="btn btn-outline btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>              
                          
                        
        <script>
            $('#tab').val(localStorage.getItem("selTabla"));
            $( "#tab" ).change(function () {
                var str = "";
                var html='';
                $( "#tab option:selected" ).each(function() {
                    switch($(this).val()){
                        case "0":
                            html='<c:forEach items="${banco}" var="banco">'+
                                    '<tr><td value="${banco.banCod}"> ${banco.banDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${banco.banCod}" data-regdet="${banco.banDet}">'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${banco.banCod}" data-regdet="${banco.banDet}">'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "1":
                            html='<c:forEach items="${estadocivil}" var="estadocivil">'+
                                    '<tr><td value="${estadocivil.estCivCod}"> ${estadocivil.estCivDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${estadocivil.estCivCod}" data-regdet="${estadocivil.estCivDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${estadocivil.estCivCod}" data-regdet="${estadocivil.estCivDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "2":
                            html='<c:forEach items="${estadofactura}" var="estadofactura">'+
                                    '<tr><td value="${estadofactura.estFacCod}"> ${estadofactura.estFacDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${estadofactura.estFacCod}" data-regdet="${estadofactura.estFacDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${estadofactura.estFacCod}" data-regdet="${estadofactura.estFacDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "3":
                            html='<c:forEach items="${estadounitransporte}" var="estadounitransporte">'+
                                    '<tr><td value="${estadounitransporte.estUniTraCod}"> ${estadounitransporte.estUniTraDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${estadounitransporte.estUniTraCod}" data-regdet="${estadounitransporte.estUniTraDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${estadounitransporte.estUniTraCod}" data-regdet="${estadounitransporte.estUniTraDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "4":
                            html='<c:forEach items="${metodopagofactura}" var="metodopagofactura">'+
                                    '<tr><td value="${metodopagofactura.metPagCod}"> ${metodopagofactura.metPagDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${metodopagofactura.metPagCod}" data-regdet="${metodopagofactura.metPagDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${metodopagofactura.metPagCod}" data-regdet="${metodopagofactura.metPagDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "5":
                            html='<c:forEach items="${moneda}" var="moneda">'+
                                    '<tr><td value="${moneda.monCod}"> ${moneda.monDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${moneda.monCod}" data-regdet="${moneda.monDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${moneda.monCod}" data-regdet="${moneda.monDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "6":
                            html='<c:forEach items="${motivotraslado}" var="motivotraslado">'+
                                    '<tr><td value="${motivotraslado.motTraCod}"> ${motivotraslado.motTraDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${motivotraslado.motTraCod}" data-regdet="${motivotraslado.motTraDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${motivotraslado.motTraCod}" data-regdet="${motivotraslado.motTraDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "7":
                            html='<c:forEach items="${tipocliente}" var="tipocliente">'+
                                    '<tr><td value="${tipocliente.tipCliCod}"> ${tipocliente.tipCliDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipocliente.tipCliCod}" data-regdet="${tipocliente.tipCliDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipocliente.tipCliCod}" data-regdet="${tipocliente.tipCliDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "8":
                            html='<c:forEach items="${tipocomprobante}" var="tipocomprobante">'+
                                    '<tr><td value="${tipocomprobante.tipComCod}"> ${tipocomprobante.tipComDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipocomprobante.tipComCod}" data-regdet="${tipocomprobante.tipComDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipocomprobante.tipComCod}" data-regdet="${tipocomprobante.tipComDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "9":
                            html='<c:forEach items="${tipodescuento}" var="tipodescuento">'+
                                    '<tr><td value="${tipodescuento.tipDesCod}"> ${tipodescuento.tipDesDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipodescuento.tipDesCod}" data-regdet="${tipodescuento.tipDesDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipodescuento.tipDesCod}" data-regdet="${tipodescuento.tipDesDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "10":
                            html='<c:forEach items="${tipodestinatario}" var="tipodestinatario">'+
                                    '<tr><td value="${tipodestinatario.tipDstCod}"> ${tipodestinatario.tipDstDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipodestinatario.tipDstCod}" data-regdet="${tipodestinatario.tipDstDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipodestinatario.tipDstCod}" data-regdet="${tipodestinatario.tipDstDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "11":
                            html='<c:forEach items="${tipodevolucion}" var="tipodevolucion">'+
                                    '<tr><td value="${tipodevolucion.tipDevCod}"> ${tipodevolucion.tipDevDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipodevolucion.tipDevCod}" data-regdet="${tipodevolucion.tipDevDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipodevolucion.tipDevCod}" data-regdet="${tipodevolucion.tipDevDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "12":
                            html='<c:forEach items="${tipodoccliente}" var="tipodoccliente">'+
                                    '<tr><td value="${tipodoccliente.tipDocCliCod}"> ${tipodoccliente.tipDocCliDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipodoccliente.tipDocCliCod}" data-regdet="${tipodoccliente.tipDocCliDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipodoccliente.tipDocCliCod}" data-regdet="${tipodoccliente.tipDocCliDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "13":
                            html='<c:forEach items="${tipodocproveedor}" var="tipodocproveedor">'+
                                    '<tr><td value="${tipodocproveedor.tipDocProCod}"> ${tipodocproveedor.tipDocProDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipodocproveedor.tipDocProCod}" data-regdet="${tipodocproveedor.tipDocProDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipodocproveedor.tipDocProCod}" data-regdet="${tipodocproveedor.tipDocProDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "14":
                            html='<c:forEach items="${tipodoctransportista}" var="tipodoctransportista">'+
                                    '<tr><td value="${tipodoctransportista.tipDocTraCod}"> ${tipodoctransportista.tipDocTraDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipodoctransportista.tipDocTraCod}" data-regdet="${tipodoctransportista.tipDocTraDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipodoctransportista.tipDocTraCod}" data-regdet="${tipodoctransportista.tipDocTraDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "15":
                            html='<c:forEach items="${tipodocusuario}" var="tipodocusuario">'+
                                    '<tr><td value="${tipodocusuario.tipDocUsuCod}"> ${tipodocusuario.tipDocUsuDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipodocusuario.tipDocUsuCod}" data-regdet="${tipodocusuario.tipDocUsuDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipodocusuario.tipDocUsuCod}" data-regdet="${tipodocusuario.tipDocUsuDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "16":
                            html='<c:forEach items="${tipopagofactura}" var="tipopagofactura">'+
                                    '<tr><td value="${tipopagofactura.tipPagCod}"> ${tipopagofactura.tipPagDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipopagofactura.tipPagCod}" data-regdet="${tipopagofactura.tipPagDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipopagofactura.tipPagCod}" data-regdet="${tipopagofactura.tipPagDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "17":
                            html='<c:forEach items="${tipounitransporte}" var="tipounitransporte">'+
                                    '<tr><td value="${tipounitransporte.tipUniTraCod}"> ${tipounitransporte.tipUniTraDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipounitransporte.tipUniTraCod}" data-regdet="${tipounitransporte.tipUniTraDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipounitransporte.tipUniTraCod}" data-regdet="${tipounitransporte.tipUniTraDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "18":
                            html='<c:forEach items="${tipousuario}" var="tipousuario">'+
                                    '<tr><td value="${tipousuario.tipUsuCod}"> ${tipousuario.tipUsuDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipousuario.tipUsuCod}" data-regdet="${tipousuario.tipUsuDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipousuario.tipUsuCod}" data-regdet="${tipousuario.tipUsuDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "19":
                            html='<c:forEach items="${unidadmed}" var="unidadmed">'+
                                    '<tr><td value="${unidadmed.uniMedCod}"> ${unidadmed.uniMedDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${unidadmed.uniMedCod}" data-regdet="${unidadmed.uniMedDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${unidadmed.uniMedCod}" data-regdet="${unidadmed.uniMedDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "20":
                            html='<c:forEach items="${canalcliente}" var="canalcliente">'+
                                    '<tr><td value="${canalcliente.canCliCod}"> ${canalcliente.canCliDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${canalcliente.canCliCod}" data-regdet="${canalcliente.canCliDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${canalcliente.canCliCod}" data-regdet="${canalcliente.canCliDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        case "21":
                            html='<c:forEach items="${tipofallaprod}" var="tipofallaprod">'+
                                    '<tr><td value="${tipofallaprod.tipFallProCod}"> ${tipofallaprod.tipFallProDet} </td>'+
                                    '<c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">'+
                                    '<td class="text-left">'+
                                    '<a href="#" data-toggle="modal" data-target="#modificarModal" data-regcod="${tipofallaprod.tipFallProCod}" data-regdet="${tipofallaprod.tipFallProDet}" >'+
                                    '<i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i> </a>'+
                                    '<a href="#" data-toggle="modal" data-target="#eliminarModal" data-regcod="${tipofallaprod.tipFallProCod}" data-regdet="${tipofallaprod.tipFallProDet}" >'+
                                    '<i class="fa fa-trash-o fa-2x" style="color: black;"></i> </a></td>'+'</c:if>'+
                                    '</tr> '+
                                '</c:forEach>';
                            $('#tableId').html(html);
                            break;
                        
                    }
                    //setear el titulo de los modals
                    str += $( this ).text() + " ";
                    localStorage.setItem("selTabla",$(this).val());
                });
                $('#addTitle').text( "Nuevo " + str );
                $('#updtTitle').text( "Modificar " + str );
                $('#delTitle').text( "Eliminar " + str );
                $('#delTabNom').text( str );
                
                $('#crtSelTabla').val($('#tab').val());
                $('#updtSelTabla').val($('#tab').val());
                $('#delSelTabla').val($('#tab').val());
                
            })
            .change();
            $('#tablaDocClientes').DataTable({
                responsive: true
            });
            var updateModal = $("#modificarModal");
            var deleteModal = $("#eliminarModal");
            
            var updtRegTabCod = $("#updtRegTabCod");
            var updtRegTabDet = $("#updtRegTabDet");
            var delRegTabCod = $("#delRegTabCod");
            var delRegTabDet = $("#delRegTabDet");
            
            
            updateModal.on('show.bs.modal', function(e){
                updtRegTabCod.val($(e.relatedTarget).data('regcod'));
                updtRegTabDet.val($(e.relatedTarget).data('regdet'));
            });
            
            deleteModal.on('show.bs.modal', function(e){
                delRegTabCod.val($(e.relatedTarget).data('regcod'));
                delRegTabDet.val($(e.relatedTarget).data('regdet'));
                $('#delTabReg').text($(e.relatedTarget).data('regdet'));
            });
        </script>    
     
    </jsp:attribute>
</minierptemplate:template>