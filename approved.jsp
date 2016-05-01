<%@page language="Java" import="java.sql.*,java.util.*"%>
<html>
<body bgcolor="skyblue" align="center">
<br><br><br><br>

<%
	String user=request.getParameter("hid");
	
	
	
	try
	{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
	Statement stm=con.createStatement();
	ResultSet rs;
	rs=stm.executeQuery("update userdata1 set Status='"+("Approved")+"' WHERE Username='"+user+"' and Status='"+("Pending")+"'");
	
	%>
	<script language="javascript"
	            alert("Enter the Username and Password");
  </script>

    <%}
	
	catch(SQLException e)
	{
	out.println("<center>APPROVED</center>");
	}
%>
<br>
<center><a href=rr.jsp><font size="4">Back</font></a></center>
<br><br>
<a href="Home.html"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>
