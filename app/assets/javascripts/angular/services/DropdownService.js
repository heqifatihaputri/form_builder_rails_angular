angular.module('formDropdown').factory("Dropdown", function($resource) {
  return $resource('/api/v1/dropdowns/:id', { id: '@id'}, {
  	index: {method: 'GET'},
  	update: {method: 'PUT', respondType: 'json'}
  });
});