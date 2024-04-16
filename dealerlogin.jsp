<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
 <link href="scss/buttonstyles.css" rel="stylesheet">
<%@ include file="hometabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style>
body, html {
  height: 100%;
}

.bg {
  /* The image used */
  background-image: url("img/de1.jpg");

  /* Full height */
  height: 100%;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

</style>
<style>

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}




input[type=button] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


.logindiv {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-left:20%;
  margin-right:20%;
}
.style3 {color: #FFFFFF; font-weight: bold; font-size:18px; }
</style>
<body class="bg">
<div   >
<br />
<br />
<br />
<br />


<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("username");
String s2=request.getParameter("password");



rst=stmt.executeQuery("select * from dealer where name='"+s1+"' and phone='"+s2+"'");
if(rst.next()){
session.setAttribute("user","s1");
%>
<script>

alert("login Successfull");
window.open("dealertabs.html","_self");
</script>
<%
}else{
%>
<script>

alert("login Failed");

</script>
<%
}





}


%>

<table   width="1185" height="426" border="0" align="center">
  <tr>
   <td width="587" height="416"></td>
    <td width="588"><div align="justify">
     <h3 align="center" style="color:blue">Dealer Login Page</h3>
  <form action="" method="post">
  
  
    <table style="background-color:#666666; border-radius:25px" width="434" border="0" align="center">
      <tr>
        <td><span class="style3">
          <label for="fname">
          </span>
          <div align="right" class="style3">Name
            </label>
          </div></td>
        <td><input type="text"  name="username" placeholder="Name" /></td>
      </tr>
      <tr>
        <td><span class="style3">
          <label for="lname">
          </span>
          <div align="right" class="style3">Phone No
            </label>
          </div></td>
        <td><input type="password"  name="password" placeholder="Phone No" /></td>
      </tr>
      <tr>
        <td><div align="right"></div></td>
        <td><input type="submit" name="Submit" value="Submit" />
		
		</td>
      </tr>
    </table>
    <div align="center"></div>
    <div align="center"></div>
    <div align="center"></div>
    <p>&nbsp;      </p>
  </form>
    </div></td>
   
  </tr>
</table>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>


</body>

</html>
