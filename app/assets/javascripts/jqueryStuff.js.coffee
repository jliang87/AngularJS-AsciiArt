$(document).on 'click', "#input", (e)->
	e.stopPropagation()
	$("#preview").slideDown()

$('html').click ->
	$("#preview").slideUp()

$(document).on 'keydown', "#input", (e)->
	$("#preview").slideDown()