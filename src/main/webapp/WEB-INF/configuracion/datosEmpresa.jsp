<%@ taglib tagdir="/WEB-INF/tags" prefix="minierptemplate" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<minierptemplate:template>
    <jsp:attribute name="titulo">
        <title>Configuraciones - Datos de la empresa</title>
    </jsp:attribute>
    <jsp:attribute name="contenido">
        <div class="panel-body">
            <div class="col-md-12">
                <h1>Datos de la empresa</h1>
                <form id="empForm" method="post" enctype='multipart/form-data' action="${pageContext.request.contextPath}/secured/configuracion/datosEmpresa">
                    <div class="form-horizontal" align="center">
                        <div class="form-group">
                        <img id="preview" src="${pageContext.request.contextPath}/img/${empImg}" class="img-responsive center-block" alt="Logo de la Empresa">
                        </div>
                        <input name="imgProd" id="imgProd" type="file" class="form-control-file" accept="image/x-jpg,image/x-jpeg"><br/>
                    </div>
                    <div class="form-horizontal">
                        <div class="form-group">
                            <div class="col-md-6">
                                <label>Raz�n Social:</label>
                                <input type="text" class="form-control" id="UpdateempRazSoc" name="empRazSoc" value="${empresa.empRazSoc}">
                            </div>
                            <div class="col-md-6">
                                <label>Nombre Comercial:</label>
                                <input type="text" class="form-control" id="UpdateempNomCom"  name="empNomCom" value="${empresa.empNomCom}">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <label>Dominio Fiscal:</label>
                                <input type="text" class="form-control" id="UpdateempDomFis" name="empDomFis" value="${empresa.empDomFis}">
                            </div>
                            <div class="col-md-6">
                                <label>Descripcion:</label>
                                <input type="text" class="form-control" id="UpdateempDes"  name="empDes" value="${empresa.empDes}">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <label>Direccion:</label>
                                <input type="text" class="form-control" id="UpdateempDir" name="empDir" value="${empresa.empDir}">
                            </div>
                            <div class="col-md-3">
                                <label>Telefono:</label>
                                <input type="text" class="form-control" id="UpdateempTel"  name="empTel" value="${empresa.empTel}">
                            </div>
                            <div class="col-md-3">
                                <label>Email:</label>
                                <input type="text" class="form-control" id="UpdateempEmail"  name="empEmail" value="${empresa.empEmail}">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-3">
                                <label>Tipo de Cambio $ Compra:</label>
                                <input type="text" class="form-control" id="UpdateempTipCamCom"  name="empTipCamCom" value="${empresa.empTipCamCom}">
                            </div>
                            <div class="col-md-3">
                                <label>Tipo de Cambio $ Venta:</label>
                                <input type="text" class="form-control" id="UpdateempTipCamVen"  name="empTipCamVen" value="${empresa.empTipCamVen}">
                            </div>
                            <div class="col-md-3">
                                <label>I.G.V.:</label>
                                <input type="number" class="form-control" id="UpdateempIgv" name="empIgv">
                            </div>
                            <div class="col-md-3">
                                <label># Lote:</label>
                                <input type="number" class="form-control" id="UpdateempLot"  name="empLot"  min="0.0" step="any" value="0.0">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-6">
                                <label>R.U.C.:</label>
                                <input type="text" class="form-control" id="UpdateempRuc"  name="empRuc" value="${empresa.empRuc}">
                            </div>
                            <div class="col-md-2">
                                <label># Det G. Transportista:</label><br/>
                                <input type="number" class="form-control" name="empNumDetGuiRemTra" min="0.0" step="any" value="0.0" id="UpdateempNumDetGuiRemTra">
                            </div>
                            <div class="col-md-2">
                                <label># Det Factura de Venta:</label><br/>
                                <input type="number" class="form-control" name="empNumDetFacVen" min="0.0" step="any" value="0.0" id="UpdateempNumDetFacVen">
                            </div>
                            <div class="col-md-2">
                                <label># Det Boleta de Venta:</label><br/>
                                <input type="number" class="form-control" name="empNumDetBolVen" min="0.0" step="any" value="0.0" id="UpdateempNumDetBolVen">
                            </div>
                        </div>
                    </div>
                    <div class="form-group" Style="text-align: right">
                        <button type="submit" class="btn btn-outline btn-success">Guardar Datos</button>
                    </div>
                </form>
            </div>
        </div>
        <script>
            var UpdateempNumDetGuiRemTra = $("#UpdateempNumDetGuiRemTra");
            var UpdateempNumDetFacVen = $("#UpdateempNumDetFacVen");
            var UpdateempNumDetBolVen = $("#UpdateempNumDetBolVen");
            var UpdateempLot = $("#UpdateempLot");
            var UpdateempIgv = $("#UpdateempIgv");
            
            UpdateempNumDetGuiRemTra.val(${empresa.empNumDetGuiRemTra});
            UpdateempNumDetFacVen.val(${empresa.empNumDetFacVen});
            UpdateempNumDetBolVen.val(${empresa.empNumDetBolVen});
            UpdateempLot.val(${empresa.empLot});
            UpdateempIgv.val(${empresa.empIgv});
            
            jQuery.validator.addMethod("greaterThan", function(value, element, params) {
                if ($(params[0]).val() != '') {    
                    if (!/Invalid|NaN/.test(new Date(value))) {
                        return new Date(value) > new Date($(params[0]).val());
                    }    
                    return isNaN(value) && isNaN($(params[0]).val()) || (Number(value) > Number($(params[0]).val()));
                };
                return true; 
            },'Debe ser mayor que {1}.');
            
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
                    },
                    empNumDetGuiRemTra: {
                        number: true,
                        greaterThan: ["#UpdateempNumDetFacVen", 'N�mero de factura de venta']
                    },
                    empNumDetFacVen: {
                        number: true,
                        min: 0
                    },
                    empNumDetBolVen: {
                        number: true,
                        min: 0
                    }
                },
                messages: {
                    empTel: {
                        number: "Ingrese s�lo n�meros."
                    },
                    empEmail: {
                        email: true
                    },
                    empRuc: {
                        number: "Ingrese s�lo n�meros.",
                        minlength: "El R.U.C. debe contener 11 d�gitos",
                        maxlength: "El R.U.C. debe contener 11 d�gitos"
                    },
                    empLote: {
                        number: "Ingrese s�lo n�meros."
                    },
                    empTipCamCom: {
                        number: "Ingrese s�lo n�meros."
                    },
                    empTipCamVen: {
                        number: "Ingrese s�lo n�meros."
                    },
                    empNumDetGuiRemTra: {
                        number: "Ingrese s�lo n�meros."
                    },
                    empNumDetFacVen: {
                        number: "Ingrese s�lo n�meros.",
                        min: "Debe ser mayor a 0"
                    },
                    empNumDetBolVen: {
                        number: "Ingrese s�lo n�meros.",
                        min: "Debe ser mayor a 0"
                    }
                },
                submitHandler: function(form) {
                    form.submit();
                }
            });
        </script>
    </jsp:attribute>
</minierptemplate:template>

