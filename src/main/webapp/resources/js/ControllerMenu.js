$(document).ready(function(){
	getMenu();
});



function getMenu() {
	$.ajax({
	       url : "getMenu",
	       type : 'POST',
	       async: false,
	       contentType: false, // send as JSON
	       headers: {'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8'},
	       success : function(data, textStatus, jqXHR) {
	    	   crearMenu(data);
	    	  
	    	   	    	   
	       },
	       error: function(jqXHR, textStatus, errorMessage) {
	    	   alert("Error"); // Optional	    	  
	       }
	})
}
function crearMenu(arrMenu){
	var html1 = "<li class='nav-header' >Navegaci&oacuten</li>"
		+"<li>"
			+"<a href='index.html'>"
				+"<b class='badge pull-right'></b>"
				+"<i class='fa fa-th-large'></i>"
				+"<span>Dashboard</span>"
			+"</a>	"					
		+"</li>";
	var html="";
	for(var i=0;i<arrMenu.length;i++)
		{
		html += "<li class='has-sub'>"
		      +  "<a  href='javascript:;'><span class='badge pull-right'></span><i class='fa fa-cogs'></i><span>"+ arrMenu[i].nombre +"</span></a>"
		+" <ul class='sub-menu'> ";
		 for(var s=0;s<arrMenu[i].arrSubmenu.length;s++)
			 {
			 
				 html +=  "	<li><a href='"+arrMenu[i].arrSubmenu[s].vista+"'>"+arrMenu[i].arrSubmenu[s].nombre+"</a></li>";
				
			 }
		 html +=" </ul> </li>";
		}
	html1+=html
	$("#menuDynamic").html(html1)
	}