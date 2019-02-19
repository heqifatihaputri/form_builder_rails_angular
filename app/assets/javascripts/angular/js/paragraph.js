var app = angular.module('formParagraph', ['ngResource']);

app.factory("Paragraph", function($resource) {
  return $resource('/api/v1/paragraphs/:id', { id: '@id'}, {
  	index: {method: 'GET'},
  	update: {method: 'PUT', respondType: 'json'}
  });
});

app.controller("ParagraphController", ['$scope', 'Paragraph', function($scope, Paragraph) {
	$scope.paragraphs = Paragraph.index()
	$scope.newParagraph = {}
	$scope.newParagraph.label_name = "Paragraph"
	$scope.newParagraph.required_field = false
	$scope.newParagraph.half_width = false
	$scope.newParagraph.limit_char = false
	$scope.newParagraph.input_height = '300px'

	$scope.addParagraph = function() {
		console.log($scope.newParagraph)
		paragraph = {}
		paragraph.label_name = $scope.newParagraph.label_name
		paragraph.required_field = $scope.newParagraph.required_field
		paragraph.half_width = $scope.newParagraph.half_width
		paragraph.limit_char = $scope.newParagraph.limit_char
		paragraph.input_height = $scope.newParagraph.input_height
		
		Paragraph.save({paragraph: paragraph})
		$scope.newParagraph = {}
	}

	$scope.deleteParagraph = function(index) {

		paragraph = $scope.paragraphs[index]
		Paragraph.delete(paragraph)
		$scope.paragraphs.splice(index, 1);
	}
}]);