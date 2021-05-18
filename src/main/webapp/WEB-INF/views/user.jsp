<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Usuarios</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/all.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/animate/animate.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/default/style.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/default/style-responsive.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/css/default/theme/default.css" rel="stylesheet" id="theme" />
		<link href="${pageContext.request.contextPath}/resources/css/grantt/theme/frappe-gantt.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL STYLE ================== -->
	<link href="${pageContext.request.contextPath}/resources/plugins/DataTables/media/css/dataTables.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/css/buttons.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Responsive/css/responsive.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/AutoFill/css/autoFill.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/ColReorder/css/colReorder.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/KeyTable/css/keyTable.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/RowReorder/css/rowReorder.bootstrap.min.css" rel="stylesheet" />
	<link href="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Select/css/select.bootstrap.min.css" rel="stylesheet" />
	<!-- ================== END PAGE LEVEL STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade page-sidebar-fixed page-header-fixed">
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
				<li class="breadcrumb-item active">Usuarios</li>
			</ol>
					<h2>Interactive Gantt Chart entirely made in SVG!</h2>
		<div id="gantt"></div>
		</div>
		<script>
		var tasks = [
			  {
			    id: 'Task 1',
			    name: 'Redesign website',
			    start: '2016-12-28',
			    end: '2016-12-31',
			    progress: 20,
			    dependencies: 'Task 2, Task 3',
			    custom_class: 'bar-milestone' // optional
			  },
			  
			]
			var gantt = new Gantt("#gantt", tasks);
	</script>
		<!-- end #content -->
		
		<!-- begin theme-panel -->
	
		<!-- end theme-panel -->
		
		<!-- begin scroll to top btn -->
		<a href="javascript:;" class="btn btn-icon btn-circle btn-success btn-scroll-to-top fade" data-click="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- end scroll to top btn -->
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!--[if lt IE 9]>
		<script src="${pageContext.request.contextPath}/resources/crossbrowserjs/html5shiv.js"></script>
		<script src="${pageContext.request.contextPath}/resources/crossbrowserjs/respond.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="${pageContext.request.contextPath}/resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/js-cookie/js.cookie.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/theme/default.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/apps.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/media/js/jquery.dataTables.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/media/js/dataTables.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/dataTables.buttons.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/buttons.bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/buttons.flash.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/jszip.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/pdfmake.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/vfs_fonts.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/buttons.html5.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Buttons/js/buttons.print.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/AutoFill/js/dataTables.autoFill.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/KeyTable/js/dataTables.keyTable.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/RowReorder/js/dataTables.rowReorder.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/demo/table-manage-combine.demo.min.js"></script>

		<script src="${pageContext.request.contextPath}/resources/js/grantt/frappe-gantt.min.js"></script>
	
	<!-- ================== END PAGE LEVEL JS ================== -->
	
	<script>
		$(document).ready(function() {
			App.init();
			TableManageCombine.init();
		});
	</script>
</body>
</html>
