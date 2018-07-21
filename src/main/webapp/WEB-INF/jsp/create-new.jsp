<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head></head>
<body>
<h2>Adding new user</h2>

<form:form action="saveUser" modelAttribute="newUser" method="POST">
<form:hidden path="id" />

<table>
<tr><td>Name</td><td><form:input path="name" /></td></tr>
<tr><input type="submit" value="Save" /></tr>
</table>
</form:form>
</body>
</html>