<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Test MAS Global | Login</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	
	<!-- ================== BEGIN BASE CSS STYLE ================== -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
	<link href="resources/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
	<link href="resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="resources/plugins/font-awesome/css/all.min.css" rel="stylesheet" />
	<link href="resources/plugins/animate/animate.min.css" rel="stylesheet" />
	<link href="resources/css/default/style.min.css" rel="stylesheet" />
	<link href="resources/css/default/style-responsive.min.css" rel="stylesheet" />
	<link href="resources/css/default/theme/default.css" rel="stylesheet" id="theme" />
	<!-- ================== END BASE CSS STYLE ================== -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="resources/plugins/pace/pace.min.js"></script>
	<!-- ================== END BASE JS ================== -->
</head>
<body class="pace-top" style="background-color:white">
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade show"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin login-cover -->
	<div class="login-cover" style="background-color:white">
		<div class="login-cover-image" style="background-color:white" data-id="login-cover-image"></div>
		<div class="login-cover-bg" style="background-color:white"></div>
	</div>
	<!-- end login-cover -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
		<!-- begin login -->
		<div class="login login-v2" data-pageload-addclass="animated fadeIn">
			<!-- begin brand -->
			<div class="login-header">
				<div class="brand">  <b style="color: rgb(31, 40, 75);">Test MAS Global</b> 
					<small></small>
				</div>
				<div class="icon">
					<i class="fa fa-lock"></i>
				</div>
			</div>
			<!-- end brand -->
			<!-- begin login-content -->
			<div class="login-content" style="margin-top: 20px !important;">
			
				<form th:action="@{/login}" method="POST" class="margin-bottom-0">
					<div class="form-group m-b-20" style="color: rgb(31, 40, 75);">
						<input style="background-color: rgb(31, 40, 75)" type="text" name="username" class="form-control form-control-lg" placeholder="User" required />
					</div>
					<div class="form-group m-b-20"style="color: rgb(31, 40, 75);">
						<input style="background-color: rgb(31, 40, 75)" type="password" name="password" class="form-control form-control-lg" placeholder="Password" required />
					</div>
					
					</div>
					<div class="login-buttons">
						<button type="submit" class="btn btn-success btn-block btn-lg" style="background-color: rgb(31, 40, 75);border-color: rgb(31, 40, 75);">Ingresar</button>
					</div>
					
				</form>
			</div>
			<!-- end login-content -->
		</div>
		<!-- end login -->
		
		<!-- begin login-bg -->

		<!-- end theme-panel -->
	</div>
	<!-- end page container -->
	
	<!-- ================== BEGIN BASE JS ================== -->
	<script src="resources/plugins/jquery/jquery-3.3.1.min.js"></script>
	<script src="resources/plugins/jquery-ui/jquery-ui.min.js"></script>
	<script src="resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!--[if lt IE 9]>
		<script src="resources/crossbrowserjs/html5shiv.js"></script>
		<script src="resources/crossbrowserjs/respond.min.js"></script>
		<script src="resources/crossbrowserjs/excanvas.min.js"></script>
	<![endif]-->
	<script src="resources/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<script src="resources/plugins/js-cookie/js.cookie.js"></script>
	<script src="resources/js/theme/default.min.js"></script>
	<script src="resources/js/apps.min.js"></script>
	<!-- ================== END BASE JS ================== -->
	
	<!-- ================== BEGIN PAGE LEVEL JS ================== -->
	<script src="resources/js/demo/login-v2.demo.min.js"></script>
	<!-- ================== END PAGE LEVEL JS ================== -->

	<script>
		$(document).ready(function() {
			App.init();
			LoginV2.init();
		});
	</script>
</body>
</html>
