<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>

<%@ include file="db.jsp" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%
MultipartRequest m = new MultipartRequest(request, "C:/Program Files (x86)/Apache Software Foundation/Tomcat 5.5/webapps/GFGC_Silkworm/uploads");
String s1=(String)m.getOriginalFileName("f1");
String s2=(String)m.getParameter("f2");

String s3=(String)m.getParameter("f3");
String s4=(String)m.getParameter("f4");
String s5=(String)m.getParameter("f5");


int x=stmt.executeUpdate("insert into sales(filename,name,description,qty,price,fphone) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+session.getAttribute("fphone")+"')");
if(x!=0){
%>
<script>

alert("Product added for sales Successfully");
window.open("farmersells.jsp","_self");
</script>

<%
}
%>

</body>
</html>

