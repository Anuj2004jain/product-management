<%@page import="java.sql.*"%>
<%@ include file="search.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>PPM Technologies</title>
</head>
<body>
<% 
String name ;
String brand ;
int quantity;
double price ;
boolean flag = false;
String id=request.getParameter("pid");

Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/ppm", "root", "Root");
String Query1 = "select prod_id from prod_details";
PreparedStatement ps1 = con.prepareStatement(Query1);
ResultSet rs = ps1.executeQuery();
while(rs.next()){
	if(rs.getString(1).equals(id)){
		flag = true;
		break;
	}
		
}
if (flag == true){
String query="select * from prod_details where Prod_id=?";
PreparedStatement ps = con.prepareStatement(query);
ps.setString(1,id);
ResultSet rs1 = ps.executeQuery();
rs1.next();
name = rs1.getString(2);
brand = rs1.getString(3);
quantity = rs1.getInt(4);
price = rs1.getDouble(5);
%>
<table style="width:100%; margin-top:10px;border:1px solid black">
  <tr>
    <th class = 'tdp'>Prod_id</th>
    <th class = 'tdp'>Prod_name</th>
    <th class = 'tdp'>Prod_brand</th>
    <th class = 'tdp'>Prod_quantity</th>
    <th class = 'tdp'>Prod_price</th>
  
  </tr>
  <tr>
  <th class = 'tdp'><%=id%></th>
  <th class = 'tdp'><%=name%></th>
  <th class = 'tdp'><%=brand%></th>
  <th class = 'tdp'><%=quantity%></th>
  <th class = 'tdp'><%=price%></th>
  </tr>
</table>
<% 

}
else{
	%>
	<h1 style='color:Red; font-size:30px; font-family: Garamond; text-align :center'> Entered Product Id Does Not Exists</h1>
	<% 
}

%>
</body>
</html>