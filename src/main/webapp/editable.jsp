<%@page import="java.sql.*"%>
<%@ include file="home.jsp" %>
<% 
String name ;
String brand ;
int quantity;
double price ;
boolean flag = false;
String brandList[] = {"Logitech","Dell","Apple","Acer","HP","Samsung"};
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

<html>
<head>
<meta charset="UTF-8">
<title>PPM Technologies</title>
</head>
<body background="bg.jpg">
<form action = 'update.jsp' method = 'post' >
<table style=' border: 3px solid black;margin:auto; margin-top:10px'>
<tr>
<td class = 'tdp'>Product Id</td>
<td class = 'tdp'><input type = "text"  placeholder = "<%=id%>" value = "<%=id%>" name = pid class = 'tp' readonly required ></td>
</tr>
<tr>
<td class = 'tdp'> Product Name</td>
<td class = 'tdp'><input type = "text" placeholder = "<%=name%>" value = "<%=name%>" name = pname class = 'tp' required></td>
</tr>
<tr>
<td class = 'tdp'> Product Brand</td>
<td class = 'tdp'>
<select class='tp' style='font-size:22px' name='brand'>
<% 
for(String Brand: brandList){
	if(Brand.equals(brand)){
		%>
		<option selected><%=Brand %></option>
		<%
	}
	else{
		%>
		<option><%=Brand %></option>
		<% 
	}
}
%>

</select>

</tr>
<tr>
<td class = 'tdp'> Enter Product Quantity</td>
<td class = 'tdp'><input type = "text"  placeholder = "<%=quantity%>" value = "<%=quantity%>" name = pquant class = 'tp' required></td>
</tr>
<tr>
<td class = 'tdp'> Enter Product Price</td>
<td class = 'tdp'><input type = "text" placeholder = "<%=price%>"  value = "<%=price%>" name = pcost class = 'tp' required></td>
</tr>
<tr>
	<td colspan="2" align="center" style = "padding: 10px ">
	<button style ="font-family:Garamond;font-size:30px; padding: 1px 15px; color:black; background-color:white; border-radius:5px">Update</button>
	</td>
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
</form>
</body>
</html>