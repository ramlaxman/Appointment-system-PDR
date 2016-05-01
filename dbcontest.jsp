<%@ page import="java.sql.*" %>

<%
Class.forName ("sun.jdbc.odbc.JdbcOdbcDriver");
Connection conn=null;
conn = DriverManager.getConnection("jdbc:odbc:patientDATA", "","");
out.println ("Database Connected.");
%>