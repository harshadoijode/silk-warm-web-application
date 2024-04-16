<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="admintabs.html" %>
<title>Untitled Document</title>



<script>
function validateCat(){
var x=document.forms["form3"]["category"].value;

if(x==""){
alert("category name  cannot be blank");
return false;
}else{
return true;
}

}


function validateAdd(){
var x=document.forms["form2"]["productname"].value;
var y=document.forms["form2"]["productprice"].value;
var z=document.forms["form2"]["quantity"].value;
var a=document.forms["form2"]["desc"].value;

if(x==""){
alert("product name  cannot be blank");
return false;
}if(y==""){
alert("Product Price  cannot be blank");
return false;
}if(z==""){
alert("Quantity  cannot be blank");
return false;
}if(a==""){
alert("Description  cannot be blank");
return false;
}else{
return true;
}

}

</script>
<style type="text/css">
<!--

body,td,th {
	color:Blue;
}
.style1 {color: #000000}
.style2 {color: #000099}
.style3 {color: #CCCCCC; }
-->
</style></head>

<body>
<%@ include file="db.jsp" %>
<br />
<br />

<div align="center">Add Expert 
</div><br />


<form action="" method="post" >
  <div align="center">
    <table width="493" border="1">
     
      <tr>
        <td>Enter Expert name </td>
        <td><input type="text" name="s1" required></td>
      </tr>
      <tr>
        <td>username</td>
        <td><input name="s2" type="email" value="" required/></td>
      </tr>
      <tr>
        <td>password</td>
        <td><input name="s3" type="text" value="" required/></td>
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
</body>

<% 
if(request.getParameter("Submit")!=null){
try
{

String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");




int x=stmt.executeUpdate("insert into experts(name,username,password) values('"+s1 +"','"+s2 +"','"+s3 +"')");

if(x!=0){
%>
<script>
alert("New Expert added seccuessfilly");
</script>
<%
}
			
}catch(Exception e){
out.println(e);
}
}

 %>
 
 
   
   
  
</p>
 <p align="center">All Experts Details </p>
 <table width="auto" border="1" align="center">
   <tr style="font-weight:bold; color:black">
     <td><pre class="style1">Expert Name  </pre></td>
     <td><span class="style1">username Name</span></td>
     <td><span class="style1">Password</span></td>
     
   
    
   </tr>
    <% rst=stmt.executeQuery("select * from experts");
	  while(rst.next()){ %>
   <tr style="color:blue">
     <td><span class="style2"><%= rst.getString(1) %></span></td>
     <td><span class="style2"><%= rst.getString(2) %></span></td>
     <td><span class="style2"><%= rst.getString(3) %></span></td>
   
     
    
   </tr>
   <% } %>
 </table>
 <p align="center">&nbsp;  </p>
</body>
</html>
