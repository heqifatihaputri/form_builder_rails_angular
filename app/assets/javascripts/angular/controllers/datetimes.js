var app = angular.module('formDateTime', ['ngResource']);

app.controller("DateTimeController", ['$scope', 'DateTime', function($scope, DateTime) {
	$scope.datetimes = DateTime.index()
	$scope.newDateTime = {}
	$scope.newDateTime.label_name = "Date and Time"
	$scope.newDateTime.required_field = false
	$scope.newDateTime.half_width = false

	$scope.addDateTime = function() {
		console.log($scope.newDateTime)
		datetime = {}
		datetime.label_name = $scope.newDateTime.label_name
		datetime.required_field = $scope.newDateTime.required_field
		datetime.half_width = $scope.newDateTime.half_width

		DateTime.save({datetime: datetime})
		$scope.newDateTime = {}
	}

	$scope.deleteDateTime = function(index) {

		datetime = $scope.datetimes[index]
		DateTime.delete(datetime)
		$scope.datetimes.splice(index, 1);
	}
}]);