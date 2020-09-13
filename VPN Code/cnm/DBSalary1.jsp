<jsp:useBean id="dbs" class="centre.dbsalary"/>

<%

String empno=request.getParameter("empno");
String empname=request.getParameter("empname");
String doj=request.getParameter("date");
String pay=request.getParameter("pay");

dbs.set(empno,empname,doj,pay);
dbs.insert();

out.println("Inserted successfully");
%>