<%@ page language="java" import="java.io.*,java.sql.*,java.util.*"%>
<html>
<body bgcolor="skyblue" align="center">
<table border="2" align="center">
<tr><th>Name</th><th>DOB</th><th>Sex</th><th>Contact</th><th>City</th><th>Symptoms</th><th>Diagonosis</th><th>Prescription</th><th>Username</th><th>Date</th></tr>
<%
String user=request.getParameter("hidd");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
Statement stm=con.createStatement();
ResultSet rs;
rs=stm.executeQuery("SELECT * FROM docinsert WHERE Username='"+user+"'");

while(rs.next())
{%>

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

<form method=post action=aftersearch.jsp>
<br><br><br><br>
<center>Enter the username of patient:
<input type=text  name=vn value="<%=user%>"></center>

<br><center>&nbsp;&nbsp;
<input type=SUBMIT name=SEARCH value=SEARCH></center>

</form>


<br><br>
<center><a href=doclogin.jsp><font face="arial" size="4">LOG OUT</font></a></center>
<br><br>
<a href="Home.html"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>