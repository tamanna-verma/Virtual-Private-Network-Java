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

<body background="sky.jpg">



<form method="get" action="login.html" >
<td > <img src="save.bmp" width="120" height="75"></td>

<p align="center">&nbsp;
  <p align="center"><font color="#CC0000" size="4">CERTIFICATION</font>
  <p align="center">&nbsp;
  
  
  <table width="33%" border="0" align="center">
    <tr> 
      <td width="51%">ISSUED CID:</td>
      <td width="49%"><input type="text" value="<%= cid %>" size="20"></td>
    </tr>
    <tr> 
      <td>ISSUED BY:</td><td>ADMINISTRATOR</td>
      
    </tr>
  </table>

  
 <input type="submit" value="       OK   " >


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