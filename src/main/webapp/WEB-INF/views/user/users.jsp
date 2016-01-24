<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="/resources/css/bootstrap.css" rel="stylesheet">
</head>
<body>
    <div class="container">
    <h1><spring:message code="user.list" /></h1>
		<table class="table table-hover" >
		 	<thead>
	    		<tr>
		    		<th><spring:message code="user.username" /></th>
		    		<th><spring:message code="user.email" /></th>
	    		</tr>
		    </thead>
	    	<tbody>
	    	<c:forEach items="${users}" var="user">
	    		<tr>
	    			<td>${user.name}</td>
	    			<td>${user.email}</td>
	    		</tr>
	   		</c:forEach>
	    	</tbody>
	    </table>

	    <a href="<spring:url value="/user/create" />"><spring:message code="user.create" /></a>
    </div>
</body>
</html>