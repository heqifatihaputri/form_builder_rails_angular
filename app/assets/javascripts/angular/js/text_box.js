var app = angular.module('formText', ['ngResource']);

app.factory("Text", function($resource) {
  return $resource('/api/v1/texts/:id', { id: '@id'}, {
  	index: {method: 'GET'},
  	update: {method: 'PUT', respondType: 'json'}
  });
});

app.controller("TextController", ['$scope', 'Text', function($scope, Text) {
	$scope.texts = Text.index()
	$scope.newText = {}
	$scope.newText.label_name = "Text"
	$scope.newText.required_field = false
	$scope.newText.half_width = false


	$scope.addText = function() {
		console.log($scope.newText)
		text = {}
		text.label_name = $scope.newText.label_name
		text.required_field = $scope.newText.required_field
		text.half_width = $scope.newText.half_width
		Text.save({text: text})
		$scope.newText = {}
	}

	$scope.deleteText = function(index) {

		text = $scope.texts[index]
		Text.delete(text)
		$scope.texts.splice(index, 1);
	}
}]);