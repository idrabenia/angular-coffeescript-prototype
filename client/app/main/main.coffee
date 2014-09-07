'use strict'

angular.module 'angularCoffeescriptApp'
.config ($stateProvider) ->

  $stateProvider

  .state 'main',
    templateUrl: 'app/main/main.html'

  .state 'main.create',
    url: '/create'
    parent: 'main'
    views:
      'rightMenu@main':
        templateUrl: 'app/main/right-menu/right-menu.html'

      'content@main':
        templateUrl: 'app/main/create/create.html'
        controller: 'CreateCtrl'

  .state 'main.list',
    url: '/list'
    parent: 'main'
    views:
      'rightMenu@main':
        templateUrl: 'app/main/right-menu/right-menu.html'

      'content@main':
        templateUrl: 'app/main/list/list.html'
        controller: 'ListCtrl'

.factory 'Users', () ->
    users: []