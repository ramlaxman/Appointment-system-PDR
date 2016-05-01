<%@page language="java" import="java.io.*,java.sql.*"%>
<html>
<body bgcolor="skyblue" align="center">
<br><br><br><br>

<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con=DriverManager.getConnection("jdbc:odbc:patientDATA");
Statement stm=con.createStatement();
ResultSet rs;

String uname=request.getParameter("txtuname");
String pwd=request.getParameter("txtpwd");

if(uname.equals("")||pwd.equals(""))
{

%>

 <script language="javascript">
	        alert("Enter the Username and Password");
  </script>
<center>
<b>Click to try again</b><br><br><br><br><br><br><br>

<a href="patlogin.html"><font size="4"><i>Back</i></font></a>
    </center>
<%
}
else
{
        rs=stm.executeQuery("select password from users where Username='"+uname+"'");
        if(rs.next())
        {
	     
		  if(pwd.equals(rs.getString("password")))
	    {
%>

<center><font size="10"><i>Welcome <%=uname%></i></font>
<form method="post" action="appoint.jsp">
<input type="hidden" name="hid" value="<%=uname%>">
<br><br>
<input type="submit" name="btn" value="Take Appointment"></center>
	</form>
<form method=post action=viewpat.jsp>
<input type="hidden" name="hid" value="<%=uname%>">
<center><input type=SUBMIT value="VIEW MY PROFILE"></center>
</form>

            <% }
                  else
                   {
                       %>
                               <script language="javascript">
	            alert("Invalid Username or Password");

       </script>
	<center><a href="patlogin.html"><font size="6"><i>Back</i></font></a>   </center>

<%
                   }
         }
         else
        {

%>
<script language="javascript">
	   alert("Please register first..");

       </script>
<center>
<a href="Register.html"><font size="6"><i>Click here to register</i></font></a>
<br><br><br><br><Br>
<a href="patlogin.html"><font size="6"><i>Back</i></font></a>
</center><%
        }
}
%>
<br><br>
<a href="Home.html"><center><font size="4"><i>Home</i></center></font></a>
</body>
</html>