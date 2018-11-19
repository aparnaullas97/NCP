<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	Class.forName("org.gjt.mm.mysql.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/NcpAuto","root","amma123");
%>



<%
String department=request.getParameter("department");
String course=request.getParameter("coursenew");

Statement st=con.createStatement();


int i=st.executeUpdate("insert into course(course_name, category)values('"+course+"','"+department+"');");
response.sendRedirect("admin.jsp");


%>