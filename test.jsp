<%@page import="java.sql.*"%>
<html>
<form method="post" action="answers.jsp">
<table>
<%
Class.forName("jdbc.odbc.JdbcOdbcDriver");
Connection conn =DriverManager.getConnection("jdbc:odbc:patientDATA");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select * from users");
int i=0;
while(rs.next()){
%>
<tr>
<td><%=rs.getString(2)%></td>
<td><input type="hidden" name="quid" value="<%=rs.getString(1)%>">
<td><input type="radio" value="Poor" name="radio<%=i%>"/>Poor</td>
<td><input type="radio" value="Average" name="radio<%=i%>"/>Average</td>
<td><input type="radio" value="Good" name="radio<%=i%>"/>Good</td>
</tr>
<% i++;
}
%>
<tr>
<td><input type="Submit" value="Submit"></td>
</tr>
</table>
</form>
</html>