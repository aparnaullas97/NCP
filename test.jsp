<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<%
	Class.forName("org.gjt.mm.mysql.Driver").newInstance();
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost/NcpAuto","root","amma123");
%>


<%
	String USERNAME=request.getParameter("user");
	String PASSWORD=request.getParameter("pass");
	
	java.sql.Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("SELECT * FROM users where username='" + USERNAME  +"' and password='" + PASSWORD + "' order by username ");
	
	while(rs.next()) {
    String pass = "admin";
    String ppp = rs.getString("password");
    if(PASSWORD.equals(pass)){
        response.sendRedirect("admin.jsp");
    }else if(PASSWORD.equals(ppp)){
        response.sendRedirect("user.jsp");
    }else{
        response.sendRedirect("index.jsp");
    }

}
    statement.close();
    con.close();   
%>