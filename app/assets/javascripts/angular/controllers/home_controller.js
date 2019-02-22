var app = angular.module('formHome', ['ngResource']);

app.controller("HomeController", ['$scope', 'Home', function($scope, Home) {
	$scope.result = Home.show()
	// $scope.inputs = result.inputs
	// console.log('home/index', $scope.result.inputs)

		// angular.forEach($scope.inputs, function (value, index) {
		//   console.log($scope.inputs[index]);
		// });
}]);