<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">@import url("<c:url value="/css/main.css"/>");</style>
<title>Insert title here</title>
</head>
<body>
	<div id="global">
		<h1>图书列表</h1>
		<a href="<c:url value="/book_input"/>">添加图书</a>
		<table>
			<tr>
				<th>分类</th>
				<th>标题</th>
				<th>ISBN</th>
				<th>作者</th>
				<th>操作</th>
			</tr>
			<c:forEach items="${books}" var="book">
				<tr>
					<td>${book.category.name}</td>
					<td>${book.title}</td>
					<td>${book.isbn}</td>
					<td>${book.author}</td>
					<td><a href="<c:url value="/book_edit"/>/${book.id}">编辑</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>