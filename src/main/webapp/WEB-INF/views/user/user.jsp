<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head><link href="/resources/css/bootstrap.css" rel="stylesheet"></head>
<body>
	<div class="container">
	    <h1><spring:message code="user.create" /></h1>
	    <a href="<spring:url value="/users" />"><spring:message code="user.list" /></a>
	    <form:form method="POST" action="/user/create" modelAttribute="form">
	        <form:errors path="" element="div" />
	        <div>
	            <form:label path="id"><spring:message code="user.id" /></form:label>
	            <form:input path="id" />
	            <form:errors path="id" />
	        </div>
	        <div>
	            <form:label path="name"><spring:message code="user.username" /></form:label>
	            <form:input path="name" />
	            <form:errors path="name" />
	        </div>
	        <div>
	            <form:label path="email"><spring:message code="user.email" /></form:label>
	            <form:input path="email" />
	            <form:errors path="email" />
	        </div>
	        <div>
	            <form:label path="password"><spring:message code="user.password" /></form:label>
	            <form:password path="password" />
	            <form:errors path="password" />
	        </div>
	        <div>
	            <form:label path="passwordRepeated"><spring:message code="user.passwordRepeated" /></form:label>
	            <form:password path="passwordRepeated" />
	            <form:errors path="passwordRepeated" />
	        </div>
	        <div>
	            <input class="btn btn-success" type="submit" />
	        </div>
	    </form:form>
    </div>
</body>
</html>