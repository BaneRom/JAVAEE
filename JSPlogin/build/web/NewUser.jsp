<%-- 
    Document   : NewUser
    Created on : Dec 14, 2023, 9:33:26 PM
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
                PreparedStatement ps=con.prepareStatement("Insert into registration(?,?,?,?)");
                ps.setString(1,request.getParameter("t1"));
                ps.setString(2,request.getParameter("t2"));
                ps.setString(3,request.getParameter("t3"));
                ps.setString(1,request.getParameter("t4"));
                ps.executeUpdate();
                con.close();
                response.sendRedirect("index.html");
            }catch(Exception ex){
                out.println(ex.getMessage());
            }
        %>
    </body>
</html>
