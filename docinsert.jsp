<%@page language="Java" import="java.sql.*,java.util.*"%>
<html>
<head>
<title>
After Insert
</title>
</head>
<body bgcolor="skyblue" align="center">
<br><br><br><br>

<%
String user=request.getParameter("hidd");
String ttm1=request.getParameter("tt1");
String ttm2=request.getParameter("tt2");
String ttm3=request.getParameter("tt3");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
Statement stm=con.createStatement();
ResultSet rs;
rs=stm.executeQuery("SELECT Name,DOB,Sex,Contact,City,Username,Date FROM userdata1 WHERE Username='"+user+"'");
String user1="";
String user2="";
String user3="";
String user4="";
String user5="";
String user6="";
String user7="";
while(rs.next())
{
user1=rs.getString("Name");
user2=rs.getString("DOB");
user3=rs.getString("Sex");
user4=rs.getString("Contact");
user5=rs.getString("City");
user6=rs.getString("Username");
user7=rs.getString("Date");
}
Boolean b=stm.execute("insert into docinsert values('"+user1+"','"+user2+"','"+user3+"','"+user4+"','"+user5+"','"+ttm1+"','"+ttm2+"','"+ttm3+"','"+user6+"','"+user7+"')");

%>

<i><font size="5"><center>Record Inserted</center></font></i>
<br><br><br><br><br><br><br><br>


<%}
catch(Exception e)
{
out.println(e);
}

%>

<br><br>
<a href=Home.html><font size="4"><center>LOG OUT</center></font></a>
</body>
</html>
