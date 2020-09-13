package centre;

import java.util.*;
import java.sql.*;
import java.lang.*;
   public class dbregistration
 
    {
     public Connection con=null;
     public ResultSet rs=null;
     public Statement st=null;
     public String regno,name,address,doj,phone,mphone,email,coursename,btiming,sdate,duration,regfees,minstall,project,Query;


      public void set(String regno,String name,String address,String doj,String phone,String mphone,String email,String coursename,String btiming,String sdate,String duration,String regfees,String minstall,String project)
           {
             
               this.regno=regno;
               this.name=name;
               this.address=address;
               this.doj=doj;
               this.phone=phone;
               this.mphone=mphone;
               this.email=email;
               this.coursename=coursename;
               this.btiming=btiming;
               this.sdate=sdate;
               this.duration=duration;
               this.regfees=regfees;
               this.minstall=minstall;
	       this.project=project;

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
               Query="insert into Registration values(' "+regno+" ',' "+name+" ',' "+address+" ',' "+doj+" ',' "+phone+" ',' "+mphone+" ',' "+email+" ',' "+coursename+" ',' "+btiming+" ',' "+sdate+" ',' "+duration+" ',' "+regfees+" ',' "+minstall+" ',' "+project+" ')";
               st=con.createStatement();
                st.executeQuery(Query);
            }catch(Exception e){} 
        }
   }
         
    