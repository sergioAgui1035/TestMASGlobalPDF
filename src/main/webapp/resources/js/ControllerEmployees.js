$(document).ready(function() {

});

var timeOutPetition = 200000;

function EmployeesRecovery() {

	$.ajax({
		timeout: 20000,
		url: "EmployeesSynchronization",
		type: 'GET',
		async: false,
		success: function(data, textStatus, jqXHR) {

			if (data == true) {
				alert("Synchronized employees");

			} else {
				alert("Not synchronized employees");
			}
		},
		error: function(jqXHR, textStatus, errorMessage) {
			alert("Error Synchronizing employees"); // Optional    	  
		}
		
	})
}

function FindEmployees() {

	id = $("#txtIdEmployee").val();

	if (id == null || id == "") {
		EmployeesSalaryAll();
	} else {
		EmployeesSalaryById(id);
	}

}

function EmployeesSalaryAll() {

	$.ajax({
		url: "getEmployees",
		type: 'GET',
		async: false,
		timeout: timeOutPetition,
		success: function(data, textStatus, jqXHR) {

			createTableEmployees(data);
		},
		error: function(jqXHR, textStatus, errorMessage) {
			alert("Error Synchronizing employees"); // Optional    	  
		}
	})
}

function EmployeesSalaryById(id) {

	$.ajax({
		url: "getEmployeeById",
		type: 'GET',
		async: false,
		timeout: timeOutPetition,
		data: { id: id },
		success: function(data, textStatus, jqXHR) {

			createTableEmployeesById(data);
		},
		error: function(jqXHR, textStatus, errorMessage) {
			alert("Error Synchronizing employees"); // Optional    	  
		}
	})
}

function createTableEmployees(data) {
	var html = "";

	$("#data-table-combine-Employees").remove();
	$('#containerTable')
		.html(
			"<table id='data-table-combine-Employees' class='table table-striped table-bordered ' style='width:100%'>"
			+ "<thead>"
			+ "<tr>"
			+ "<th >Id</th>"
			+ "<th >Name</th>"
			+ "<th >Role name</th>"
			+ "<th >Contract type name</th>"
			+ "<th >Hourly salary</th>"
			+ "<th >Monthly salary</th>"
			+ "<th >Anual salary</th>"
			+ "</tr>"
			+ "</thead>"
			+ "<tbody id='EmployeesTableBody' style='width:100%'></tbody>"
			+ "</table>");

	data.forEach(function(element) {

		html += "<tr><td>" + element.id + "</td>" +
			"<td>" + element.name + "</td>" +
			"<td>" + element.roleName + "</td>" +
			"<td>" + element.contractTypeName + "</td>" +
			"<td>" + element.hourlySalary + "</td>" +
			"<td>" + element.monthlySalary + "</td>" +
			"<td>" + element.anualSalary + "</td>";

	});
	html += "</tr>";
	$("#EmployeesTableBody").html(html);

	$('#data-table-combine-Employees').DataTable({
		responsive: true,
		dom: 'Bfrtip',
		buttons: [
			'copy',
			{
				extend: 'excel',
				messageTop: null
			},

			{
				extend: 'print',
				messageTop: function() {
				},
				messageBottom: null
			}
		]
	});
}

function createTableEmployeesById(element) {
	var html = "";

	$("#data-table-combine-Employees").remove();
	$('#containerTable')
		.html(
			"<table id='data-table-combine-Employees' class='table table-striped table-bordered ' style='width:100%'>"
			+ "<thead>"
			+ "<tr>"
			+ "<th >Id</th>"
			+ "<th >Name</th>"
			+ "<th >Role name</th>"
			+ "<th >Contract type name</th>"
			+ "<th >Hourly salary</th>"
			+ "<th >Monthly salary</th>"
			+ "<th >Anual salary</th>"
			+ "</tr>"
			+ "</thead>"
			+ "<tbody id='EmployeesTableBody' style='width:100%'></tbody>"
			+ "</table>");

	html += "<tr><td>" + element.id + "</td>" +
		"<td>" + element.name + "</td>" +
		"<td>" + element.roleName + "</td>" +
		"<td>" + element.contractTypeName + "</td>" +
		"<td>" + element.hourlySalary + "</td>" +
		"<td>" + element.monthlySalary + "</td>" +
		"<td>" + element.anualSalary + "</td>";


	html += "</tr>";
	$("#EmployeesTableBody").html(html);

	$('#data-table-combine-Employees').DataTable({
		responsive: true,
		dom: 'Bfrtip',
		buttons: [
			'copy',
			{
				extend: 'excel',
				messageTop: null
			},

			{
				extend: 'print',
				messageTop: function() {
				},
				messageBottom: null
			}
		]
	});
}