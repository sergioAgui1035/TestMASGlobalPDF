<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
	<meta charset="utf-8" />
	<title>Smarti Semaforos | Login</title>
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
				<div class="brand">  <b style="color: rgb(31, 40, 75);">Smarti Semaforos</b"> 
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
						<input style="background-color: rgb(31, 40, 75)" type="text" name="userlogin" class="form-control form-control-lg" placeholder="User" required />
					</div>
					<div class="form-group m-b-20"style="color: rgb(31, 40, 75);">
						<input style="background-color: rgb(31, 40, 75)" type="password" name="password" class="form-control form-control-lg" placeholder="Password" required />
					</div>
					<div class="checkbox checkbox-css m-b-20">
						<input type="checkbox" id="remember_checkbox" /> 
						<label for="remember_checkbox"style="color: rgb(31, 40, 75);">
							Remember Me
						</label>
					</div>
					<div class="login-buttons">
						<button type="submit" class="btn btn-success btn-block btn-lg" style="background-color: rgb(31, 40, 75);border-color: rgb(31, 40, 75);">Sign me in</button>
					</div>
					<div class="m-t-20"style="color: rgb(31, 40, 75);">
						Not a member yet? Click <a href="javascript:;"style="color: rgb(31, 40, 75);">here</a> to register.
					</div>
				</form>
			</div>
			<!-- end login-content -->
		</div>
		<!-- end login -->
		
		<!-- begin login-bg -->
<!-- 		<ul class="login-bg-list clearfix"> -->
<!-- 			<li class="active"><a href="javascript:;" data-click="change-bg" data-img="resources/img/login-bg/login-bg-17.jpg" style="background-image: url(resources/img/login-bg/login-bg-17.jpg)"></a></li> -->
<!-- 			<li><a href="javascript:;" data-click="change-bg" data-img="resources/img/login-bg/login-bg-16.jpg" style="background-image: url(resources/img/login-bg/login-bg-16.jpg)"></a></li> -->
<!-- 			<li><a href="javascript:;" data-click="change-bg" data-img="resources/img/login-bg/login-bg-15.jpg" style="background-image: url(resources/img/login-bg/login-bg-15.jpg)"></a></li> -->
<!-- 			<li><a href="javascript:;" data-click="change-bg" data-img="resources/img/login-bg/login-bg-14.jpg" style="background-image: url(resources/img/login-bg/login-bg-14.jpg)"></a></li> -->
<!-- 			<li><a href="javascript:;" data-click="change-bg" data-img="resources/img/login-bg/login-bg-13.jpg" style="background-image: url(resources/img/login-bg/login-bg-13.jpg)"></a></li> -->
<!-- 			<li><a href="javascript:;" data-click="change-bg" data-img="resources/img/login-bg/login-bg-12.jpg" style="background-image: url(resources/img/login-bg/login-bg-12.jpg)"></a></li> -->
<!-- 		</ul> -->
		<!-- end login-bg -->
		
		<!-- begin theme-panel -->
<!-- 		<div class="theme-panel theme-panel-lg"> -->
<!-- 			<a href="javascript:;" data-click="theme-panel-expand" class="theme-collapse-btn"><i class="fa fa-cog"></i></a> -->
<!-- 			<div class="theme-panel-content"> -->
<!-- 				<h5 class="m-t-0">Color Theme</h5> -->
<!-- 				<ul class="theme-list clearfix"> -->
<!-- 					<li><a href="javascript:;" class="bg-red" data-theme="red" data-theme-file="resources/css/default/theme/red.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Red">&nbsp;</a></li> -->
<!-- 					<li><a href="javascript:;" class="bg-pink" data-theme="pink" data-theme-file="resources/css/default/theme/pink.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Pink">&nbsp;</a></li> -->
<!-- 					<li><a href="javascript:;" class="bg-orange" data-theme="orange" data-theme-file="resources/css/default/theme/orange.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Orange">&nbsp;</a></li> -->
<!-- 					<li><a href="javascript:;" class="bg-yellow" data-theme="yellow" data-theme-file="resources/css/default/theme/yellow.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Yellow">&nbsp;</a></li> -->
<!-- 					<li><a href="javascript:;" class="bg-lime" data-theme="lime" data-theme-file="resources/css/default/theme/lime.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Lime">&nbsp;</a></li> -->
<!-- 					<li><a href="javascript:;" class="bg-green" data-theme="green" data-theme-file="resources/css/default/theme/green.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Green">&nbsp;</a></li> -->
<!-- 					<li><a href="javascript:;" class="bg-teal" data-theme="default" data-theme-file="resources/css/default/theme/default.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Default">&nbsp;</a></li> -->
<!-- 					<li><a href="javascript:;" class="bg-aqua" data-theme="aqua" data-theme-file="resources/css/default/theme/aqua.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Aqua">&nbsp;</a></li> -->
<!-- 					<li><a href="javascript:;" class="bg-blue" data-theme="blue" data-theme-file="resources/css/default/theme/blue.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Blue">&nbsp;</a></li> -->
<!-- 					<li><a href="javascript:;" class="bg-purple" data-theme="purple" data-theme-file="resources/css/default/theme/purple.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Purple">&nbsp;</a></li> -->
<!-- 					<li><a href="javascript:;" class="bg-indigo" data-theme="indigo" data-theme-file="resources/css/default/theme/indigo.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Indigo">&nbsp;</a></li> -->
<!-- 					<li><a href="javascript:;" class="bg-black" data-theme="black" data-theme-file="resources/css/default/theme/black.css" data-click="theme-selector" data-toggle="tooltip" data-trigger="hover" data-container="body" data-title="Black">&nbsp;</a></li> -->
<!-- 				</ul> -->
<!-- 				<div class="divider"></div> -->
<!-- 				<div class="row m-t-10"> -->
<!-- 					<div class="col-md-6 control-label text-inverse f-w-600">Header Styling</div> -->
<!-- 					<div class="col-md-6"> -->
<!-- 						<select name="header-styling" class="form-control form-control-sm"> -->
<!-- 							<option value="1">default</option> -->
<!-- 							<option value="2">inverse</option> -->
<!-- 						</select> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="row m-t-10"> -->
<!-- 					<div class="col-md-6 control-label text-inverse f-w-600">Header</div> -->
<!-- 					<div class="col-md-6"> -->
<!-- 						<select name="header-fixed" class="form-control form-control-sm"> -->
<!-- 							<option value="1">fixed</option> -->
<!-- 							<option value="2">default</option> -->
<!-- 						</select> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="row m-t-10"> -->
<!-- 					<div class="col-md-6 control-label text-inverse f-w-600">Sidebar Styling</div> -->
<!-- 					<div class="col-md-6"> -->
<!-- 						<select name="sidebar-styling" class="form-control form-control-sm"> -->
<!-- 							<option value="1">default</option> -->
<!-- 							<option value="2">grid</option> -->
<!-- 						</select> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="row m-t-10"> -->
<!-- 					<div class="col-md-6 control-label text-inverse f-w-600">Sidebar</div> -->
<!-- 					<div class="col-md-6"> -->
<!-- 						<select name="sidebar-fixed" class="form-control form-control-sm"> -->
<!-- 							<option value="1">fixed</option> -->
<!-- 							<option value="2">default</option> -->
<!-- 						</select> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="row m-t-10"> -->
<!-- 					<div class="col-md-6 control-label text-inverse f-w-600">Sidebar Gradient</div> -->
<!-- 					<div class="col-md-6"> -->
<!-- 						<select name="content-gradient" class="form-control form-control-sm"> -->
<!-- 							<option value="1">disabled</option> -->
<!-- 							<option value="2">enabled</option> -->
<!-- 						</select> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="row m-t-10"> -->
<!-- 					<div class="col-md-6 control-label text-inverse f-w-600">Content Styling</div> -->
<!-- 					<div class="col-md-6"> -->
<!-- 						<select name="content-styling" class="form-control form-control-sm"> -->
<!-- 							<option value="1">default</option> -->
<!-- 							<option value="2">black</option> -->
<!-- 						</select> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="row m-t-10"> -->
<!-- 					<div class="col-md-6 control-label text-inverse f-w-600">Direction</div> -->
<!-- 					<div class="col-md-6"> -->
<!-- 						<select name="direction" class="form-control form-control-sm"> -->
<!-- 							<option value="1">LTR</option> -->
<!-- 							<option value="2">RTL</option> -->
<!-- 						</select> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="divider"></div> -->
<!-- 				<h5>THEME VERSION</h5> -->
<!-- 				<div class="theme-version"> -->
<!-- 					<a href="../template_html/index_v2.html" class="active"> -->
<!-- 						<span style="background-image: url(resources/img/theme/default.jpg);"></span> -->
<!-- 					</a> -->
<!-- 					<a href="../template_transparent/index_v2.html"> -->
<!-- 						<span style="background-image: url(resources/img/theme/transparent.jpg);"></span> -->
<!-- 					</a> -->
<!-- 				</div> -->
<!-- 				<div class="theme-version"> -->
<!-- 					<a href="../template_apple/index_v2.html"> -->
<!-- 						<span style="background-image: url(resources/img/theme/apple.jpg);"></span> -->
<!-- 					</a> -->
<!-- 					<a href="../template_material/index_v2.html"> -->
<!-- 						<span style="background-image: url(resources/img/theme/material.jpg);"></span> -->
<!-- 					</a> -->
<!-- 				</div> -->
<!-- 				<div class="theme-version"> -->
<!-- 					<a href="../template_facebook/index_v2.html"> -->
<!-- 						<span style="background-image: url(resources/img/theme/facebook.jpg);"></span> -->
<!-- 					</a> -->
<!-- 				</div> -->
<!-- 				<div class="divider"></div> -->
<!-- 				<div class="row m-t-10"> -->
<!-- 					<div class="col-md-12"> -->
<!-- 						<a href="javascript:;" class="btn btn-inverse btn-block btn-rounded" data-click="reset-local-storage"><b>Reset Local Storage</b></a> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
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
