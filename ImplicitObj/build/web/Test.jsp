<%-- 
    Document   : Test
    Created on : Dec 14, 2023, 8:05:00 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Implicit Object</h1><br><br>
        <h1>Request Object</h1><br>
        Query String <%=request.getQueryString() %><br>
        Context Path <%=request.getContextPath() %><br>
        Remote Host <%=request.getRemoteHost() %><br><br>
        <h1>Response Object</h1><br><br>
        Character Encoding <%= response.getCharacterEncoding() %><br>
        Content Type <%= response.getContentType() %><br>
        Locale <%= response.getLocale() %><br><br>
        <h1>Session Object</h1><br>
        ID <%= session.getId() %><br>
        Creation Time <%= session.getCreationTime() %><br>
        Last Access Time <%= session.getLastAccessedTime() %>
    </body>
</html>
