var app = angular.module('formHome', ['ngResource']);

app.factory("Home", function($resource) {
  return $resource('/api/v1/home/:id', { id: '@id' }, {
  	index: {method: 'GET'}
  });
});

app.controller("HomeController", ['$scope', 'Home', function($scope, Home) {
	$scope.result = Home.index()
	// $scope.inputs = result.inputs
	// console.log('home/index', $scope.result.inputs)

		// angular.forEach($scope.inputs, function (value, index) {
		//   console.log($scope.inputs[index]);
		// });
}]);
