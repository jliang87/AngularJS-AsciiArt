# prevent scope problem arisen with $(document) in that e.stopPropagation() has no effect
$.fn.doClick = -> 
	$(this).click (e)->
		e.stopPropagation()
		$("#preview").slideDown()

$('html').click ->
	$("#preview").slideUp()

$(document).on 'keydown', "#input", (e)->
	$("#preview").slideDown()
