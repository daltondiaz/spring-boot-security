<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sform" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html >
    <head>
        <title>Spring Security Example </title>
         <link href="/resources/css/bootstrap.css" rel="stylesheet">
    </head>
    <body>
        <sform:form action="/login" method="post" cssClass="form-group">
        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <div class="container">
            	<div class="form-group">
            		<label for="email"><spring:message code="login.email"/></label>
            		<input id="email" type="text" name="email" class="form-control"/> 
            	</div>
            	<div class="form-group">
            		<label for="password"><spring:message code="login.password"/> </label>
            		<input id="password" type="password" name="password" class="form-control"/>
            	</div> 
            	<div class="checkbox">
            		<label for="remember-me">
        				<input type="checkbox" name="remember-me" id="remember-me" >
        				<spring:message code="login.rememberme"/>
        			</label>
            	</div>
            	<button type="submit" class="btn btn-primary" ><spring:message code="login.signin"/></button>
            	<a class="btn btn-success" href="<spring:url value="/user/create" />" ><spring:message code="login.signup"/></a>
            </div>
        </sform:form>
        <c:if test="${error}">
        	<p>The email or password you have entered is invalid, try again.</p>
        </c:if>
    </body>
</html>