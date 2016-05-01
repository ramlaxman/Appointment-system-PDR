<%@page language="Java" import="java.sql.*,java.util.*"%>
<html>
<head>
<title>
After Insert
</title>
</head>
<body>
<%
String user=request.getParameter("hid");
String ttm1=request.getParameter("tt1");
String ttm2=request.getParameter("tt2");
String ttm3=request.getParameter("tt3");
try
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
Statement stm=con.createStatement();
ResultSet rs;
rs=stm.executeQuery("select * from userdata1 where Username='"+user+"'");
String n1="";
String n2="";
String n3="";
String n4="";
String n5="";
String n6="";
String n7="";
while(rs.next())
{
 n1=rs.getString(1);
 n2=rs.getString(2);
 n3=rs.getString(3);
n4=rs.getString(4);
n5=rs.getString(5);
n6=rs.getString(6);
n7=rs.getString(7);
}

boolean b=stm.execute("insert into userdata values('"+n1+"','"+n2+"','"+n3+"','"+n4+"','"+n5+"','"+n6+"','"+dt+"','"+tm+"','"+ttm1+"','"+ttm2+"','"+ttm3+"')");
}
catch(SQLException e)
{
out.println(e);
}

%>
<i>Record Inserted</i>
<br><br>
<a href="Home.html"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>
