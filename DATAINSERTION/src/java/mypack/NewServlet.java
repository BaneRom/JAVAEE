package mypack;

import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class NewServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            IOException, ServletException {
        Connection con = null;
        PreparedStatement ps = null;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String uname = request.getParameter("uname");

        String pw = request.getParameter("pw");
        String email = request.getParameter("email");
        if (uname.equals("admin") && pw.equals("12345")) {
            {
                out.println("<body bgcolor= lightblue >");
                out.println("<h1><center> Welcome !!! " + uname + "</center></h1>");
            }
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/office",
                        "root", "root");
                ps = con.prepareStatement("insert into emp values (?,?,?)");
                ps.setString(1, uname);
                ps.setString(2, pw);
                ps.setString(3, email);
                ps.execute();
                out.print("<h1><center>Data inserted successfully!!!!</center></h1>");
            } catch (Exception e) {
                out.println(e);
            }
            out.println("<b>" + "<b>");
        } else {
            out.println("<body bgcolor= red >");
            out.println("<h1><center> Login Fail !!! </center></h1>");
        }
    }
}
