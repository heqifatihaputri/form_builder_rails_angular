var app = angular.module('formText').factory("Text", function($resource) {
  return $resource('/api/v1/texts/:id', { id: '@id'}, {
  	index: {method: 'GET'},
  	update: {method: 'PUT', respondType: 'json'}
  });
});