<%-- 
    Document   : CheckLogin
    Created on : Dec 14, 2023, 10:19:58 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bscit","root","hr");
                PreparedStatement ps=con.prepareStatement("slect * from registration where username=? and password=?");
                ps.setString(1,request.getParameter("t1"));
                ps.setString(1,request.getParameter("p1"));
                ResultSet rs=ps.executeQuery();
                if(rs.next())
                    out.println("Valid");
                else
                    out.println("Invalid");
            }catch(Exception ex){
                out.println(ex.getMessage());
            }
        %>
    </body>
</html>
