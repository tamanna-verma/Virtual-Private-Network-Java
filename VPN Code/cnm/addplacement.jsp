<%@page import="java.util.*"%>
<jsp:useBean id="val" class="centre.addplacement"/>

<%
  String name=request.getParameter("name");
  String placement=request.getParameter("placement");
  String company=request.getParameter("company");
  String person=request.getParameter("person");
  String date=request.getParameter("date");

  val.set(name,placement,company,person,date);
  val.insert();
 
  out.println("inserted successfully");

%>