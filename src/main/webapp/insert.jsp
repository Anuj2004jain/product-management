<%@ include file="home.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PPM Technologies</title>
</head>
<body background="bg.jpg">
<form action = 'saveRecord.jsp' method = 'post'>
<table style=' border: 3px solid black;margin:auto; margin-top:10px'>
<tr>
<td class = 'tdp'> Enter Product Id</td>
<td class = 'tdp'><input type = "text" name = pid class = 'tp' required></td>
</tr>
<tr>
<td class = 'tdp'> Enter Product Name</td>
<td class = 'tdp'><input type = "text" name = pname class = 'tp' required></td>
</tr>
<tr>
<td class = 'tdp'> select Product Brand</td>
<td class = 'tdp'>
<select class='tp' style='font-size:22px' name='brand'>
     	 <option>Logitech</option>
     	 <option>Dell</option>
     	 <option>Apple</option>
     	 <option>Acer</option>
     	 <option>HP</option>
     	 <option>Samsung</option>
     	</select>
</td>
</tr>
<tr>
<td class = 'tdp'> Enter Product Quantity</td>
<td class = 'tdp'><input type = "text" name = pquant class = 'tp' required></td>
</tr>
<tr>
<td class = 'tdp'> Enter Product Price</td>
<td class = 'tdp'><input type = "text" name = pcost class = 'tp' required></td>
</tr>
<tr>
	<td colspan="2" align="center" style = "padding: 10px ">
	<button style ="font-family:Garamond;font-size:30px; padding: 1px 15px; color:black; background-color:white; border-radius:5px">Insert</button>
	</td>
	</tr>

</table>
</form>
</body>
</html>