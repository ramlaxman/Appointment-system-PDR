<%@ page language="java" import="java.sql.*"%>
<%
String uname=request.getParameter("n1");
String upw=request.getParameter("n2");
if(uname.equals("")||upw.equals(""))
%>
{
<%
out.println("Please enter username & password:");
}
%>
else
<%
{
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc.odbc:patient");
Statement stm=con.createStatement();
Boolean b=stm.execute("INSERT INTO patienttable VALUES ('"+txtname+"','"+txtage+"','"+txtphono+"','"+txtcity+"','"+txtuname+"','"+txtpw+"')");
%>
}