

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8" />
<title>Employees</title>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"
	name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />

<!-- ================== BEGIN BASE CSS STYLE ================== -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/all.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/plugins/animate/animate.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/default/style.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/default/style-responsive.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/default/theme/default.css"
	rel="stylesheet" id="theme" />
<!-- ================== END BASE CSS STYLE ================== -->

<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
<link
	href="${pageContext.request.contextPath}/resources/plugins/DataTables/media/css/dataTables.bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/css/buttons.bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/AutoFill/css/autoFill.bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/ColReorder/css/colReorder.bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/KeyTable/css/keyTable.bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/RowReorder/css/rowReorder.bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Select/css/select.bootstrap.min.css"
	rel="stylesheet" />
<!-- ================== END PAGE LEVEL STYLE ================== -->

<!-- ================== BEGIN BASE JS ================== -->
<script
	src="${pageContext.request.contextPath}/resources/plugins/pace/pace.min.js"></script>
<!-- ================== END BASE JS ================== -->

<style>
.contenedor-arbol, .contenedor-arbol ul, .contenedor-arbol li {
	position: relative;
}

.contenedor-arbol ul {
	list-style: none;
}

.contenedor-arbol li::before, .contenedor-arbol li::after {
	content: "";
	position: absolute;
	left: -12px;
}

.contenedor-arbol li::before {
	border-top: 2px solid green;
	top: 9px;
	width: 8px;
	height: 0;
}

.contenedor-arbol li::after {
	border-left: 2px solid brown;
	height: 100%;
	width: 0px;
	top: 2px;
}

.contenedor-arbol ul>li:last-child::after {
	height: 8px;
}

table, td, th {
	border: 1px solid black;
}

table {
	width: 100%;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show">
		<span class="spinner"></span>
	</div>
	<!-- end #page-loader -->

	<!-- begin #page-container -->
	<div id="page-container"
		class="fade page-sidebar-fixed page-header-fixed">
		<!-- begin #header -->
		<jsp:include page="header.jsp"></jsp:include>
		<!-- end #header -->

		<!-- begin #sidebar -->
		<jsp:include page="menu.jsp"></jsp:include>
		<!-- end #sidebar -->

		<!-- begin #content -->
		<div id="content" class="content">
			<!-- begin breadcrumb -->
			<ol class="breadcrumb pull-right">
				<li class="breadcrumb-item active">Employees</li>
			</ol>
			<!-- end breadcrumb -->
			<!-- begin page-header -->
			<h1 class="page-header">
				Operations <small>Employees </small>
			</h1>
			<!-- end page-header -->
			<!-- begin row -->
			<div class="row">
				<!-- begin col-2 -->
				<!-- end col-2 -->
				<!-- begin col-10 -->
				<div class="col-lg-10">
					<div class="panel panel-inverse">
						<!-- begin panel-heading -->
						<div class="panel-heading">
							<div class="panel-heading-btn">
								<a href="javascript:;"
									class="btn btn-lg btn-icon btn-circle btn-default"
									data-click="panel-expand"><i class="fa fa-expand"></i></a> <a
									href="javascript:;" style="background: #727cb6 !important"
									class="btn btn-lg btn-icon btn-circle btn-success"
									data-click="panel-reload"><i class="fa fa-redo"></i></a>
							</div>
							<h4 class="panel-title">Employees &nbsp;&nbsp;&nbsp;</h4>
						</div>
						<!-- end panel-heading -->
						<!-- begin panel-body -->
						<div class="panel-body">
							<input id="sw" value="${sw}" style="display: none">
							<div class="row">

								<div class="col-sm-3">
									<label>Plan:</label><br> <button type="button" class="btn btn-secondary"
									onclick="EmployeesRecovery()">Sync employees</button>
								</div>
								
							</div>
							<div class="row" style="margin-top: 35px !important;">

								<div class="col-sm-3">
									<label>Employee id:</label><br> <input id="txtIdEmployee"
										type="text" placeholder="Enter employee id"
										class="form-control">
								</div>

								<div class="col-sm-3">
									<button type="button" class="btn btn-secondary"
										onclick="FindEmployees()" style="margin-top: 24px !important;">Find</button>
								</div>

							</div>
							<div id="containerTable" class="dataTables_wrapper form-inline dt-bootstrap no-footer" style="margin-top: 35px !important;">

<!-- 								<table style="width: 100%; margin-top: 25px !important;"> -->
<!-- 									<thead> -->
<!-- 										<tr> -->
<!-- 											<th id="td0.1" onclick="modalTiempo('td0.1')" style="width: 104px !important;">Dispositivo</th> -->
<!-- 											<th id="td0.2" onclick="modalTiempo('td0.2')">1 - 5</th> -->
<!-- 											<th id="td0.3" onclick="modalTiempo('td0.3')">2 - 10</th> -->
<!-- 											<th id="td0.4" onclick="modalTiempo('td0.4')">3 - 8</th> -->
<!-- 											<th id="td0.5" onclick="modalTiempo('td0.5')">4 - 11</th> -->
<!-- 											<th id="td0.6" onclick="modalTiempo('td0.6')">5 - 4</th> -->
<!-- 										</tr> -->
<!-- 									</thead> -->
<!-- 									<tbody id="EquiposComunicacionTableBody"> -->
<!-- 										<tr> -->
<!-- 											<td style="width: 104px !important;">Controladora 1</td> -->
<!-- 											<td id="td1.1" onclick="modalColor('td1.1')" -->
<!-- 												style="background-color: red"></td> -->
<!-- 											<td id="td1.2" onclick="modalColor('td1.2)" -->
<!-- 												style="background-color: green"></td> -->
<!-- 											<td id="td1.3" onclick="modalColor('td1.3')" -->
<!-- 												style="background-color: red"></td> -->
<!-- 											<td id="td1.4" onclick="modalColor('td1.4)" -->
<!-- 												style="background-color: green"></td> -->
<!-- 											<td id="td1.5" onclick="modalColor('td1.5')" -->
<!-- 												style="background-color: red"></td> -->
<!-- 										</tr> -->
<!-- 										<tr> -->
<!-- 											<td>Controladora 2</td> -->
<!-- 											<td id="td2.1" onclick="modalColor('td2.1)" -->
<!-- 												style="background-color: green"></td> -->
<!-- 											<td id="td2.2" onclick="modalColor('td2.2)" -->
<!-- 												style="background-color: red"></td> -->
<!-- 											<td id="td2.3" onclick="modalColor('td2.3)" -->
<!-- 												style="background-color: green"></td> -->
<!-- 											<td id="td2.4" onclick="modalColor('td2.4)" -->
<!-- 												style="background-color: red"></td> -->
<!-- 											<td id="td2.5" onclick="modalColor('td2.5)" -->
<!-- 												style="background-color: green"></td> -->
<!-- 										</tr> -->

<!-- 									</tbody> -->
<!-- 								</table> -->
							</div>
						</div>
						<br>


					</div>
					<!-- end panel-body -->
				</div>
			
			</div>
			<!-- end col-10 -->
		</div>
		<!-- end row -->
	</div>
	<!-- end #content -->

	<!-- begin theme-panel -->

	<!-- end theme-panel -->

	<!-- begin scroll to top btn -->
	<a href="javascript:;"
		class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade"
		data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
	<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->

	<!-- ================== BEGIN BASE JS ================== -->
	<script
		src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!--[if lt IE 9]>
		<script src="${pageContext.request.contextPath}/resources/crossbrowserjs/html5shiv.js"></script>
		<script src="${pageContext.request.contextPath}/resources/crossbrowserjs/respond.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script
		src="${pageContext.request.contextPath}/resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/js-cookie/js.cookie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/theme/default.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/apps.min.js"></script>
	<!-- ================== END BASE JS ================== -->

	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/buttons.bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/buttons.flash.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/jszip.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/vfs_fonts.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/buttons.html5.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/buttons.print.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/AutoFill/js/dataTables.autoFill.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/KeyTable/js/dataTables.keyTable.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/RowReorder/js/dataTables.rowReorder.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/demo/table-manage-combine.demo.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/ControllerEmployees.js"></script>
		
	<script
		src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/pdfmake.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			TableManageCombine.init();
		});
	</script>
</body>
</html>
