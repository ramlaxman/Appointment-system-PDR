<%@ page language="java" import="java.sql.*,java.util.*"%>
<html>
<body bgcolor="skyblue" align="center">
<form method=post action=aa.jsp>
<%
String upd=request.getParameter("txtup");
%>
<%=upd%>
<input type=text name=fnup>
<input type=SUBMIT name=UPDATE>
</form>
<br><br>
<a href="Home.html"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>
