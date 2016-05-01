<%@page language="java" import="java.sql.*,java.util.*"%>
<html>
<head>
<title>Registration</title>
</head>
<body bgcolor="skyblue">
<form method=post action=afterregister.jsp>
<table>

<tr><td>Enter name:</td>
<td><input type=text name=txtname></td></tr>
<tr><td>Enter age:</td>
<td><input type=text name=txtage></td></tr>

<tr><td>Phone number:</td>

<td><input type=text name=txtphono></td></tr>

<tr><td>Enter city:</td>
<td><input type=text name=txtcity></td></tr>
<tr><td>Username:</td>
<td><input type=text name=txtuname></td></tr>

<tr><td>Password:</td>
<td><input type=password name=txtpw ></td></tr>
 <tr><td><center><input type=submit name=txtsub value="SUBMIT"></center></td>

<td><center><input type=reset name=txtreset value="RESET"></center></td></tr>

</table>
</form>
<br><br>
<a href="Home.html"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>