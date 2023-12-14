<%-- 
    Document   : newjsp
    Created on : Dec 14, 2023, 10:40:25 PM
    Author     : dell
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%! int week=4; %>
        <% switch(week){
            case 1:
                out.println("Sunday");
                break;
            case 2:
                out.println("Monday");
                break;
            case 3:
                out.println("Tuesday");
                break;
            case 4:
                out.println("Wednesday");
                break;
            case 5:
                out.println("Thursday");
                break;
            case 6:
                out.println("Friday");
                break;
            case 7:
                out.println("Saturday");
                break;
            default:
                out.println("Invalid input");
                break;
        }
        %>
    </body>
</html>
