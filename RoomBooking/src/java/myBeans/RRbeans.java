package myBeans;

import javax.ejb.Stateless;
import java.sql.*;

@Stateless
public class RRbeans {

    public RRbeans() {
    }

    public String roomBook(String rt, String cn, String cm) {
        String msg = "";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con
                    = DriverManager.getConnection("jdbc:mysql://localhost:3306/info", "root", "hr");
            String query = "select * from roombook where RoomType=? and status='NotBooked'";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, rt);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                String rno = rs.getString(1);
                PreparedStatement stm1 = con.prepareStatement("update roombook set cust=? where RoomId=? ");

                PreparedStatement stm2 = con.prepareStatement("update roombook set mob=? where RoomId=? ");
                PreparedStatement stm3 = con.prepareStatement("update roombook set status=? where RoomId=? ");
                stm1.setString(1, cn);
                stm1.setString(2, rno);
                stm2.setString(1, cm);
                stm2.setString(2, rno);
                stm3.setString(1, "Booked");
                stm3.setString(2, rno);
                stm1.executeUpdate();
                stm2.executeUpdate();
                stm3.executeUpdate();
                msg = "Room " + rno + " Booked <br> Charges = " + rs.getString(3);
            } else {
                msg = "Room " + rt + " currently Not available";
            }
        } catch (Exception e) {
            msg = "" + e;
        }
        return msg;
    }
}
