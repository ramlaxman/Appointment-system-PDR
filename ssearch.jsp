<%@ page language="java" import="java.io.*,java.sql.*"%>
<html>
<body bgcolor="skyblue" align="center">
<table border="2" align="center">
<tr><th>Name</th><th>DOB</th><th>Sex</th><th>Contact no</th><th>City</th><th>Username</th><th>Date & Time</th><th>Status</th></tr>

<%

try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
Statement stm=con.createStatement();
String q="SELECT * FROM userdata1  where Status='"+("approved")+"' order by Date";
ResultSet rs=stm.executeQuery(q);
String u1="";
String u2="";
String u3="";
String u4="";
String u5="";
String u6="";
String u7="";
String u8="";
while(rs.next())
{
u1=rs.getString(1);
u2=rs.getString(2);
u3=rs.getString(3);
u4=rs.getString(4);
u5=rs.getString(5);
u6=rs.getString(6);
u7=rs.getString(7);
u8=rs.getString(8);
%>
<tr>
<td><%=u1%></td> 
<td><%=u2%></td>
<td><%=u3%></td>
<td><%=u4%></td>
<td><%=u5%></td>
<td><%=u6%></td>
<td><%=u7%></td>
<td><%=u8%></td>
</tr>
<%
}}
catch(Exception e)
{
out.println(e);
}
%>
</table>
<form method=post action=aftersearch.jsp>
<center><br><br><br><br><br>
Enter the username of patient:
<input type=text name=vn></center>
<center>
<br><br>
<input type=SUBMIT name=SEARCH value=SEARCH>
</center>
</form>
<br>
<center><a href=afterddoclogin.html><font face="arial" size="5">LOG OUT</font></a></center>
</body>
</html>