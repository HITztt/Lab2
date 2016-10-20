<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书详细信息</title>
<style>
body
{
	background-color:#b0c4de;
}

</style>
</head>
<body>
	
	The Detail Of Book ${ book.title }
	<table width="600" border="1">
			<tr>
				<th>ISBN</th>
				<th>出版商</th>
				<th>出版日期</th>
				<th>价格</th>
			</tr>
		
			<tr>
				<td>${book.ISBN}</td>
				<td>${book.publisher}</td>
				<td>${book.publishDate}</td>
				<td>${book.price}</td>
			</tr>
	</table>
	<br>
	<br>
	The Information Of Author ${ author.name }
	<table width="600" border="1">
			<tr>
				<th>姓名</th>
				<th>ID</th>
				<th>国籍</th>
				<th>年龄</th>
			</tr>
		
			<tr>
				<td>${author.name}</td>
				<td>${author.authorID}</td>
				<td>${author.country}</td>
				<td>${author.age}</td>
			</tr>
	</table>
	<a href="choose">返回</a>
</body>
</html>