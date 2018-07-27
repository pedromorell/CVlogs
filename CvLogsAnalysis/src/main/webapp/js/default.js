$( document ).ready(function() {
	$( "select" ).click(function() {
		if ($( "select#ficheroInput" ).val() != "none" && $( "select#algoritmoInput" ).val() != "none") {
			$("input[type=submit]").removeAttr("disabled");
		} else {
			$("input[type=submit]").attr("disabled", "disabled");
		}
	})
});