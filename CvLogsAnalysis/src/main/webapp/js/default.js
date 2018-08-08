$( document ).ready(function() {
	
	$( "select" ).click(function() {
		if ($( "select#xInput" ).val() != "none" && $( "select#yInput" ).val() != "none" && $( "select#colourInput" ).val() != "none") {
			$("input[type=submit]").removeAttr("disabled");
		} else {
			$("input[type=submit]").attr("disabled", "disabled");
		}
		
		if ($( "select#algoritmoInput" ).val() == "clustering") {
			$(".parametros-total").removeAttr("hidden");
		} else {
			$(".parametros-total").attr("hidden", "hidden");
		}
		
	})
});