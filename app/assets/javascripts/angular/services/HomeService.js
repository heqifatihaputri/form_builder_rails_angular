angular.module('formHome').factory("Home", function($resource) {
  return $resource('/api/v1/home/:id', { id: '@id' }, {
  	index: {method: 'GET'}
  });
});