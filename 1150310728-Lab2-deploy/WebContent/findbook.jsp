<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Book" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
									<script>
function myFunction(){
	document.getElementById("demo").innerHTML=book.getName;
}
</script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>查找图书</title>
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
 
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
 
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<center>
		<%if(request.getSession().getAttribute("username") != null) { %>
		<a id="back" href="welcome.jsp">返回菜单</a>
		<div id="Namefind">
			<form action="" method="post">
				请输入您要查找的作家名字:<input type="text" name="Name"></br>
				<input type="hidden" value="Name" name="choice">
				<input type="submit" value="提交">
			</form>
		</div>>
		<div id="show">
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<table class="table">
							<thead>
								<tr>
									<th>
										Title
									</th>																		<th>
										ISBN
									</th>																		<th>
										AuthorID
									</th>																		<th>
										Publisher
									</th>																		<th>
										PublishDate
									</th>																		<th>
										Price
									</th>																		<th>
										Name
									</th>																		<th>
										Age
									</th>																		<th>
										Country
									</th>
								</tr>
							</thead>
							<tbody>
								<%ArrayList<Book> booklist = (ArrayList<Book>)request.getAttribute("booklist"); %>
								<% for(Book book:booklist){ %>
								<tr class="success">
                                    <td>
										<button type="submit" id="btn_submit" > "book.getTitle" </button>
									</td>
									<td>
									<button type="submit" id="btn_submit" > book.getISBN().value </button>
										<%=book.getISBN() %>
									</td>
									<td>
										<%=book.getAuthorID() %>
									</td>
									<td>
										<%=book.getPublisher() %>
									</td>
									<td>
										<%=book.getPublishDate() %>
									</td>
									<td>
										<%=book.getPrice() %>
									</td>
									<td>
										<%=book.getName() %>
									</td>
									<td>
										<%=book.getAge() %>
									</td>
									<td>
										<%=book.getCountry() %>
									</td>
                              
									
								</tr>

	

								<%} %>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<%} else {%>
		<h1>请登录后再访问此页面</h1>
		<a href="LoginOut"><i>返回登陆</i></a>
		<%} %>
		<font color="red" size="2"> ${msg }</font>
	</center>
	<script src="js/jquery-1.11.3.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/findbook.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>