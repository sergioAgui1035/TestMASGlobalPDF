<!-- begin #sidebar -->
<div id="sidebar" class="sidebar">
	<!-- begin sidebar scrollbar -->
	<div data-scrollbar="true" data-height="100%"
		style="background-color: rgb(31, 40, 75)">
		<!-- begin sidebar user -->
		<ul class="nav">
			<li class="nav-profile" style="background-color: white;"><a>
					<div>

						<img style="width: 180px; height: 100px; margin-top: 3px;"
							src="${pageContext.request.contextPath}/resources/img/logo/logoIndex.png" />
					</div>
			</a></li>
			
		</ul>
		<!-- end sidebar user -->
		<!-- begin sidebar nav -->
		<ul class="nav" id="menuDynamic">
			<li class="nav-header">Navigation</li>
			<li><a href="index"> <b class="badge pull-right"></b> <i
					class="fa fa-th-large"></i> <span>Dashboard</span>
			</a></li>
			<li class="has-sub"><a href="javascript:;"> <span
					class="badge pull-right"></span> <i class="fa fa-cogs"></i> <span>Operations</span>
			</a>
				<ul class="sub-menu">
					<li><a href="employees">Employees</a></li>
				</ul></li>
			<!-- begin sidebar minify button -->

			<!-- end sidebar minify button -->
		</ul>
		<!-- end sidebar nav -->
	</div>
	<!-- end sidebar scrollbar -->
</div>
<div class="sidebar-bg"></div>
<!-- end #sidebar -->