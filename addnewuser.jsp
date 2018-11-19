<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	Class.forName("org.gjt.mm.mysql.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/NcpAuto","root","amma123");
%>

<%
String USERNAME=request.getParameter("user");
String PASSWORD=request.getParameter("pass");

Statement st=con.createStatement();

int i=st.executeUpdate("insert into users(username,password)values('"+ USERNAME +"','"+ PASSWORD +"');");
response.sendRedirect("admin.jsp");


%>