<%@ page language="java" import="java.io.*,java.sql.*;"%>
<html>
<body>
<%
String user=request.getParameter("hidd");
String sym=request.getParameter("tt1");
String dia=request.getParameter("tt2");
String pre=request.getParameter("tt3");
if(sym.equals("")||dia.equals("")||pre.equals(""))
{%>
<form method="post" action="aftersearch.jsp">
<input type="hidden" name="vn" value="<%=user%>">
<b>Please fill all fields.</b>

<input type="submit" name="btn" value="Click here to try again">
<%}
else
{
try
{
				
					Statement stm;
					Statement stm1;
					Connection con;
					Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
					con=DriverManager.getConnection("jdbc:odbc:patientDATA");
					stm=con.createStatement();
					stm1=con.createStatement();
					  ResultSet rs1=stm.executeQuery("update docinsert set Symptoms='"+sym+"',Diagonosis='"+dia+"',Prescription='"+pre+"' where Username='"+user+"'");
					 
					%>
					<b> Record Updated </b>
					<%
				}
				catch(SQLException e)
				{
				%>
				<script language="javascript">
				alert("Record Updated Successfully");
				</script>
				<a href="search.jsp">Back</a>
<%
			
				}
}				%>
<br><br>
<a href="Home.html"><center><font size="4"><i>Home</i></center></font></a>
				</body>
				</html>
					
                