<%@page import="java.util.*"%>

<jsp:useBean id="val" class="centre.addclient"/>
<%

  String company=request.getParameter("company");
  String address=request.getParameter("address");
  String phone=request.getParameter("phone");
  String mail=request.getParameter("mail");
  String person=request.getParameter("person");

  val.set(company,address,phone,mail,person);
  val.insert();
 
  out.println("inserted successfully");

%>