<%@page import="java.sql.Statement"%>
<%@page import ="java.sql.SQLException"%>
<%@page import ="java.sql.ResultSet"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hacker profile</title>
<script>
function agreement()
{
	var newWindow=window.open('Agreement.html','_blank','height=400px ,width=500px, top=50, left=500');
	}
</script>
</head>
<body>
<%  try{
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/haxperts?verifyServerCertificate=false&useSSL=true","root","1234");
	   Statement stm=con.createStatement();
	   ResultSet rs;
	   rs=stm.executeQuery("select * from task_addition");
       while(rs.next())
       { %>
       <table>
       <tr><td>Task Id:</td><td><%=rs.getString(1) %></td></tr>
       <tr><td>Task Name:</td><td><%=rs.getString(2) %></td></tr>
       <tr><td>Task Details:</td><td><%=rs.getString(4) %></td></tr>
       <tr><td>Maximum Points:</td><td><%=rs.getString(9) %></td></tr>
       <tr><td>Skill required to complete task:</td><td><%=rs.getString(10) %></td></tr>
       <tr><td>Days to complete task:</td><td><%=rs.getString(11) %></td></tr>
        <tr><td><button onclick="agreement()">Start</button></td></tr>
    	</table>
    	<%   
       }
}
catch(Exception e){out.println(e);}
%>

</body>
</html>
