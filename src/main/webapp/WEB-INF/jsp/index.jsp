<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>
	<body>
		<h1>Hello World - ${german}</h1>
		<a href="${pageContext.request.contextPath}/user/showAddingNew">Add user</a>
		<br />
		<a href="${pageContext.request.contextPath}/user/getAllUsers">Show users</a>
	</body>
</html>