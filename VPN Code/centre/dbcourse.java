package centre;

import java.util.*;
import java.sql.*;
import java.lang.*;
   public class dbcourse
 
    {
     public Connection con=null;
     public ResultSet rs=null;
     public Statement st=null;
     public String courseno,cname,amount,duration,Query;


      public void set(String courseno,String cname,String amount,String duration)
           {
             
               this.courseno=courseno;
               this.cname=cname;
               this.amount=amount;
               this.duration=duration;

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
               Query="insert into coursedetails values(' "+courseno+" ',' "+cname+" ',' "+amount+" ',' "+duration+" ')";
               st=con.createStatement();
                st.executeQuery(Query);
            }catch(Exception e){} 
        }
   }
         
    