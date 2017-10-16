<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>增加图书</title>
</head>
<body>
<center>
	<%if(request.getSession().getAttribute("username") != null) { %>
	<form action="addbookServlet" method="post" enctype="multipart/form-data">
		请输入ISBN:<input type="text" name="ISBN"></br>
		请输入Title:<input type="text" name="Title"></br>
		请输入AuthorID:<input type="text" name="AuthorID"></br>
		请输入Publisher:<input type="text" name="Publisher"></br>
		请输入PublishDate:<input type="text" name="PublishDate"></br>
		请输入Price:<input type="text" name="Price"></br>
		请输入Name:<input type="text" name="Name"></br>
		请输入Age:<input type="text" name="Age"></br>
		请输入Country:<input type="text" name="Country"></br>
		请选择电子书文件:<input type="file" name="file"></br>
		<input type="submit" value="增加">
		<a href="welcome.jsp">返回菜单</a></br>
		<font color="red" size="2"> ${msg }</font>
	</form>
	<%} else {%>
	<h1>请登录后再访问此页面</h1>
	<a caozuo="LoginOut"><i>返回登陆</i></a>
	<%} %>
</center>

</body>
</html>