<%@page language="java" import="java.sql.*,java.util.*"%>
<html>
<body>
<%
String user=request.getParameter("hid");
String uupd=request.getParameter("fnup");
try
 {%>
    <%
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
	ResultSet rs=stm.executeQuery("UPDATE users SET <%=upd%>='"+uupd+"' WHERE Name='"+user+"'");
	Statement stm=con.createStatement();
    
 }
  catch(SQLException e)
  {
   out.println(e);
  %>}

<h1>Record updated successfully</h1>
<br><br>
<a href=Home.html><center><font size=4><i>Back</i></font></a>
</body>
</html>