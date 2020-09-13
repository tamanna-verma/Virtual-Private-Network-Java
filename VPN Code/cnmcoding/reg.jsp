<%@page import="java.sql.*"%>
<%
String log=request.getParameter("login");
String pass=request.getParameter("pass");
Connection con=null;
PreparedStatement pr=null;

try
{
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("jdbc:odbc:central");
  pr=con.prepareStatement("select * from cert where cid=? and status=?");
  pr.setString(1,pass);
  pr.setString(2,log);
  ResultSet rs=pr.executeQuery();
  System.out.println("before");
 
  if( rs.next())
  {

   
  if(log.equalsIgnoreCase("administrator"))
  {
  
  %>
  <jsp:forward page="Admin1.html"/>
  <%
  }
  else if(log.equalsIgnoreCase("marketing"))
  {
  
  %>
  <jsp:forward page="Marketing.html" />
  <%
  }
  else
  {
    
    %>
    <jsp:forward page="Training.html"/>
    <%
  }

}
   else
{
   out.println("Please check your id and password");
}  
con.close(); 
}

catch(Exception ae)
{
out.println("Invalid password");
}

%>
</body>
</html>