<%@page import="java.sql.*"%>
<%@ include file="delete.jsp" %>

<% 
String id = request.getParameter("pid");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ppm", "root", "Root");


	String query="delete from prod_details where Prod_id=?";
	PreparedStatement ps = con.prepareStatement(query);
	ps.setString(1,id);
	ps.executeUpdate();

%>
<html>
<head>
<meta charset="UTF-8">
<title>PPM Technologies</title>
</head>
<body>
<h2 style ='color: Green; text-align:center; font-family:Garamond; font-size:30px '>Record is successfully deleted </h2>
</body>
</html>