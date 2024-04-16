<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #CCFFCC;
}
.style1 {
	color: #FFFF00;
	font-weight: bold;
}
.style2 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style></head>

<body>
<%@ include file="farmertabs.html" %>
  <p align="center">
    <%@ include file="db.jsp" %>
    <span class="style2">
    <% 


try
{


rst=stmt.executeQuery("select * from sales where fphone!='"+session.getAttribute("fphone")+"' ");

  
						
  %>
  Buy the Yarn from Farmers</span> </p>
  <center>
  Contact Farmer To buy the yarn 
  </center>
  <table width="467" border="1" align="center">
  <tr bgcolor="#0000FF">
    <td><div align="center" class="style1">Image </div></td>
    <td><div align="center" class="style1">Silk yarns Name </div></td>
    <td><div align="center" class="style1">Description </div></td>
    <td><div align="center" class="style1">Quantity</div></td>
	<td><div align="center" class="style1">Price</div></td>
	<td><div align="center" class="style1">ID</div></td>
	<td><div align="center" class="style1">FarmerPhone</div></td>
	
	
  </tr>
  <% 
  while(rst.next()){
  
   %>
   <form action="" method="post">
  <tr bgcolor="#FFFFFF">
    <td><div align="center"><img src="uploads/<%= rst.getString(1) %>" width="100" height="100" /></div></td>
  
    <td><div align="center"><%= rst.getString(2) %></div></td>
    <td><div align="center"><%= rst.getString(3) %></div></td>
	 <td><div align="center"><%= rst.getString(4) %></div></td>
    <td><div align="center"><%= rst.getString(5) %></div></td>
    <td><div align="center"><%= rst.getString(6) %></div></td>
	 <td><div align="center"><%= rst.getString(7) %></div></td>
	 
   
	
  </tr>
  </form>
  <% } %>
</table>

  
  <%  						
}catch(Exception e){
out.println(e);
}

 %>
 
 
 
 <%
if(request.getParameter("Delete")!=null){
try{
int x=stmt.executeUpdate("delete from sales where id='"+request.getParameter("id")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("viewsalesDetails.jsp","_self");

</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>
</body>
</html>
