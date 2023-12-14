<%-- 
    Document   : conversion
    Created on : Dec 14, 2023, 10:59:17 PM
    Author     : dell
--%>
<%@page import="com.test.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int choice= Integer.parseInt(request.getParameter("s1"));
        float amt= Float.parseFloat(request.getParameter("t1"));
        float camt=0f;
        CurrencyConverterLocal c1=new CurrencyConverter();
        if(choice==1)
            camt=c1.DtoR(amt);
        else
            camt=c1.RtoD(amt);
        out.println(camt);
        %>
    </body>
</html>
