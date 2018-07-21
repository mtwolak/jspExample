<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head></head>
<body>
<h2>Users</h2>
<input type="button" value="Add new" onclick="window.location.href='showAddingNew'; return false" />
<table border="1">
<tr><th>Id</th><th>Name</th><th>Action</th></tr>
<c:forEach items="${users}" var="user">
    <c:url var="updateLink" value="update">
        <c:param name="userId" value="${user.id}" />
    </c:url>

    <c:url var="deleteLink" value="delete">
            <c:param name="userId" value="${user.id}" />
        </c:url>
<tr>
<td>${user.id}</td>
<td>${user.name}</td>
<td><a href="${updateLink}">Update</a> | <a href="${deleteLink}">Delete</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>