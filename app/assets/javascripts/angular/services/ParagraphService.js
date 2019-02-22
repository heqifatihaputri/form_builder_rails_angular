angular.module('formParagraph').factory("Paragraph", function($resource) {
  return $resource('/api/v1/paragraphs/:id', { id: '@id'}, {
  	index: {method: 'GET'},
  	update: {method: 'PUT', respondType: 'json'}
  });
});