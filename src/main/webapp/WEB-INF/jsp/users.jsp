<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head></head>
<body>
<h2>Users</h2>
<table border="1">
<tr><th>Id</th><th>Name</th></tr>
<c:forEach items="${users}" var="user">
<tr>
<td>${user.id}</td>
<td>${user.name}</td>
</tr>
</c:forEach>
</table>
</body>
</html>