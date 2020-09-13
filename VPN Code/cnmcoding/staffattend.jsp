<%@page import="java.util.*"%>
<jsp:useBean id="st" class="centre.staffattend"/>

<%
String empid=request.getParameter("number");
String name=request.getParameter("ename");

st.set(empid,name);
st.insert();

out.println("Inserted successfully");
%>