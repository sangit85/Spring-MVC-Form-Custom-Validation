<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Validation</title>
<style>
.error {
	color: red
}
</style>
</head>
<body>
	<form:form action="processForm" modelAttribute="registration">

		<div align="center">
			<h2>Register Here</h2>
			<table>
				<tr>
					<td>First name</td>
					<td><form:input type="text" path="firstName" /></td>
					<td><form:errors path="firstName" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Last name (*)</td>
					<td><form:input type="text" path="lastName" /></td>
					<td><form:errors path="lastName" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Age </td>
					<td><form:input type="text" path="age" /></td>
					<td><form:errors path="age" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Email </td>
					<td><form:input type="text" path="email" /></td>
					<td><form:errors path="email" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Coupon Code </td>
					<td><form:input type="text" path="couponCode" /></td>
					<td><form:errors path="couponCode" cssClass="error" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Submit" /></td>
				</tr>
			</table>
		</div>
	</form:form>
</body>
</html>