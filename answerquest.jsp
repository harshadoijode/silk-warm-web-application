<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
  <%@ include file="experttabs.html" %>
  <%@ include file="db.jsp" %>
<!DOCTYPE html>
<html>

<head>
<style type="text/css">
<!--
body,td,th {
	font-family: Courier New, Courier, monospace;
	color: #000033;
	font-weight: bold;
	font-size: 18px;
}
-->
</style>
 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>

<body>
 <div align="center">
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p><a>Send Question</a>
    
    
   </p>
</div>

<% 

if(request.getParameter("Submit")!=null){
try
{


String s1=request.getParameter("s1");

String s2=request.getParameter("s2");

int x=stmt.executeUpdate("update question set answer='"+request.getParameter("s2")+"' where quest='"+request.getParameter("s1")+"' ");


						if(x!=0){
							%>
<script>
alert("answer added seccuessfilly");
window.open("answerquest.jsp","_self");
</script>
<%
							
						}
}catch(Exception e){
out.println(e);
}
}
 %>
 
 
 
 
 <p align="center">Answers From Expert</p>
 <table width="679" border="1" align="center">
   <tr style="font-weight:bold; color:black">
     <td width="199"><span class="style1">Question  </span></td>
     <td width="189"><span class="style1">Answer</span></td>
	  <td width="189"></td>
   </tr>
    <% rst=stmt.executeQuery("select * from question");
	  while(rst.next()){ %>
	  <form action="" method="post">
   <tr style="color:blue">
     <td><textarea name="s1" cols="" rows=""><%= rst.getString(1) %></textarea></td>
     <td><textarea name="s2" cols="" rows=""><%= rst.getString(2) %></textarea></td>
	   <td><input name="Submit" type="submit"></td>
   </tr>
   </form>
   <% } %>
</table>
</body>

</html>