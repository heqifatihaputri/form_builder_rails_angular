angular.module('formDateTime').factory("DateTime", function($resource) {
	return $resource('/api/v1/datetimes/:id', { id: '@id' }, {
		index: {method: 'GET'},
		update: {method: 'PUT', respondType: 'json'}
	});
});