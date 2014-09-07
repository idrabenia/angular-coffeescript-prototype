'use strict'

angular.module 'angularCoffeescriptApp.create', []


  .controller 'CreateCtrl', ($scope, Users, $state) ->
    init = ->
      $scope.user = {}

    $scope.createUser = (form) ->
      users = Users.users

      if $scope.user.firstName? and $scope.user.lastName?
        users.push($scope.user)
        $state.go 'main.list'
      else
        alert 'Could not create user. Please fill all input fields.'

    init()