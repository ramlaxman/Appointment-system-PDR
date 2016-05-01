<%@page language="Java" import="java.sql.*,java.util.*"%>
<html>
<head>
<title>After Appt</title>
</head>
<body bgcolor="skyblue" align="center">
<br><br><br><br>

<%
String user=request.getParameter("hidd");
String dt=request.getParameter("txtdt");
String st=request.getParameter("txtst");
if(dt.equals(""))
{
%>
<script language="javascript">
	        alert("Enter date & time");
  </script>

<%
out.println("<form method=post action=appoint.jsp>");
out.println("</form>");

}
else{
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
Statement stm=con.createStatement();
ResultSet rs1,rs2;

rs1=stm.executeQuery("select * from users where Username='"+user+"'");
String n1="";
String n2="";
String n3="";
String n4="";
String n5="";
String n6="";

while(rs1.next())
{
	 n1=rs1.getString(1);
	 n2=rs1.getString(2);
	 n3=rs1.getString(3);
	 n4=rs1.getString(4);
	 n5=rs1.getString(5);
	 n6=rs1.getString(6);
}

boolean b=stm.execute("insert into userdata1 values('"+n1+"','"+n2+"','"+n3+"','"+n4+"','"+n5+"','"+n6+"','"+dt+"','"+st+"')");
rs2=stm.executeQuery("update userdata1 set Status='"+("Pending")+"' where Status='"+("null")+"'");
}
catch(SQLException e)
{
out.println("");
}
}
%>
<center><i><font size="4">Appointment Granted.</font></i></center>
<br><br><br>
<center>
<a href=Home.html><font size="4">LOG OUT</font></a></center>
</body>
</html>