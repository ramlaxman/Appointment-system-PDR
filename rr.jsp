<%@ page language="java" import="java.sql.*,java.util.*"%>
<html>

<body align="center" bgcolor="skyblue">
<br><br><br><br>
<table border="2" align="center">
<tr><th>Name</th><th>DOB</th><th>Sex</th><th>Contact no</th><th>City</th><th>Username</th><th>Date & Time</th><th>Status</th></tr>
<%


try
{

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
Statement stm=con.createStatement();
String q="SELECT * FROM userdata1 where Status='"+("Pending")+"' order by Date";
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
<form method="post" action="approved.jsp">
<tr>
<td><%=u1%></td> 
<td><%=u2%></td>
<td><%=u3%></td>
<td><%=u4%></td>
<td><%=u5%></td>
<td><%=u6%></td>
<td><%=u7%></td>
<td><%=u8%></td>
<td><input type="submit" value="Approve <%=u6%>" name=n1></td>
</tr>
<input type=hidden name=hid value="<%=u6%>">
</form>
<%
}

}
catch(SQLException e)
{
out.println(e);
}

%>


</table>
<br><br><br><br>
<center><a href=Home.html><font size="4">LOG OUT</font></a></center>
</body>
</html>
