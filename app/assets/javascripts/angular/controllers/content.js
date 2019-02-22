var app = angular.module('formContent', ['ngResource']);

app.controller("ContentController", ['$scope', 'Content', function($scope, Content) {
	$scope.contents = Content.index()
	$scope.newContent = {}
	$scope.newContent.title = "Title"
	$scope.newContent.description = "Description"
	$scope.newContent.button_text = "Add Contact"


	$scope.addContent = function() {
		console.log($scope.newContent)
		content = {}
		content.title = $scope.newContent.title
		content.description = $scope.newContent.description
		content.button_text = $scope.newContent.button_text
		Content.save({content: content})
		$scope.newContent = {}
	}

	$scope.deleteContent = function(index) {

		content = $scope.contents[index]
		Content.delete(content)
		$scope.contents.splice(index, 1);
	}
}]);