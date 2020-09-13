package centre;

import java.util.*;
import java.sql.*;
import java.lang.*;
   public class addplacement
 
    {
     public Connection con=null;
     public ResultSet rs=null;
     public Statement st=null;
     public String name,placement,company,person,dop,Query;


      public void set(String name,String placement,String company,String person,String dop)
           {
             
               this.name=name;
               this.placement=placement;
               this.company=company;
               this.person=person;
               this.dop=dop;
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
               Query="insert into PlacementDetails values(' "+name+" ',' "+placement+" ',' "+company+" ',' "+person+" ',' "+dop+" ')";
               st=con.createStatement();
                st.executeQuery(Query);
            }catch(Exception e){} 
        }
   }
         
    