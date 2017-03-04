<%@tag description="User Page template" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template-login>
    <jsp:attribute name="head">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>MiniERP</title>
    </jsp:attribute>

    <jsp:attribute name="favicon">
        <link href="${pageContext.request.contextPath}/favicon/apple-touch-icon.png" rel="apple-touch-icon" sizes="180x180">
        <link href="${pageContext.request.contextPath}/favicon/favicon-32x32.png" rel="icon" type="image/png" sizes="32x32">
        <link href="${pageContext.request.contextPath}/favicon/favicon-16x16.png" rel="icon" type="image/png" sizes="16x16">
        <link href="${pageContext.request.contextPath}/favicon/manifest.json" rel="manifest">
        <link href="${pageContext.request.contextPath}/favicon/safari-pinned-tab.svg" rel="mask-icon" color="#768094">
        <meta name="apple-mobile-web-app-title" content="MiniERP">
        <meta name="application-name" content="MiniERP">
        <meta name="theme-color" content="#ffffff">
    </jsp:attribute>

    <jsp:attribute name="cssresources">
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/sb-admin-2.css" rel="stylesheet" type="text/css">
        <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </jsp:attribute>

    <jsp:attribute name="jsresources">
        <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    </jsp:attribute>

    <jsp:attribute name="header">

    </jsp:attribute>

    <jsp:attribute name="footer">

    </jsp:attribute>

    <jsp:body>
        <jsp:doBody/>
    </jsp:body>
</t:template-login>