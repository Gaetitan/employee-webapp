$(document).ready(function() {
	/* Empty modal form */
	$("#newEmployee").on("hidden.bs.modal", function() {
		$("#newEmployee .modal-body #form_id").val(0);
		$("#newEmployee .modal-body #form_name").val("");
		$("#newEmployee .modal-body #form_email").val("");
		$("#newEmployee .modal-body #form_address").val("");
		$("#newEmployee .modal-body #form_telephone").val("");
	});
});

/* Passing data to modal to edit employee */
$(document).on("click", ".btn_editEmployee", function() {
	$("#newEmployee .modal-body #form_id").val($(this).closest("td").find(".input_id").val());
	$("#newEmployee .modal-body #form_name").val($(this).closest("td").find(".input_name").val());
	$("#newEmployee .modal-body #form_email").val($(this).closest("td").find(".input_email").val());
	$("#newEmployee .modal-body #form_address").val($(this).closest("td").find(".input_address").val());
	$("#newEmployee .modal-body #form_telephone").val($(this).closest("td").find(".input_telephone").val());
});