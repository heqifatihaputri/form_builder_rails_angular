var app = angular.module('formDropdown', ['ngResource']);

app.controller("DropdownController", ['$scope', 'Dropdown', function($scope, Dropdown) {
	$scope.dropdowns = Dropdown.index()
	$scope.newDropdown = {}
	$scope.newDropdown.label_name = "Dropdown"
	$scope.newDropdown.required_field = false
	$scope.newDropdown.half_width = false

	$scope.addDropdown = function() {
		console.log($scope.newDropdown)
		dropdown = {}
		dropdown.label_name = $scope.newDropdown.label_name
		dropdown.required_field = $scope.newDropdown.required_field
		dropdown.half_width = $scope.newDropdown.half_width
		
		Dropdown.save({dropdown: dropdown})
		$scope.newDropdown = {}
	}

	$scope.deleteDropdown = function(index) {

		dropdown = $scope.dropdowns[index]
		Dropdown.delete(dropdown)
		$scope.dropdowns.splice(index, 1);
	}
}]);