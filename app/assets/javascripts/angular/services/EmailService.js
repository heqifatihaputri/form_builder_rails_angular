angular.module('formEmail').factory("Email", function($resource) {
	return $resource('/api/v1/emails/:id', { id: '@id' }, {
		index: {method: 'GET'},
		update: {method: 'PUT', respondType: 'json'}
	});
});