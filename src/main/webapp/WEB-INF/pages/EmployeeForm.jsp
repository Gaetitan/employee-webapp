<%@ include file="/WEB-INF/include/header.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div align="center">
	<h1>New/Edit Employee</h1>
	<form:form action="saveEmployee" method="post"
		modelAttribute="employee">
		<table>
			<form:hidden path="id" />
			<tr>
				<td>Name:</td>
				<td><form:input path="name" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td>Address:</td>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
				<td>Telephone:</td>
				<td><form:input path="telephone" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Save"></td>
			</tr>
		</table>
	</form:form>
</div>
<%@ include file="/WEB-INF/include/footer.jsp"%>