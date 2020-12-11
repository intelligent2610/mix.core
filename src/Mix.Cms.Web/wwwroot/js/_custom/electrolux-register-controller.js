(function (angular, $) {
  app.controller('ElectroluxRegisterController',
    ["$scope", "$controller", "$uibModal", "ngAppSettings",
      "MediaService",
      "RestRelatedAttributeDataPortalService",
      "RestAttributeSetDataElectroluxService", function ($scope, $controller, $uibModal, ngAppSettings, mediaService, navService, dataService) {
        $controller('AttributeSetFormController', { $scope: $scope }); //This works
        $scope.receipt = null;
        $scope.product = null;
        $scope.medias = [];
        $scope.alpha = /^[a-zA-Z\s\u0e00-\u0e7e\u4e00-\u9eff-\u007f\u0080-\u00ff\u0100-\u024f\u1e00-\u1eff\u0300-\u036f]+$/;
        $scope.alpha_numeric = /^[a-zA-Z0-9]+$/;
        $scope.alpha_numeric_with_minus = /^[a-zA-Z0-9\-]+$/;
        $scope.integer = /^[-+]?\d+$/;
        $scope.number = /^[-+]?\d*(?:[\.\,]\d+)?$/;
        $scope.email = /^[a-zA-Z\s\u0e00-\u0e7e\u4e00-\u9eff\u0000-\u007f\u0080-\u00ff\u0100-\u024f\u1e00-\u1eff\u0300-\u036f0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z\s\u0e00-\u0e7e\u4e00-\u9eff\u0000-\u007f\u0080-\u00ff\u0100-\u024f\u1e00-\u1eff\u0300-\u036f0-9](?:[a-zA-Z\s\u0e00-\u0e7e\u4e00-\u9eff\u0000-\u007f\u0080-\u00ff\u0100-\u024f\u1e00-\u1eff\u0300-\u036f0-9-]{0,61}[a-zA-Z\s\u0e00-\u0e7e\u4e00-\u9eff\u0000-\u007f\u0080-\u00ff\u0100-\u024f\u1e00-\u1eff\u0300-\u036f0-9])?(?:\.[a-zA-Z\s\u0e00-\u0e7e\u4e00-\u9eff\u0000-\u007f\u0080-\u00ff\u0100-\u024f\u1e00-\u1eff\u0300-\u036f0-9](?:[a-zA-Z\s\u0e00-\u0e7e\u4e00-\u9eff\u0000-\u007f\u0080-\u00ff\u0100-\u024f\u1e00-\u1eff\u0300-\u036f0-9-]{0,61}[a-zA-Z\s\u0e00-\u0e7e\u4e00-\u9eff\u0000-\u007f\u0080-\u00ff\u0100-\u024f\u1e00-\u1eff\u0300-\u036f0-9])?)+$/,
          $scope.url = /^(https?|ftp|file|ssh):\/\/(((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:)*@)?(((\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5])\.(\d|[1-9]\d|1\d\d|2[0-4]\d|25[0-5]))|((([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.?)(:\d*)?)(\/((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)+(\/(([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)*)*)?)?(\?((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|[\uE000-\uF8FF]|\/|\?)*)?(\#((([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(%[\da-f]{2})|[!\$&'\(\)\*\+,;=]|:|@)|\/|\?)*)?$/;
        $scope.domain = /^([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,8}$/;
        $scope.datetime = /^([0-2][0-9]{3})\-([0-1][0-9])\-([0-3][0-9])T([0-5][0-9])\:([0-5][0-9])\:([0-5][0-9])(Z|([\-\+]([0-1][0-9])\:00))$/;
        $scope.date = /^(0?[1-9]|[12][0-9]|3[01])[\/\-](0?[1-9]|1[012])[\/\-]\d{4}$/;
        $scope.init = async function (
          formName,
          parentId,
          parentType,
          validateHandler,
          loadingHandler,
          successHandler,
          failHandler
        ) {
          $scope.successMsg = "Thành công";
          $scope.validateHandler = validateHandler;
          $scope.loadingHandler = loadingHandler;
          $scope.successHandler = successHandler;
          $scope.failHandler = failHandler;
          $scope.formName = formName;
          $scope.navRequest.attributeSetName = formName;
          $scope.navRequest.parentType = parentType;
          $scope.navRequest.parentId = parentId;
          var getDefault = await dataService.initData($scope.formName);
          $scope.defaultData = getDefault.data;
          if ($scope.defaultData) {
            $scope.defaultData.attributeSetName = $scope.formName;
            $scope.defaultData.parentType = parentType || "Set";
            $scope.defaultData.parentId = parentId;
            $scope.formData = angular.copy($scope.defaultData);
          }

          $scope.$apply();
        };
        $scope.initNestedData = async function () {
          // var getDefaultReceipt = await dataService.initData('thong_tin_hoa_don');
          // var getDefaultProduct = await dataService.initData('thong_tin_san_pham');
          // if (getDefaultReceipt.isSucceed) {
          //   $scope.receipt = getDefaultReceipt.data;
          // }
          var getDefaultMedia = await dataService.initData('media');
          if (getDefaultMedia.isSucceed) {
            $scope.defaultMedia = getDefaultMedia.data;
          }
          // if (getDefaultProduct.isSucceed) {
          //   $scope.product = getDefaultProduct.data;
          // }
          $scope.$apply();
        }
        $scope.register = async function () {
          const isValid = await $scope.validate(formData);
          if (isValid) {
            await $scope.submit($scope.formData);
          }
        }

        $scope.selectFiles = function (files, arr) {
          angular.forEach(files, function (e, i) {
            $scope.openCroppie(e, arr);
          })
        }

        $scope.uploadFile = function (file) {
          console.log(file);
        }
        $scope.openCroppie = function (file, arr) {
          var modalInstance = $uibModal.open({
            animation: true,
            windowClass: "show",
            templateUrl: "/app/app-shared/components/modal-croppie/croppie.html",
            controller: "ModalCroppieController",
            controllerAs: "$ctrl",
            size: "lg",
            resolve: {
              mediaService: mediaService,
              file: function () {
                return file;
              },
              w: 800,
              h: 600,
              rto: null
            },
          });

          modalInstance.result.then(
            function (result) {
              let media = angular.copy($scope.defaultMedia);
              media.obj.title = result.title;
              media.obj.upload_file = result.fullPath;
              arr.push(media);
            },
            function () { }
          );
        };

        $scope.validate = async function (data) {
          return true;
        }
      }]);
}(angular, jQuery));






