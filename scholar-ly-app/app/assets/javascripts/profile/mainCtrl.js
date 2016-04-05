angular.module('scholarLy').controller('MainCtrl', [
'$scope',
'profile',
function($scope, profile){
  $scope.test = 'Hello world!';
  $scope.profile = profile.profile;

  $scope.addProfile = function(){
    if(!$scope.first_name || $scope.first_name === '') { return; }
    profile.create({
      first_name: $scope.first_name,
      last_name: $scope.last_name,
      type_student_grade_level: $scope.type_student_grade_level,
    });
    $scope.first_name = '';
    $scope.last_name = '';
    $scope.type_student_grade_level = '';
  };

}]);