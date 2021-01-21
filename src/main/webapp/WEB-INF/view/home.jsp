<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>

<html>
	<head>
		<title>Home page</title>
	</head>

	<body>
		<h2>Home page</h2>
		<hr>
		<p>Welcome to the home page!</p>
		<hr>

		<p>
			User:
			<security:authentication property="principal.username" />
			<br>
			<br> Role(s):
			<security:authentication property="principal.authorities" />
			<br>
			<br> First name: ${user.firstName}, Last name: ${user.lastName},
			Email: ${user.email}
		</p>

		<security:authorize access="hasRole('MANAGER')">

			<p>
				<a href="${pageContext.request.contextPath}/managers">Managers meeting</a>
			</p>

		</security:authorize>

		<security:authorize access="hasRole('ADMIN')">

		<p>
			<a href="${pageContext.request.contextPath}/admins">Admins meeting</a>
		</p>

		</security:authorize>

		<hr>

		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
			<input type="submit" value="Logout" />
		</form:form>

		</body>
</html>