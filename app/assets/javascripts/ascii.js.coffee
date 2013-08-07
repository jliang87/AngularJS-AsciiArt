angular.module('ascii').controller 'AsciiIndexController'
, ['$log', '$scope', '$location', '$resource', 'Entry', 'Selection' 
, ($log, $scope, $location, $resource, Entry, Selection) ->
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


	$scope.editEntry = (parentIndex, index) -> 
		Selection.instance = $scope.rows[parentIndex][index]
		$location.path "/entries/#{$scope.rows[parentIndex][index].id}/edit"

			
	$scope.deleteEntry = (parentIndex, index) -> 
		Entry.delete $scope.rows[parentIndex][index]
		$scope.rows[parentIndex].splice(index, 1)


	$scope.doRows = ->
		# $.get "/entries/", ((data) ->
		# 	items = []
		# 	angular.forEach data, (entry) ->
		# 		items.push(entry)
		# 	alert JSON.stringify items[1]["text"]
		# ), "json"
		# *** won't work due to not synchronous ***

		# $.ajax
		#     type: "GET"
		#     url: "/entries/"
		#     dataType: "json"
		#     async: false
		#     success: (data) ->
		#     	items= data

		items = Entry.query(->
			i = 0
			while i < items.length
				rows.push []  if i % 3 is 0
				rows[rows.length - 1].push items[i]
				i++
		) #json api by triggering the index action
]




