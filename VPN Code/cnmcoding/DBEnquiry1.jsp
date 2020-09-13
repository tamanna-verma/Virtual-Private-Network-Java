<%@page import="java.sql.*"%>
<jsp:useBean id="dbe" class="centre.dbenquiry"/>
<%
String name=request.getParameter("name");
String address=request.getParameter("address");
String phone=request.getParameter("phone");
String mphone=request.getParameter("mphone");
String email=request.getParameter("email");
String qualification=request.getParameter("qualification");
String regcourse=request.getParameter("regcourse");
String timings=request.getParameter("timings");
String reference=request.getParameter("reference");

dbe.set(name,address,phone,mphone,email,qualification,regcourse,timings,reference);
dbe.insert();

out.println("Inserted successfully");
%>