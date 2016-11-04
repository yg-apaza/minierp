<%@tag description="display the whole nodeTree" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@attribute name="node" type="org.epis.minierp.model.EnP3mCuenta" required="true" %>
<%@taglib prefix="minierptemplate" tagdir="/WEB-INF/tags" %>
<c:if test="${node.estRegCod eq 'A'.charAt(0)}">
    <tr>
        <td>${node.cueNum}</td>
        <td>${node.cueDes}</td>
        <c:if test = "${sessionScope.usuario.getTaGzzTipoUsuario().getTipUsuCod()!=5}">
        <td class="text-right">
            <a href="#" data-toggle="modal" data-target="#agregarModal" data-codigo="${node.cueCod}" data-nivel="${node.cueNiv}" data-numero="${node.cueNum}">
                <i class="fa fa-plus-square-o fa-2x" style="color: black;"></i>
            </a>
            <a href="#" data-toggle="modal" data-target="#modificarModal" data-codigo="${node.cueCod}" data-numero="${node.cueNum}" data-nombre="${node.cueDes}" data-amadeb="${node.enP3mCuentaByCueAmaDeb.cueNum}" data-amahab="${node.enP3mCuentaByCueAmaHab.cueNum}">
                <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
            </a>
            <a href="#" data-toggle="modal" data-target="#eliminarModal" data-codigo="${node.cueCod}" data-numero="${node.cueNum}">
                <i class="fa fa-trash-o fa-2x" style="color: black;"></i>
            </a>
        </td>
        </c:if>
    </tr>
</c:if>
<c:if test="${fn:length(node.enP3mCuentasForCuePad) > 0}">
    <c:if test="${node.estRegCod eq 'A'.charAt(0)}">
        <c:forEach var="child" items="${node.enP3mCuentasForCuePad}">
            <minierptemplate:nodeTree node="${child}"/>
        </c:forEach>
    </c:if>
</c:if>