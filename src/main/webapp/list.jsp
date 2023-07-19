<%@ include file="home.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>PPM Technologies</title>
</head>
<body>
<form action = 'listshow.jsp' method = 'post'>
<table style=' border: 3px solid black;margin:auto; margin-top:10px'>
<tr>
<td class = 'tdp'> Select Product Brand</td>
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
	<td colspan="2" align="center" style = "padding: 10px ">
	<button  style ="font-family:Garamond;font-size:30px; padding: 1px 15px; color:black; background-color:white; border-radius:5px">Show</button>
	</td>
</tr>


</table>
</form>
</body>
</html>