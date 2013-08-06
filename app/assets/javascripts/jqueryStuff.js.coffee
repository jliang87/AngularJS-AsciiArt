#simple jQuery effect instead of ngAnimate for it is only available in AngularJS 1.1.5, which is unstable and the 
#$scope.rows[parentIndex].splice(index, 1)) in $scope.deleteEntry doesn't work in 1.1.5
	$(document).on 'click', "#input", (e)->
		e.stopPropagation()
		$("#preview").slideDown()

	$('html').click ->
		$("#preview").slideUp()

	$(document).on 'keydown', "#input", (e)->
		$("#preview").slideDown()