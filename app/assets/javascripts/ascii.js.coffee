app = angular.module("ascii", ["ngResource"]) # create a module and use ngResource as a dependency for the module so that angular-resource can be used

app.factory "Entry", ($resource) ->
  $resource("/entries/:id", {id: "@id"}) # returns a object that allow us to communicate with the REST api; the first argument is the url to the api, the second argument is for the default parameters, the third argument allows actions to be called on the api  
  # @id is the current object's id

@AsciiCtrl = ($scope, Entry) ->
	# $scope.rows = Entry.query() #json api by triggering the index action

	items =[]
	rows = []
	$scope.rows = rows
	
	$scope.addEntry = ->
		if $scope.newEntry.text
			entry = Entry.save($scope.newEntry) # trigger rails create action
			$scope.newEntry = {}
			if $scope.rows.length > 0
				if $scope.rows[$scope.rows.length-1].length == 3
					$scope.rows.push []
					$scope.rows[$scope.rows.length-1].push entry
				else
					$scope.rows[$scope.rows.length-1].push entry
			else
				$scope.rows.push []
				$scope.rows[0].push entry	

			
	$scope.deleteEntry = (parentIndex, index) -> 
		Entry.delete($scope.rows[parentIndex][index], ->
			$scope.rows[parentIndex].splice(index, 1))


	$scope.doRows = ->
		# $.get "/entries/", ((data) ->
		# 	items = []
		# 	angular.forEach data, (entry) ->
		# 		items.push(entry)
		# 	alert JSON.stringify items[1]["text"]
		# ), "json"
		# *** won't work due to not synchronous ***

		$.ajax
		    type: "GET"
		    url: "/entries/"
		    dataType: "json"
		    async: false
		    success: (data) ->
		    	items= data

		i = 0
		while i < items.length
			rows.push []  if i % 3 is 0
			rows[rows.length - 1].push items[i]
			i++




# app.run -> 
# 	$.get "/entries/", ((data) ->
# 		alert data
# 	), "json"
# *** run before controller, so no $scope ***		








