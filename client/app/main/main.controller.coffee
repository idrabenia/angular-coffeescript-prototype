'use strict'

angular.module 'angularCoffeescriptApp'
  .controller 'MainCtrl', ($scope, $http) ->
    $scope.awesomeThings = []

    $http.get('/api/things').success (awesomeThings) ->
      $scope.awesomeThings = awesomeThings
    

