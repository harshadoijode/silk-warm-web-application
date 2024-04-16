<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
  <%@ include file="admintabs.html" %>
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
  <p><a>Add information Details</a>
    
    
      </p>
</div>
<form action="upload.jsp" method="post" enctype="multipart/form-data">
  <div align="center">
    <table width="493" border="1">
      <tr>
        <td width="165">Select Image </td>
        <td width="218"><input type="file" name="f1" required/></td>
      </tr>
      <tr>
        <td>Enter Bread name </td>
        <td><input type="text" name="f2"></td>
      </tr>
      <tr>
        <td>Description</td>
        <td><textarea name="f3"></textarea></td>
      </tr>
      <tr>
        <td>Disease</td>
        <td><textarea name="f4"></textarea></td>
      </tr>
      <tr>
        <td>Price per quintal </td>
        <td><input type="text" name="f5"></td>
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

</html>