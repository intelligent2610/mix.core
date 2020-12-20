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
          cmnd: '',
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
          
          $scope.submitted = true;
          // alert($scope.queries.so_dien_thoai !== '')
          if ($scope.queries.so_dien_thoai !== '' && $scope.queries.hoa_don !== ''){
            Object.keys($scope.queries).forEach((e) => {
              if ($scope.queries[e]) {
                query[e] = $scope.queries[e];
              }
            });
            $scope.request.query = JSON.stringify(query);
            $scope.isBusy = true;
            var resp = await dataService.getList($scope.request);
            if (resp && resp.isSucceed) {
              $scope.data = resp.data.items;
              $scope.isBusy = false;
              $scope.$apply();
            } else {
              $scope.isBusy = false;
              $scope.$apply();
            }
          }
        }
        
      }]);
}(angular, jQuery));




























