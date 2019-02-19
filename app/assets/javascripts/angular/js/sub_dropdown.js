var app = angular.module('formSubDropdown', ['ngResource']);

app.factory("SubDropdown", function($resource) {
  return $resource('/api/v1/sub_dropdowns/:id', { id: '@id'}, {
  	index: {method: 'GET'},
  	update: {method: 'PUT', respondType: 'json'}
  });
});

app.controller("SubDropdownController", ['$scope', 'SubDropdown', function($scope, SubDropdown) {
	$scope.sub_dropdowns = SubDropdown.index()

	$scope.addSubDropdown = function() {
		console.log($scope.newSubDropdown)
		sub_dropdown = {}
		sub_dropdown.choice_name = $scope.newSubDropdown.choice_name
		sub_dropdown.price = $scope.newSubDropdown.price
		
		SubDropdown.save({sub_dropdown: sub_dropdown})
		$scope.newSubDropdown = {}
	}

	$scope.deleteSubDropdown = function(index) {

		sub_dropdown = $scope.sub_dropdowns[index]
		SubDropdown.delete(sub_dropdown)
		$scope.sub_dropdowns.splice(index, 1);
	}
}]);