angular.module('ascii').controller 'EntryEditController'
, ['$log', '$scope', '$location', '$resource', 'Entry', 'Selection'
, ($log, $scope, $location, $resource, Entry, Selection) ->
  
  	$scope.entry = Selection.instance

	$scope.updateEntry = -> 
    	Entry.update(Selection.instance)
    	$location.path "/"
]




