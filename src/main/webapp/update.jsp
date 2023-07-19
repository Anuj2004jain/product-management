<%@page import="java.sql.*"%>
<%@ include file="edit.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>PPM Technologies</title>
</head>
<body>
<% 
String name = request.getParameter("pname");
String brand = request.getParameter("brand") ;
String quantity = request.getParameter("pquant");
String price = request.getParameter("pcost") ;
String id=request.getParameter("pid");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ppm", "root", "Root");
String query="update prod_details set prod_name = ?, prod_brand = ?, prod_quantity= ?, prod_price= ? where Prod_id=?";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1,name);
ps.setString(2,brand);
ps.setString(3,quantity);
ps.setString(4,price);
ps.setString(5,id);
ps.executeUpdate();

%>

<h2 style ='color: Green; text-align:center; font-family:Garamond; font-size:30px '>Record is  successfully Update </h2>
</body>
</body>
</html>