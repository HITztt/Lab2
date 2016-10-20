<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看所有作者</title>
<style>
body
{
	background-color:#b0c4de;
}

</style>
</head>
<body>
	<form action="SearchAuthor" method="post">
		待查找的作者名：<input type="text" name="authorname"/><br/>
		<input type="submit" value="搜索"><br/>	
	</form>
	<br><br>
	所有的作者：<br>
	<table width="500" border="1">
		<tr>
			<th>ID</th>
			<th>姓名</th>
			<th>国籍</th>
			<th>年龄</th>
		</tr>
		<s:iterator  value="authors" var="a">
			<tr>
				<td>${a.authorID}</td>
				<td>${a.name}</td>
				<td>${a.country}</td>
				<td>${a.age}</td>
				
			</tr>
		</s:iterator>
	</table>
	
	<a href="ShowAllBook">查看所有图书</a>
	<a href="choose">返回</a>
</body>
</html>