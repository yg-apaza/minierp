<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuraciones - Datos de la empresa</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <div class="container col-md-12">
                <h2>Datos de la empresa</h2>
                <form id="empForm" enctype="multipart/form-data" method="post" action="${pageContext.request.contextPath}/secured/configuracion/datosEmpresa">
                    <div class="container" align="center" style="max-width:300px; margin: 0 auto;">
                        <label for="imgProd" class="control-label">Logo de la empresa</label><br/>
                        <label id="noHay"></label>
                        <div class="form-group">
                            <img id="img" src="" style="max-width: 297px;" border="3"/><br/>
                        </div>
                        <input name="imgProd" id="imgProd" type="file" class="form-control-file" accept=".jpg,.jpeg"><br/>
                    </div>
                    <div class="container col-md-8">
                        <div class="form-group">
                            <label for="empNomCom">Nombre:</label>
                            <input type="text" class="form-control" id="empNomCom" name="empNomCom" value="${emp.getEmpNomCom()}">
                        </div>
                        <div class="form-group">
                            <label >Descripción:</label><br/>
                            <input type="text" class="form-control" id="empDes" name="empDes" value="${emp.getEmpDes()}">
                        </div>
                        <div class="form-group">
                            <label >Razón social:</label><br/>
                            <input type="text" class="form-control" id="empRazSoc" name="empRazSoc" value="${emp.getEmpRazSoc()}">
                        </div>
                        <div class="form-group">
                            <label>Dirección:</label><br/>
                            <input type="text" class="form-control" id="empDir" name="empDir" value="${emp.getEmpDir()}">
                        </div>
                        <div class="form-group">
                            <label>Dominio fiscal:</label><br/>
                            <input type="text" class="form-control" id="empDomFis" name="empDomFis" value="${emp.getEmpDomFis()}">
                        </div>
                        <div class="form-group">
                            <label>Teléfono:</label><br/>
                            <input class="form-control" id="empTel" name="empTel" value="${emp.getEmpTel()}">
                        </div>
                        <div class="form-group">
                            <label>IGV:</label><br/>
                            <input class="form-control" id="empIgv" name="empIgv" value="${emp.getEmpIgv()}">
                        </div>
                        <div class="form-group">
                            <label>Correo electrónico</label><br/>
                            <input type="email" class="form-control" id="empEmail" name="empEmail" value="${emp.getEmpEmail()}">
                        </div>
                        <div class="form-group">
                            <label>R.U.C:</label><br/>
                            <input type="text" class="form-control" id="empRuc" name="empRuc" value="${emp.getEmpRuc()}">
                        </div>
                        <div class="form-group">
                            <label>Tipo de cambio (compra):</label><br/>
                            <input type="text" class="form-control" id="empTipCamCom" name="empTipCamCom" value="${emp.getEmpTipCamCom()}">
                        </div>
                        <div class="form-group">
                            <label>Tipo de cambio (venta):</label><br/>
                            <input type="text" class="form-control" id="empTipCamVen" name="empTipCamVen" value="${emp.getEmpTipCamVen()}">
                        </div>
                        <div class="form-group">
                            <label>Lote:</label><br/>
                            <input type="text" class="form-control" id="empLot" name="empLot" value="${emp.getEmpLot()}">
                        </div>
                        <div class="form-group" align="center">
                            <button type="submit" align="center" class="btn btn-default">Guardar</button>
                            <button align="center" class="btn btn-default">Cancelar</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <script>
            function changeImg(){
                $('#img')[0].src="/minierp/img/"+$('#imgProd').val();
            }
            var src="";
            console.log("${empImg}");
            if("${empImg}"=="nada"){
                console.log("src nada: "+src);
                $('#noHay')[0].innerHTML="No ha definido un logo...";
            }
            else{
                console.log("src encuentra: "+"${empImg}");
                src="/minierp/img/"+"${empImg}";
            }
            $('#img')[0].src=src;
            console.log("src setea: "+src);
            $("#empForm").validate({
                rules: {
                    empTel: {
                        number: true,
                        digits: true
                    },
                    empEmail: {
                        email: true
                    },
                    empRuc: {
                        number: true,
                        minlength: 11,
                        maxlength: 11
                    },
                    empLote: {
                        number: true,
                        digits: true
                    },
                    empTipCamCom: {
                        number: true
                    },
                    empTipCamVen: {
                        number: true
                    }
                },
                messages: {
                    empTel: {
                        number: "Ingrese sólo números."
                    },
                    empEmail: {
                        email: true
                    },
                    empRuc: {
                        number: "Ingrese sólo números.",
                        minlength: "El R.U.C. debe contener 11 dígitos",
                        maxlength: "El R.U.C. debe contener 11 dígitos"
                    },
                    empLote: {
                        number: "Ingrese sólo números."
                    },
                    empTipCamCom: {
                        number: "Ingrese sólo números."
                    },
                    empTipCamVen: {
                        number: "Ingrese sólo números."
                    }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>

