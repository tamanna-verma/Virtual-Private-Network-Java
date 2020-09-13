package centre;

import java.util.*;
import java.sql.*;
import java.lang.*;
   public class dbenquiry
 
    {
     public Connection con=null;
     public ResultSet rs=null;
     public Statement st=null;
     public String name,address,phone,mobile,email,qualification,course,timing,reference,Query;


      public void set(String name,String address,String phone,String mobile,String email,String qualification,String course,String timing,String reference)
           {
             
               this.name=name;
               this.address=address;
               this.phone=phone;
               this.mobile=mobile;
               this.email=email;
               this.qualification=qualification;
               this.course=course;
               this.timing=timing;
               this.reference=reference;
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
               Query="insert into Enquiry values(' "+name+" ',' "+address+" ',' "+phone+" ',' "+mobile+" ',' "+email+" ',' "+qualification+" ',' "+course+" ',' "+timing+" ',' "+reference+" ')";
               st=con.createStatement();
                st.executeQuery(Query);
            }catch(Exception e){} 
        }
   }
         
    