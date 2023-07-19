<%@ include file="home.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PPM Technologies</title>
</head>
<style>
 th {
  border:1px solid black;
}
</style>

<body background="bg.jpg">

<form action = 'searchshow.jsp' method = 'post'>
<table style=' border: 3px solid black;margin:auto; margin-top:10px'>
<tr>
<td class = 'tdp'> Enter Product Id</td>
<td class = 'tdp'><input type = "text" name = pid class = 'tp' required></td>
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