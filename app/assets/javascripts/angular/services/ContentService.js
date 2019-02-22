angular.module('formContent').factory("Content", function($resource) {
  return $resource('/api/v1/contents/:id', { id: '@id'}, {
  	index: {method: 'GET'},
  	update: {method: 'PUT', respondType: 'json'}
  });
});
