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
  pr=con.prepareStatement("select username from login1 where password=?");
  pr.setString(1,pass);
  ResultSet rs=pr.executeQuery();
  rs.next();
  System.out.println(rs.getString(1));
  System.out.println(log);
  String s1=rs.getString(1); 
  System.out.println("before");
  if(s1.equals(log))
  {
  System.out.println("a");
  %>
  <jsp:forward page="Admin.html"/>
  <%
  }
  else
  {
  System.out.println("b");
  %>
  <jsp:forward page="Marketing.html"/>
  <%
  }
con.close(); 
}

catch(Exception ae)
{
out.println("Exception in Login form" +ae);
}

%>
</body>
</html>