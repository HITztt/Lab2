<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看所有图书</title>
<style>
body
{
	background-color:#b0c4de;
}

</style>
</head>
<body>
	所有图书：<br>
	<table width="1000" border="1">
		<tr>
			<th>ISBN</th>
			<th>书名</th>
			<th>作者ID</th>
			<th>出版商</th>
			<th>出版日期</th>
			<th>价格</th>
			<th>操作</th>
		</tr>
	    
	    <s:iterator value="books" var="b">
	    
			<tr>
			
				<th>${b.ISBN}</th>				
				 
				<th><a href='<s:url action="showInformation"><s:param name="ISBN" value="#b.ISBN"/></s:url>'>${b.title}</a></th>
				
				<th>${b.authorID}</th>
				<th>${b.publisher}</th>
				<th>${b.publishDate}</th>
				<th>${b.price}</th>
				 
				<th>
					<a href='<s:url action="delBook"><s:param name="ISBN" value="#b.ISBN"/></s:url>'><input type="button" value="删除"/></a>

				</th>
			</tr>
		</s:iterator>
		
	</table>
	<a href="choose">返回</a>
</body>
</html>