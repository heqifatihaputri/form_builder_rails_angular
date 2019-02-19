var app = angular.module('formEmail', ['ngResource']);

app.factory("Email", function($resource) {
	return $resource('/api/v1/emails/:id', { id: '@id' }, {
		index: {method: 'GET'},
		update: {method: 'PUT', respondType: 'json'}
	});
});

app.controller("EmailController", ['$scope', 'Email', function($scope, Email) {
	$scope.emails = Email.index()
	$scope.newEmail = {}
	$scope.newEmail.label_name = "Email"
	$scope.newEmail.required_field = false
	$scope.newEmail.half_width = false

	$scope.addEmail = function() {
		email = {}
		email.label_name = $scope.newEmail.label_name
		email.required_field = $scope.newEmail.required_field
		email.half_width = $scope.newEmail.half_width

		Email.save({email: email})
		$scope.newEmail = {}
	}

	$scope.deleteEmail = function(index) {

		email = $scope.emails[index]
		Email.delete(email)
		$scope.emails.splice(index, 1);
	}
}]);