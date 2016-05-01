<%@ page language="java" import="java.sql.*,java.util.*"%>

<html>
<body align="center" bgcolor="skyblue">
<form method=post action=docinsert.jsp>
    <%
		
	String user=request.getParameter("vn");
			String user1="";
			String user2="";
			String user3="";
			String user4="";
			String user5="";
			String user6="";
		
			ResultSet rs=null;
	        
			
			  try
				{
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
					Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
					Statement stm=con.createStatement();
					rs=stm.executeQuery("SELECT * FROM userdata1 WHERE Username='"+user+"'");
					if(rs.next())
					{
						user1=rs.getString("Name");
						user2=rs.getString("DOB");
						user3=rs.getString("Sex");
						user4=rs.getString("Contact");
						user5=rs.getString("City");
                		user6=rs.getString("Date");
					%>
				<table border="2" align="center">
						<tr>
						<br><br><br><br><br><br>
						<tr><td>Name:</td><td><%=user1%></td></tr>
						<tr><td>DOB:</td><td><%=user2%></td></tr>
						<tr><td>Sex:</td><td><%=user3%></td></tr>
						<tr><td>Contact:</td><td><%=user4%></td></tr>
						<tr><td>City:</td><td><%=user5%></td></tr>
						<tr><td>Date:</td><td><%=user6%></td></tr>
			    </table>
								
			<% } 
		}
catch(Exception e)
{
out.println(e);
}%>

<br><center>Symptoms:
<input type=text name=tt1></center>
<br><center>Diagonosis:
<input type=text name=tt2></center>
<br><center>Prescription
<input type=text name=tt3></center><br>
<input type=hidden name="hidd" value="<%=user%>">
<center><input type=submit value=insert></center>
</form>
<!--a href="search.jsp">BACK</a-->
</body>
</html>