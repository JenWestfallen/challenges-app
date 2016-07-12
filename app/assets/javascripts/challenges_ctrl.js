(function() {
  "use strict";

  angular.module("app").controller("challengesCtrl", function($scope, $http){
    $scope.setup = function(){
      $http.get("api/v1/challenges/json").then(function(response){
        $scope.test = response;
      };
  };


}());
