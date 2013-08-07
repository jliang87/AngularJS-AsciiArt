angular.module('ascii').controller 'EntryEditController'
, ['$log', '$scope', '$http', '$location', '$resource', 'Entry', 'Selection'
, ($log, $scope, $http, $location, $resource, Entry, Selection) ->
  
    $scope.entry = Selection.instance.text
    $scope.updateEntry = ->
      Selection.instance.text = $scope.entry
      # Entry.update(Selection.instance)
      # $location.path "/"
      # $http.put("/entries/#{Selection.instance.id}",
      #   Selection.instance
      #   # success
      #  ).then ((response) ->
      #    alert "sadsa"
      #    $location.path "/"
  	 
  	   #  # failure
  	   #  ), (error) ->
      #  		alert "sad"
      Entry.update(
        {}
      , Selection.instance
        # Success
      , (response) ->
        $location.path "/"
        # Error
      , (response) ->
        alert "sad"
      )
]




