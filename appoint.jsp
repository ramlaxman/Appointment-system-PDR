<%@page language="Java" import="java.sql.*,java.util.*"%>
<html>
<head>
<title>Patient Appointment</title>
</head>

<body bgcolor="skyblue" align="center">

<% 
String user=request.getParameter("hid");
String btn=request.getParameter("btn");
if(btn.equals("Take Appointment"))
{
%>

<form method=post action=afterappoint.jsp>
<br><center>Enter Date and Time:
<input type=text name=txtdt>(dd/mm/yyyy)&nbsp;hh:mm(am/pm)</center>
<br><center> Please enter space between date & time</center>
<br><center>Doctor is available between:<br></center>
<center>8 am - 12 pm<br>
5 pm - 9 pm</center><br>
<center>Your status is:<input type=text name=txtst disabled=disable value=Pending></center>
<br>
 <input type=hidden name=hidd value="<%=user%>">
<br>
<center><input type=submit name=done Value=Done></center>
</form>
<%}
else
 {
  try
    {
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
		Statement stm=con.createStatement();
		ResultSet rs=stm.executeQuery("select * from userdata1 where Username='"+user+"'");

		if(rs.next())
		{%>
			
		<form method="post" action="userupdate.jsp">
		<b>Enter new Date and time</b>
		<input type="text" name="t1" >
		<input type=hidden name=hid value="<%=user%>">
		<input type=submit name=btn Value=Update>
		</form>

    	<%}

        else
        {
          out.println("Please take appointment");
        }
    }
		catch(SQLException e)
		{
		out.print(e);
		}
 }
%>
<br><br>
<a href="Home.html"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>