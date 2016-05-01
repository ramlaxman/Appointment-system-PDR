<%@page language="Java" import="java.sql.*,java.util.*"%>
<html>
<head>
<title>
view profile
</title>
</head>
<body bgcolor="skyblue" align="center">

<br><br><br><br>
<table border="2" align=center>
<tr><th>Name</th><th>DOB</th><th>Sex</th><th>Contact</th><th>City</th><th>Symptoms</th><th>Diagonosis</th><th>Prescription</th><th>Username</th><th>Date</th></tr>
<%
String user=request.getParameter("hid");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
Statement stm=con.createStatement();
ResultSet rs=stm.executeQuery("SELECT * FROM docinsert WHERE Username='"+user+"'");

while(rs.next())
{
 %>

	<tr>
	<td><%  out.println(rs.getString("Name"));%></td>
	<td><%  out.println(rs.getString("DOB"));%></td>
	<td><%  out.println(rs.getString("Sex"));%></td>
	<td><%  out.println(rs.getString("Contact"));%></td>
	<td><%  out.println(rs.getString("City"));%></td>
	<td><%  out.println(rs.getString("Symptoms"));%></td>
	<td><%  out.println(rs.getString("Diagonosis"));%></td>
	<td><%  out.println(rs.getString("Prescription"));%></td>
	<td><%  out.println(rs.getString("Username"));%></td>
	<td><%  out.println(rs.getString("Date"));%></td></tr>
 <%}

 }

catch(SQLException e)
{
out.println(e);
}

%>

</table>
<br><br>
<center><a href="Home.html"><font size="4">LOG OUT</font></a></center>
<br><br><br>
<center><a href="patlogin.html"><font size="4" color="white">BACK</font></a></center>
</body>
</html>
