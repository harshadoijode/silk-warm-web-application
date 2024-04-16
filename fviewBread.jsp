<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
.style2 {
	color: #0000FF;
	font-weight: bold;
}
.style3 {
	color: #000033;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<%@ include file="farmertabs.html" %>
<%@ include file="db.jsp" %>
<br />
<br />
<br />
<br />
<br />
<div align="center" class="style3">Bread Information Details</div>
<% rst=stmt.executeQuery("select * from bread");
while(rst.next()){
 %>
<table style="background-color:#E9E9E9;" width="734" height="138" border="1" align="center">
  <tr>
    <td colspan="4"><div align="center"><img src="uploads/<%= rst.getString(1) %>" height="200" width="311" /> </div></td>
  </tr>
  <tr>
    <td width="231" height="25"><span class="style1">Name</span></td>
    <td width="260"><span class="style1">Desciption </span></td>
    <td width="221"><span class="style1">Diesease </span></td>
	 <td width="221"><span class="style1">Price</span></td>
  </tr>
  <tr>
    <td><%= rst.getString(2) %> </td>
    <td><%= rst.getString(3) %> </td>
    <td><%= rst.getString(4) %> </td>
	<td><%= rst.getString(5) %> </td>
  </tr>
</table><br />
<br />

<% } %>
</body>

</html>
