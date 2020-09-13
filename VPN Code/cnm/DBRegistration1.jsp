<%@page import="java.sql.*"%>
<jsp:useBean id="dbr" class="centre.dbregistration"/>
<%
String regno=request.getParameter("regno");
String name=request.getParameter("name");
String address=request.getParameter("address");
String doj=request.getParameter("doj");
String phone=request.getParameter("phone");
String mphone=request.getParameter("mphone");
String email=request.getParameter("email");
String coursename=request.getParameter("coursename");
String batchtimings=request.getParameter("batchtimings");
String sdate=request.getParameter("sdate");
String duration=request.getParameter("duration");
String regfees=request.getParameter("regfees");
String monthinstal=request.getParameter("monthinstal");
String project=request.getParameter("project");

dbr.set(regno,name,address,doj,phone,mphone,email,coursename,batchtimings,sdate,duration,regfees,monthinstal,project);
dbr.insert();

out.println("Inserted into REG successfully");
%>