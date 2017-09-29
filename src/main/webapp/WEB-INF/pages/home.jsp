<%@ include file="/WEB-INF/include/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div>
	<h1 class="center">Employee List</h1>

	<!--  Table of employees -->
	<table class="table">
		<thead class="thead-default">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Address</th>
				<th>Telephone</th>
				<th>Action</th>
			</tr>
		<thead>
			<c:forEach var="employee" items="${listEmployee}">
				<tr>
					<td>${employee.name}</td>
					<td>${employee.email}</td>
					<td>${employee.address}</td>
					<td>${employee.telephone}</td>
					<td>
						<input type="hidden" class="input_id" value="${employee.id}"/>
						<input type="hidden" class="input_name" value="${employee.name}"/>
						<input type="hidden" class="input_email" value="${employee.email}"/>
						<input type="hidden" class="input_address" value="${employee.address}"/>
						<input type="hidden" class="input_telephone" value="${employee.telephone}"/>
						<button type="button" class="btn btn-secondary btn_editEmployee" data-toggle="modal" data-target="#newEmployee">Edit</button>
						<a class="btn btn-danger" href="deleteEmployee?id=${employee.id}">Delete</a>
					</td>
				</tr>
			</c:forEach>
	</table>

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#newEmployee">New Employee</button>
</div>

<div class="modal fade" id="newEmployee" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Employee</h5>
				<button type="button" class="btn close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<form:form action="saveEmployee" method="post" modelAttribute="employee">
				<div class="modal-body">
						<form:hidden id="form_id" path="id" />
						<div class="form-group">
							<label for="form_name">Name</label>
							<form:input type="text" class="form-control" id="form_name" placeholder="Steve Rogers" path="name" />
						</div>
						<div class="form-group">
							<label for="form_email">Email</label>
							<form:input type="email" class="form-control" id="form_email" placeholder="steve.rogers@avengers.com" path="email" />
						</div>
						<div class="form-group">
							<label for="form_address">Address</label>
							<form:input type="text" class="form-control" id="form_address" placeholder="120 Broadway Avenue" path="address" />
						</div>
						<div class="form-group">
							<label for="form_telephone">Telephone</label>
							<form:input type="tel" class="form-control" id="form_telephone" placeholder="0651487948" path="telephone" />
						</div>	
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					<input type="submit" value="Save" class="btn btn-primary"/>
				</div>
			</form:form>
		</div>
	</div>
</div>


<%@ include file="/WEB-INF/include/footer.jsp"%>