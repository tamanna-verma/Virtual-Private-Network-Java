<%@page import="java.sql.*"%>
<%
String empid=request.getParameter("number");
String name=request.getParameter("ename");
String date=request.getParameter("date");
try
{
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  Connection con=DriverManager.getConnection("jdbc:odbc:central");
  String query="insert into StudentAttendence values(?,?,?)";
  PreparedStatement pr=con.prepareStatement(query);
  pr.setString(1,empid);
  pr.setString(2,name);
  pr.setString(3,date);
  pr.executeUpdate();
  out.println("Attendence Registered for Student");
}
catch(Exception e)
{
out.println("Attendence not registred"+e);
}
%>