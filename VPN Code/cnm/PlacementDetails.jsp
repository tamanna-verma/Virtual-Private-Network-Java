<%@page import="java.sql.*"%>
<html>
<body bgcolor="Peachpuff">
<h2><center><u>Placement Details</u></center></h2>
<form name=booksdet>
<center>
<table border=1 cellpadding=5>
<tr>

<td>Company</td>
<td>Address</td>
<td>Phone</td>
<td>MailID</td>
<td>Contact Person</td>
</tr>
<%
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:central");
	PreparedStatement pr=con.prepareStatement("select * from PlacementDetails");
	ResultSet rs=pr.executeQuery();
	while(rs.next())
	{
		%>
		<tr>
		<td>
		<%=rs.getString(1)%>
		</td>
		<td>
		<%=rs.getString(2)%>
		</td>
		<td>
		<%=rs.getString(3)%>
		</td>
		<td>
		<%=rs.getString(4)%>
		</td>
		<td>
		<%=rs.getString(5)%>
		</td>
		</tr>
	<%
	}
}
catch(Exception e)
	{
	out.println("error"+ e);
	}

%>

</table>
</center>
</form>
</body>
</html>