var fetch = angular.module('myapp', []);

fetch.controller('homeCtrl', ['$scope', '$http', function ($scope, $http) {
 $http({
  method: 'get',
  url: 'data.php'
 }).then(function successCallback(response) {
  $scope.house = response.data;
 });


}]);
