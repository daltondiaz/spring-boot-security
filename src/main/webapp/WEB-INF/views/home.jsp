<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Spring Security Example</title>
        <link href="/resources/css/bootstrap.css" rel="stylesheet">
    </head>
    <body>
        <h1>Welcome!</h1>
		<div class="container">
	        <p>Click <a href="<spring:url value="/login"/>">here</a> to see a greeting.</p>
		</div>
    </body>
</html>