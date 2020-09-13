<%@page import="java.util.*"%>
<%
String coursename1=request.getParameter("coursename");
String batchno1=request.getParameter("batchno");
String timings1=request.getParameter("timings");
String guidename1=request.getParameter("guidename");
String duration1=request.getParameter("duration");
String startdate1=request.getParameter("startdate");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:central");
String query="insert into Training values(?,?,?,?,?,?)";
PreparedStatement pr=con.prepareStatement(query);
pr.setString(1,coursename1);
pr.setString(2,batchno1);
pr.setString(3,timings1);
pr.setString(4,guidename1);
pr.setString(5,duration1);
pr.setString(6,startdate1);
pr.executeUpdate();
con.close();
out.println("Timings Registered");
}
catch(Exception e)
{
out.println("Exception in DBBatchTimings.jsp"+e);
}
%>

