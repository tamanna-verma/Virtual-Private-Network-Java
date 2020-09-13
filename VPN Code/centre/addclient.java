package centre;

import java.util.*;
import java.sql.*;
import java.lang.*;
   public class addclient
 
    {
     public Connection con=null;
     public ResultSet rs=null;
     public Statement st=null;
     public String Company,Address,Phone,Mail,Person,Query;


      public void set(String Company,String Address,String Phone,String Mail,String Person)
           {
             
               this.Company=Company;
               this.Address=Address;
               this.Phone=Phone;
               this.Mail=Mail;
               this.Person=Person;
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
               Query="insert into ClientDetails values(' "+Company+" ',' "+Address+" ',' "+Phone+" ',' "+Mail+" ',' "+Person+" ')";
               st=con.createStatement();
                st.executeQuery(Query);
            }catch(Exception e){} 
        }
   }
         
    