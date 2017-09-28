<%@ include file="/WEB-INF/include/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div align="center">
	<h1>Employee List</h1>
	<h3>
		<a href="newEmployee">New Employee</a>
	</h3>
	<table border="1">

		<tr>
			<th>Name</th>
			<th>Email</th>
			<th>Address</th>
			<th>Telephone</th>
			<th>Action</th>
		</tr>
		<c:forEach var="employee" items="${listEmployee}">
			<tr>
				<td>${employee.name}</td>
				<td>${employee.email}</td>
				<td>${employee.address}</td>
				<td>${employee.telephone}</td>
				<td><a href="editEmployee?id=${employee.id}">Edit</a> <a
					href="deleteEmployee?id=${employee.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</div>
<%@ include file="/WEB-INF/include/footer.jsp"%>