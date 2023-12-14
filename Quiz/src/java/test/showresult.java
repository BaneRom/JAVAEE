package test;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class showresult extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/qadb", "root", "hr");
            Statement stmt = con.createStatement();
            ResultSet res = stmt.executeQuery("select ans from quiz");
            int count = 0, qno = 0;
            while (res.next()) {
                if (res.getString(1).equals(request.getParameter("" + (++qno)))) {
                    count++;
                    out.println("<h1>Correct </h1>");
                } else {
                    out.println("<h1>Incorrect </h1>");
                }
            }
            out.println("<h1>Your Score is " + count + " </h1>");
        } catch (Exception e) {
            out.println(e);
        }
    }
}
