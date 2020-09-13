<%@page import="java.sql.*"%>

<%
String user=request.getParameter("user");
String pass=request.getParameter("pass");
String id;
System.out.println(pass);

Connection con=null;
PreparedStatement pr=null;

try
{
  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  con=DriverManager.getConnection("jdbc:odbc:central");
  pr=con.prepareStatement("select cid from cert where pwd=? and name=?");
  pr.setString(1,pass);
  pr.setString(2,user);
  ResultSet rs=pr.executeQuery();
  if(rs.next())
   { 
     String cid = rs.getString(1);
     System.out.println(cid);
%>
<html>

<body background="i:\hr\hrmsCODINGS\sky.jsp">


<p> certificate   </P>
<form method="get" action="login.html" >
<td > <img src="d:\save.bmp" width="120" height="75"></td>

  <input type="text" value="<%= cid %>" >
 <input type="submit" value="       ok   " >


</form>
</body>
</html>

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