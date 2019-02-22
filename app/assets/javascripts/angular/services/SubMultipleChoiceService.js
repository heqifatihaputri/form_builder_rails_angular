angular.module('formSubMultipleChoice').factory("SubMultipleChoice", function($resource) {
  return $resource('/api/v1/sub_multiple_choices/:id', { id: '@id'}, {
  	index: {method: 'GET'},
  	update: {method: 'PUT', respondType: 'json'}
  });
});