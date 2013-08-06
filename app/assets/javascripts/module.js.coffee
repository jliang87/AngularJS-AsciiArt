angular.module 'ascii.services', ['ngResource']
angular.module("ascii", ["ascii.services"]) # create a module and use ngResource as a dependency for the module so that angular-resource can be used
