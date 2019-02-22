angular.module('formMultipleChoice').factory("MultipleChoice", function($resource) {
  return $resource('/api/v1/multiple_choices/:id', { id: '@id'}, {
  	index: {method: 'GET'},
  	update: {method: 'PUT', respondType: 'json'}
  });
});