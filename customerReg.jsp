<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
  <%@ include file="hometabs.html" %>
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
  <p><a> New Farmer Registration</a>
    
    
      </p>
</div>
<form action="" method="post" >
  <div align="center">
    <table width="493" border="1">
     
      <tr>
        <td>Enter  name </td>
        <td><input type="text" name="s1"></td>
      </tr>
      <tr>
        <td>Address</td>
        <td><textarea name="s2"></textarea></td>
      </tr>
      <tr>
        <td>Phone</td>
        <td><input name="s3" type="text" value=""></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><input type="text" name="s4"></td>
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


String s1=request.getParameter("s1");
String s2=request.getParameter("s2");
String s3=request.getParameter("s3");
String s4=request.getParameter("s4");

int x=stmt.executeUpdate("insert into customer(name,address,phone,password) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");


						if(x!=0){
							out.println("Registered Sucessfully");
							
						}else{
						out.println("insertion failure...!");
						}
}catch(Exception e){
out.println(" this username alrready exist so please try some other email ID"+e);
}
}
 %>
</body>

</html>