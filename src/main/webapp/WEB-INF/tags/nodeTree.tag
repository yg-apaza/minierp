<%@tag description="display the whole nodeTree" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@attribute name="node" type="org.epis.minierp.model.EnP3mCuenta" required="true" %>
<%@taglib prefix="minierptemplate" tagdir="/WEB-INF/tags" %>
<tr>
    <td>${node.cueNum}</td>
    <td>${node.cueDes}</td>
    <td class="text-right">
        <a href="#" data-toggle="modal" data-target="#agregarModal" data-codigo="${node.cueCod}" data-nivel="${node.cueNiv}" data-numero="${node.cueNum}">
            <i class="fa fa-plus-square-o fa-2x" style="color: black;"></i>
        </a>
        <a href="#" data-toggle="modal" data-target="#modificarModal" data-codigo="${node.cueCod}" data-numero="${node.cueNum}" data-nombre="${node.cueDes}">
            <i class="fa fa-pencil-square-o fa-2x" style="color: black;"></i>
        </a>
        <a href="#"><i class="fa fa-trash-o fa-2x" style="color: black;"></i></a>
    </td>
</tr>
<c:if test="${fn:length(node.enP3mCuentas) > 0}">
    <c:forEach var="child" items="${node.enP3mCuentas}">
        <minierptemplate:nodeTree node="${child}"/>
    </c:forEach>
</c:if>