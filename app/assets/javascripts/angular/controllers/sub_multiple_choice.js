var app = angular.module('formSubMultipleChoice', ['ngResource']);

app.controller("SubMultipleChoiceController", ['$scope', 'SubMultipleChoice', function($scope, SubMultipleChoice) {
	$scope.sub_multiple_choices = SubMultipleChoice.index()

	$scope.addSubMultipleChoice = function() {
		console.log($scope.newSubMultipleChoice)
		sub_multiple_choice = {}
		sub_multiple_choice.choice_name = $scope.newSubMultipleChoice.choice_name
		sub_multiple_choice.price = $scope.newSubMultipleChoice.price
		
		SubMultipleChoice.save({sub_multiple_choice: sub_multiple_choice})
		$scope.newSubMultipleChoice = {}
	}

	$scope.deleteSubMultipleChoice = function(index) {

		sub_multiple_choice = $scope.sub_multiple_choices[index]
		SubMultipleChoice.delete(sub_multiple_choice)
		$scope.sub_multiple_choices.splice(index, 1);
	}
}]);