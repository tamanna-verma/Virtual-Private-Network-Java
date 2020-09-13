package centre;

import java.util.*;
import java.sql.*;
import java.lang.*;
   public class staffattend
 
    {
     public Connection con=null;
     public ResultSet rs=null;
     public Statement st=null;
     public String empno,name,Query;


      public void set(String empno,String name)
           {
             
               this.empno=empno;
               this.name=name;
               
              try
              {
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                 con=DriverManager.getConnection("jdbc:odbc:central");
              }catch(Exception e){}
          }

      public void insert()
          {
            try
            {
               Query="insert into StaffAttendence values(' "+empno+" ',' "+name+" ')";
               st=con.createStatement();
                st.executeQuery(Query);
            }catch(Exception e){} 
        }
   }
         
    