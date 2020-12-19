(function (angular, $) {
  app.controller('ElectroluxSearchFormController',
    ["$rootScope", "$scope", "$controller", "$uibModal", "ngAppSettings",
      "CommonService",
      "MediaService",
      "RestRelatedAttributeDataPortalService",
      "RestAttributeSetDataElectroluxService", function ($rootScope, $scope, $controller, $uibModal, ngAppSettings, commonService, mediaService, navService, dataService) {
        $controller('AttributeSetFormController', { $scope: $scope }); //This works
        $scope.receipt = null;
        $scope.product = null;
        $scope.queries = {
          hoa_don: '',
          so_dien_thoai: ''
        };
        $scope.request = angular.copy(ngAppSettings.request);
        $scope.message = {
          title: '',
          type: '',
          content: ''
        }
        $scope.request.attributeSetName = 'register';
        $scope.request.filterType = "contain";
        $scope.search = async function () {
          var query = {};
          Object.keys($scope.queries).forEach((e) => {
            if ($scope.queries[e]) {
              query[e] = $scope.queries[e];
            }
          });
          $scope.request.query = JSON.stringify(query);
          $scope.isBusy = true;
          var resp = await dataService.search($scope.request);
          if (resp && resp.isSucceed) {
            $scope.data = resp.data;
            $scope.isBusy = false;
            $scope.$apply();
          } else {
            $scope.isBusy = false;
            $scope.$apply();
          }
        }
        
      }]);
}(angular, jQuery));
























