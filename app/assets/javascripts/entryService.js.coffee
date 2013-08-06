angular.module('ascii.services').factory 'Entry', ['$log', '$resource', ($log, $resource) ->
  # @id is the current object's ids
	$resource("/entries/:id", {id: "@id"}, {update: {method: "PUT"}}) # returns a object that allow us to communicate with the REST api; the first argument is the url to the api, the second argument is for the default parameters, the third argument allows actions to be called on the api  
]