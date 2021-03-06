/*
Template Name: Color Admin - Responsive Admin Dashboard Template build with Twitter Bootstrap 4
Version: 4.3.0
Author: Sean Ngu
Website: http://www.seantheme.com/color-admin-v4.3/admin/
*/

var handleDataTableSelect = function() {
	"use strict";
    
	if ($('#data-table-select').length !== 0) {
		$('#data-table-select').DataTable({
			select: true,
			responsive: true
		});
	}
};

var TableManageTableSelect = function () {
	"use strict";
	return {
		//main function
		init: function () {
			handleDataTableSelect();
		}
	};
}();