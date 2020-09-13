<%@page import="java.util.*"%>
<jsp:useBean id="db" class="centre.dbcourse"/>
<%
String courseno=request.getParameter("courseno");
String coursename=request.getParameter("coursename");
String amount=request.getParameter("amount");
String duration=request.getParameter("duration");

db.set(courseno,coursename,amount,duration);
db.insert();

out.println("Inserted successfully");

%>