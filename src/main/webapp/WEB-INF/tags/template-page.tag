<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="head" fragment="true" %>
<%@attribute name="navegation" fragment="true" %>
<%@attribute name="wrapper" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="jsresources" fragment="true" %>
<%@attribute name="cssresources" fragment="true" %>
<%@attribute name="favicon" fragment="true" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <jsp:invoke fragment="head"/>
        <jsp:invoke fragment="cssresources"/>
        <jsp:invoke fragment="favicon"/>
    </head>
    <body>
        <div id="navegation">
            <jsp:invoke fragment="navegation"/>
        </div>
        <div id="wrapper">
            <jsp:invoke fragment="wrapper"/>
            <div id="pageheader">
                <jsp:invoke fragment="header"/>
            </div>
            <div id="body">
                <jsp:doBody/>
            </div>
            <div id="pagefooter">
                <jsp:invoke fragment="footer"/>
            </div>
        </div>
        <jsp:invoke fragment="jsresources"/>
    </body>
</html>