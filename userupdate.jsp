<%@ page language="java" import="java.io.*,java.sql.*"%>
<html>
<body align=center bgcolor=skyblue>
<%
String user=request.getParameter("hid");
String dt=request.getParameter("t1");
out.println(user);
out.println(dt);

try
{
    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
	Statement stm=con.createStatement();
	ResultSet rs=stm.executeQuery("update userdata1 set Date='"+dt+"' where Username='"+user+"'");
    out.println("Date and Time Updated.");
}
catch(SQLException e)
{
 out.println(e);
}
%>
<br><br>
<a href="Home.html"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>
