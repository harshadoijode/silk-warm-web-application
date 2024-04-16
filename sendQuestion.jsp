<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
  <%@ include file="farmertabs.html" %>
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
<form action="" method="post" >
  <div align="center">
    <table width="561" border="1">
     
      <tr>
        <td>Send Your question </td>
        <td><textarea name="f1"></textarea></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" name="Submit" value="Submit"></td>
      </tr>
    </table>
    <p>&nbsp;</p>
    <p><br/>
    </p>
  </div>
</form>

<% 

if(request.getParameter("Submit")!=null){
try
{


String s1=request.getParameter("f1");



int x=stmt.executeUpdate("insert into question(quest) values('"+s1+"')");


						if(x!=0){
							out.println("Question send Sucessfully");
							
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
   </tr>
    <% rst=stmt.executeQuery("select * from question");
	  while(rst.next()){ %>
   <tr style="color:blue">
     <td><span class="style2"><%= rst.getString(1) %></span></td>
     <td><span class="style2"><%= rst.getString(2) %></span></td>
   </tr>
   <% } %>
</table>
</body>

</html>