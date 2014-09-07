'use strict'

angular.module 'angularCoffeescriptApp.list', []


  .controller 'ListCtrl', ($scope, Users, Modal) ->

    init = () ->
      $scope.users = Users.users

      for curUser in $scope.users
        curUser.name = "#{curUser.firstName} #{curUser.lastName}"

      $scope.$watch 'users', (usersList) -> Users.users = usersList

      console.log curUser.name for curUser in $scope.users

    $scope.deleteUser = (user) ->
      Modal.confirm.delete(-> $scope.users = $scope.users.filter (i) -> i isnt user)(user.name)

    init()