<%@page import="java.sql.*"%>
<html>
<body bgcolor="Peachpuff">
<CENTER><B><h3> PROJECT LIST  </H3>
<H4>TIME 10.AM TO 12.PM </H4></B></CENTER>
<CENTER>
<table BORDER="1" cellpadding="10">

<tr><td>RegNo</td><td>Name</td><td>Course</td><td>Project</td><tr>
<%	
try
{
	Connection con=null;
	Statement stat=null;
	ResultSet rs=null;
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	con=DriverManager.getConnection("jdbc:odbc:central");
 	stat=con.createStatement();
 	rs=stat.executeQuery("select regno,name,coursename,project from Registration where coursename='J2EE' and batchtimings='10am to 12pm'");
		
while(rs.next())
{
%>
<tr><td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td></tr>
<%
}
}
catch(Exception e)
{
out.println(e);
}
%>
</table>
</body>
</html>