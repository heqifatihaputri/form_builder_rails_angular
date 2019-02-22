var app = angular.module('formMultipleChoice', ['ngResource']);

app.controller("MultipleChoiceController", ['$scope', 'MultipleChoice', function($scope, MultipleChoice) {
	$scope.multiple_choices = MultipleChoice.index()
	$scope.newMultipleChoice = {}
	$scope.newMultipleChoice.label_name = "Multiple Choice"
	$scope.newMultipleChoice.required_field = false
	$scope.newMultipleChoice.half_width = false

	$scope.addMultipleChoice = function() {
		console.log($scope.newMultipleChoice)
		multiple_choice = {}
		multiple_choice.label_name = $scope.newMultipleChoice.label_name
		multiple_choice.required_field = $scope.newMultipleChoice.required_field
		multiple_choice.half_width = $scope.newMultipleChoice.half_width
		
		MultipleChoice.save({multiple_choice: multiple_choice})
		$scope.newMultipleChoice = {}
	}

	$scope.deleteMultipleChoice = function(index) {

		multiple_choice = $scope.multiple_choices[index]
		MultipleChoice.delete(multiple_choice)
		$scope.multiple_choices.splice(index, 1);
	}
}]);