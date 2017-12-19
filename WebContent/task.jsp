<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.Statement"%>
<%@page import ="java.sql.SQLException"%>
<%@page import ="java.sql.ResultSet"%>
<%@page import ="java.sql.PreparedStatement"%>
<%@page import ="java.sql.DriverManager"%>
<%@page import ="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% String tid=request.getParameter("tid");
	   String tname=request.getParameter("tname");
	   String tweburl=request.getParameter("tweburl");
	   String tdetails=request.getParameter("tdetails");
	   String tskill=request.getParameter("tskill");
	   String tday=request.getParameter("tday");
	   String tcompletion=request.getParameter("tcompletion");
	   String tcreport=request.getParameter("tcreport");
	   String tvul=request.getParameter("tvul");
	   String tvreport=request.getParameter("tvreport");
	   int a=Integer.parseInt(tcompletion);
	   int b=Integer.parseInt(tcreport);
	   int c=Integer.parseInt( tvul);
	   int d=Integer.parseInt(tvreport);
	   int fnal=(a+b+c+d);
	   try{
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/haxperts?verifyServerCertificate=false&useSSL=true","root","1234");
	   Statement stm=con.createStatement();
	   int i=stm.executeUpdate("insert into task_addition(id,name,weburl,details,skills_required,days,task_completion_points,completion_report_points,vulnerability_found_points,vulnerability_reoprt_points,max_points)values('" +tid+" ',' " +tname+" ',' "+tweburl+" ',' "+tdetails+" ',' "+tskill+" ',' "+tday+" ',' "+tcompletion+" ',' "+tcreport+" ',' "+tvul+" ',' "+tvreport+" ',' "+fnal+" ')");
	   out.println("Task has been added to hacker profile");
		con.close();
	   }
	   catch(Exception e){out.println(e);}
	%>
</body>
</html>
