<%@page import="java.sql.*"%>
<%@ include file="insert.jsp" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>PPM Technologies</title>
</head>
<body>
<div style ='text-align : center; margin-top: 10px'>
<% 
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ppm", "root", "Root");
String id=request.getParameter("pid");
String name=request.getParameter("pname");
String brand=request.getParameter("brand");
String quantity=request.getParameter("pquant");
String price=request.getParameter("pcost");
boolean flag = false;
String query1 = "select Prod_id from prod_details";
PreparedStatement ps1 = con.prepareStatement(query1);
ResultSet rs = ps1.executeQuery();
while(rs.next()){
	if(rs.getString(1).equals(id)){
		flag = true;
		%>
		<h1 style='color:Red; font-size:30px; font-family: Garamond'> Product Id is Already Exists</h1>
		<% 
		break;
	}
		
}
if(flag == false){
	String query="insert into prod_details values(?,?,?,?,?)";
	PreparedStatement ps = con.prepareStatement(query);
	ps.setString(1,id);
	ps.setString(2,name);
	ps.setString(3,brand);
	ps.setString(4,quantity);
	ps.setString(5, price);
	ps.executeUpdate();
	%>
	<h2 style='color:green; font-size:30px; font-family: Garamond'> Record is inserted Successfully</h2>
	<% 
}

%>



</div>
</body>
</html>