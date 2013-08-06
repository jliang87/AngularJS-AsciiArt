angular.module('ascii').controller 'EntryEditController'
, ['$log', '$scope', '$location', '$resource', 'Entry', 'Selection'
, ($log, $scope, $location, $resource, Entry, Selection) ->
  
    $scope.entry = Selection.instance.text
    $scope.updateEntry = ->
      Selection.instance.text = $scope.entry
      Entry.update(Selection.instance)
      $location.path "/"
]




