<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>该作者所著图书</title>
<style>
body
{
	background-color:#b0c4de;
}

</style>
</head>
<body>
	${sessionScope.authorname}的所有书籍：<br>
	<table width="500" border="1">
		<tr>
			<th>ISBN</th>
			<th>书名</th>
			<th>作者ID</th>
			<th>出版商</th>
			<th>出版日期</th>
			<th>价格</th>
		</tr>
		<s:iterator  value="books" var="b">
			<tr>
				<td>${b.ISBN}</td>
				<td>${b.title}</td>
				<td>${b.authorID}</td>
				<td>${b.publisher}</td>
				<td>${b.publishDate}</td>
				<td>${b.price}</td>
			</tr>
		</s:iterator>
	</table>
	<a href="ShowAllBook">查看所有图书</a>
	<a href="viewAllAuthors">查看所有作者</a>
</body>
</html>