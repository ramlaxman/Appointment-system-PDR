<%@ page language="java" import="java.sql.*,java.util.*"%>
<html>
<body bgcolor="skyblue" align="center">

<%
String dnm=request.getParameter("d1");
String dpd=request.getParameter("d2");
if(dnm.equals("")||dpd.equals(""))
{
%>
<script language="javascript">
	            alert("Enter the Username and Password");
  </script>

<br><br><br><br><br><br><font size="8">Please try again...!!!<br></font>
<br><br>
<a href=doclogin.html><h3>Click here to login</h3></a>


<%
}
 else if(dnm.equals("doctor")&& dpd.equals("doc1234"))
{
%> 

<form method=post action=search.jsp>
<br><br><br>
<input type=SUBMIT value=SEARCH>
</form>
<br><br><br><br>
<a href=doclogin.html>LOG OUT</a>

<%
}
else
{
%>
<a href=doclogin.html><h3>Click here to login</h3></a>

<%
}
%>
<br><br><br><br>
<a href="Home.html"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>


