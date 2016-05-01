<%@page language="java" import="java.io.*,java.sql.*;"%>
<html>
<head>
<title>After Registration</title>
</head>

<body bgcolor="skyblue" align="center">

<%
String name,dob,sex,phone_no,city,username,password;
name=request.getParameter("txtnm");
dob=request.getParameter("txtdb");
sex=request.getParameter("txtrad");
phone_no=request.getParameter("tpn");
city=request.getParameter("ttct");
username=request.getParameter("ttun");
password=request.getParameter("ttpwd");
if(name.equals("")||dob.equals("")||sex.equals("")||phone_no.equals("")||city.equals("")||username.equals("")||password.equals(""))
{
%>
 <script language="javascript">
	            alert("Enter the Complete Data");
  </script>
<br><br><br><br><br><br><br><br><br><br>
<center><a href=Register.html><font size="4">Click here to Register</font></a></center>
<%}
else
{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
Statement stm=con.createStatement();
Boolean b=stm.execute("INSERT INTO users VALUES ('"+name+"','"+dob+"','"+sex+"','"+phone_no+"','"+city+"','"+username+"','"+password+"')");
%>
<h1><br><br><center>You have successfully registered</center></br></br></h1>
<a href=patlogin.html><h3><br><br><center>Click here to login</center></br></br></h3></a>
<%
}
catch(SQLException e)
{
out.println("<center>Username already exists</center>");
out.println("<a href=Register.html><center>BACK</center></a>");
}

}
%>
<br><br>
<a href="Home.html"><center><font size="4" color=white><i>Home</i></center></font></a>
</body>
</html>