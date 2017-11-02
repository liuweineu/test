<%@ page language="java" contentType="text/html; charset=gb2312"
	pageEncoding="gb2312"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		<form:form commandName="book" action="book_save" method="get">
		    <fieldset>
		        <legend>���ͼ��</legend>
		        <p>
		            <label for="category">���� </label>
		             <form:select id="category" path="category.id" 
		                items="${categories}" itemLabel="name" 
		                itemValue="id"/>
		        </p>
		        <p>
		            <label for="title">����: </label>
		            <form:input id="title" path="title"/>
		        </p>
		        <p>
		            <label for="author">����: </label>
		            <form:input id="author" path="author"/>
		        </p>
		        <p>
		            <label for="isbn">ISBN: </label>
		            <form:input id="isbn" path="isbn"/>
		        </p>
		        
		        <p id="buttons">
		            <input id="reset" type="reset" tabindex="4">
		            <input id="submit" type="submit" tabindex="5" 
		                value="���ͼ��">
		        </p>
		    </fieldset>
		</form:form>
	</div>
</body>
</html>