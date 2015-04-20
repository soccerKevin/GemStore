(function() {
  var app = angular.module('gemStore', ['templates', 'store-directives']);

  app.controller('StoreController', ['$http', '$scope', function($http, $scope){
    $scope.products = [];

    $http.get('/jewels')
      .success(function(data){
        $scope.products = data;
      });
  }]);

  app.controller('ReviewController', function() {
    this.review = {};

    this.addReview = function(product) {
      product.reviews.push(this.review);

      this.review = {};
    };
  });
})();
