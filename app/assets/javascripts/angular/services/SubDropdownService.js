angular.module('formSubDropdown').factory("SubDropdown", function($resource) {
  return $resource('/api/v1/sub_dropdowns/:id', { id: '@id'}, {
  	index: {method: 'GET'},
  	update: {method: 'PUT', respondType: 'json'}
  });
});