<%-- 
    Document   : Validate
    Created on : Dec 14, 2023, 8:42:16 PM
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
        <%
            String name=request.getParameter("name");
            String agestr=request.getParameter("age");
            String errmsg="";
            if(name.equals(""))
                errmsg="Plz provide name<br>";
            if(agestr.trim().equals(""))
                errmsg+="Plz provide age<br>";
            try{
                int age = Integer.parseInt(agestr);
            }catch(Exception ex){
                errmsg+="Invalid age<br>";
            }
            if(errmsg.trim().equals("")==false){
                %>
                <jsp:include page="index.html"></jsp:include>
                <%
                    out.println(errmsg);     
            }
            else{
                out.println("Name "+ request.getParameter("name"));
                out.println("<br> Age"+ request.getParameter("age"));
            }
            %>
    </body>
</html>
