<%@page import="java.sql.*"%>
<%@ include file="home.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>PPM Technologies</title>
</head>
<body>

<% 
String brand=request.getParameter("brand");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ppm", "root", "Root");
String query1 = "select count(prod_id) from prod_details where Prod_brand=?";
PreparedStatement ps1 = con.prepareStatement(query1);
ps1.setString(1,brand);
ResultSet rs1 = ps1.executeQuery();
rs1.next();
int row = rs1.getInt("count(prod_id)");
if(row == 0){
	%>
	<h1 style='color:Green; font-size:30px; font-family: Garamond; text-align:center'> No Product Is Available of <%=brand %> Brand</h1>
	<% 
}
else{
	String query="select * from prod_details where Prod_brand=?";
	PreparedStatement ps = con.prepareStatement(query);
	ps.setString(1,brand);
	ResultSet rs = ps.executeQuery();
	%>
	<table class = 'tar' border=1>
	<tr>
	 <th class ='tdp'>Prod_id</th><th class ='tdp'>Prod_name</th><th class ='tdp'>Prod_brand</th><th class ='tdp'>Prod_quantity</th><th class ='tdp'>Prod_price</th>
	</tr>
	<% 
	while(rs.next())
	{
	%>
		<tr>
		<td class ='tdp'><%=rs.getString(1) %></td>
		<td class ='tdp'><%=rs.getString(2) %></td>
		<td class ='tdp'><%=rs.getString(3) %></td>
		<td class ='tdp'><%=rs.getString(4) %></td>
		<td class ='tdp'><%=rs.getString(5) %></td>
		</tr>
		<% 
		
	}
}

%>
</table>
</body>
</html>