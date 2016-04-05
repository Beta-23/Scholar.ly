angular.module('scholarLy', ['ui.router', 'templates'])
.config([
'$stateProvider',
'$urlRouterProvider',
function($stateProvider, $urlRouterProvider) {

  $stateProvider
    .state('profile', {
      url: '/profile',
      templateUrl: 'profile/_home.html',
      controller: 'MainCtrl',
      resolve: {
        profilePromise: ['profile', function(profile){
          return profile.getAll();
        }]
      }
    })
    .state('profile', {
      url: '/profile/{id}',
      templateUrl: 'profile/_profile.html',
      controller: 'ProfileCtrl',
      resolve: {
        post: ['$stateParams', 'profile', function($stateParams, profile) {
          return profile.get($stateParams.id);
        }]
      }
  })

.state('login', {
      url: '/login',
      templateUrl: 'auth/_login.html',
      controller: 'AuthCtrl',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function (){
          $state.go('profile');
        });
      }]

  })
    .state('register', {
      url: '/register',
      templateUrl: 'auth/_register.html',
      controller: 'AuthCtrl',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function (){
          $state.go('profile');
        });
      }]
    });

  $urlRouterProvider.otherwise('profile');
}]);




