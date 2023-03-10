//import oracle.jdbc.driver.*;
//import javpack
package ds;
import dab.database;
import java.sql.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
public class db extends HttpServlet {
   public static String dept = "ct5";
   public static int g = 0;
   public static String[] depts={"ct5","ct7","it5","it7","ece5","ece7","pt5","pt7","mech5","mech7"};
   public static int y[]  =  new int[10];
   public static void set(int a)
   {
      y[a] = 1;
   }
   public static boolean timetable(String d)
   {
      for(int i = 0 ; i < 10; ++i)
         if(depts[i].startsWith(d))
         {
            if(y[i] == 0)
               return true;
         }
      return false;
   }

   public static void update(String q)
   {
      for(int i = 0 ; i < 10; ++i)
         if(depts[i].startsWith(q))
         {
            y[i] = 0;
         }
   }
   public static void check()
   {
      System.out.println("hello");
      database d = new database();
      try {
         Statement st = d.conn.createStatement();
         ResultSet rs = null;
         int count = 0;
         for(int i = 0;i < 10; ++i)
         {
            rs = st.executeQuery("select count(*) from timetable where dept = '"+depts[i]+"'");
            while(rs.next())
               count = rs.getInt(1);
               if(count > 0)
               {
                  y[i] = 1;
               }
         }
         for(int i = 0;i < 10; ++i)
            System.out.println(y[i]);
         rs = st.executeQuery("select count(*) from seat_allot");
         while(rs.next())
         {
            if(rs.getInt(1) > 0)
               g = 1;
         }
      } catch (SQLException e) {
         throw new RuntimeException(e);
      }
   }
   public void doPost(HttpServletRequest req,HttpServletResponse res)
   {
      dept = req.getParameter("dept");
      //System.out.println(dept);
      String[] num={"1","2","3","4","5"};
      String[][] sCode={{"CS6109","CS6110","CS6111","CS6308","CS6304"},
              {"CS6008","CS6012","CS6020","CS6010","CS6023"},
              {"MA8551","EC8691","CS8591","IT8501","CS8494"},
              {"MA8765","MA1023","CS6001","IT8512","IT9532"},
              {"EC8501","EC8553","EC8552","EC8551","EC8075"},
              {"EC8509","EC8511","EC8555","EC8557","EC8560"},
              {"PR7501","PR7502","PR7503","PR7551","PR7003"},
              {"PR6592","PR6590","PR6544","PR6523","PR6511"},
              {"ME8595","ME8593","ME8501","ME8594","OAT552"},
              {"ME6969","ME8789","ME6523","ME8526","MA0877"}};
      try {
         int i = 0, j = 0;
         database d = new database();
         int x = 0;
         for(i = 0; i < 10; ++i) {
            if (dept.equals(depts[i])) {
               x = i;
               System.out.println(x);
               break;
            }
         }
         set(x);
         System.out.println(dept);
         for (j = 0; j < 5; j++) {
               String e = req.getParameter("date" + num[j] + dept);
               System.out.println(e);
               PreparedStatement stat = d.conn.prepareStatement("insert into timetable values(?,?,?)");
               stat.setObject(3, java.sql.Date.valueOf(e));
               stat.setObject(2, sCode[x][j]);
               stat.setObject(1, dept);
               stat.executeUpdate();
            }
//         Statement st = d.conn.createStatement();
//         ResultSet rs = st.executeQuery("select * from timetable");
//         String Subcode, dte, dname;
//         while (rs.next()) {
//            Subcode = rs.getString(1);
//            dname = rs.getString(2);
//            dte = rs.getString(3);
//            System.out.println("SC: " + Subcode + " Dname: " + dname + "  Date: " + dte);
         if(timetable(d.dep))
            res.sendRedirect("tt"+d.dep+".html");
         else
            res.sendRedirect("home.jsp");

      }
      catch (Exception e)
      {
         System.out.println(e);
      }
   }
}
//    {
//        try
//        {
//            Class.forName("oracle.jdbc.driver.OracleDriver");
//            Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/XEPDB1","system","#Durgaunni24");
//            if(conn != null)
//                res.sendRedirect("../index.jsp");
//            else
//                res.sendRedirect("login.jsp");
//
//        } catch (Exception e) {
//            throw new RuntimeException(e);
//        }
//    }
//}
