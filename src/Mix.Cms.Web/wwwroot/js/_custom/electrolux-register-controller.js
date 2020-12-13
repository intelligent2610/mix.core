(function (angular, $) {
  app.controller('ElectroluxRegisterFormController',
    ["$rootScope", "$scope", "$controller", "$uibModal", "ngAppSettings",
      "CommonService",
      "MediaService",
      "RestRelatedAttributeDataPortalService",
      "RestAttributeSetDataElectroluxService", function ($rootScope, $scope, $controller, $uibModal, ngAppSettings, commonService, mediaService, navService, dataService) {
        $controller('AttributeSetFormController', { $scope: $scope }); //This works
        $scope.receipt = null;
        $scope.product = null;
        $scope.medias = [];
        $scope.admins = ['admin', 'admin1', 'admin3', 'admin4'];
        $scope.message = {
          title: '',
          type: '',
          content: ''
        }
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
          $scope.cityCode = 'NA';
          $scope.districtCode = 'NA';
          $scope.bankMethod = "Chuyển tiền qua ngân hàng";
          $scope.postMethod = "Chuyển tiền qua đường bưu điện";
          commonService.loadJArrayData("product_list.json").then((resp) => {
            $scope.products = resp.data;
          });
          commonService.loadJArrayData("city_list.json").then((resp) => {
            $scope.cities = resp.data;
          });
          commonService.loadJArrayData("district_list.json").then((resp) => {
            $scope.districts = resp.data;
          });
          commonService.loadJArrayData("ward_list.json").then((resp) => {
            $scope.wards = resp.data;
          });

          var getDefault = await dataService.initData($scope.formName);

          $scope.defaultData = getDefault.data;
          if ($scope.defaultData) {
            $scope.defaultData.attributeSetName = $scope.formName;
            $scope.defaultData.parentType = parentType || "Set";
            $scope.defaultData.parentId = parentId;
            $scope.formData = angular.copy($scope.defaultData);
            $scope.formData.obj.admin = $scope.admins[Math.floor(Math.random() * $scope.admins.length)];
          }

          $scope.$apply();
        };
        $scope.initNestedData = async function () {


          // var getDefaultReceipt = await dataService.initData('thong_tin_hoa_don');
          // var getDefaultProduct = await dataService.initData('thong_tin_san_pham');
          // if (getDefaultReceipt.isSucceed) {
          //   $scope.receipt = getDefaultReceipt.data;
          // }
          // var getDefaultMedia = await dataService.initData('media');
          // if (getDefaultMedia.isSucceed) {
          //   $scope.defaultMedia = getDefaultMedia.data;
          // }
          // if (getDefaultProduct.isSucceed) {
          //   $scope.product = getDefaultProduct.data;
          // }
          // $scope.$apply();
        }
        $scope.register = async function () {
          const isValid = await $scope.validate($scope.formData);
          if (isValid) {
            await $scope.submit($scope.formData);
          }
          // else {
          //   $scope.message.content = 'Thông tin không hợp lệ';
          //   $scope.message.errors = $scope.form.$error;
          //   $scope.$apply();
          //   $('#alertModal').modal('show');
          // }
        }
        $scope.selectProduct = function () {
          if ($scope.formData.obj.ma_san_pham) {
            const pr = $rootScope.findObjectByKey($scope.products, 'model', $scope.formData.obj.ma_san_pham);
            if (pr) {
              $scope.formData.obj.pnc = pr.pnc;
            }
          }
        }
        $scope.selectReceiptDate = function (data, $event) {
          alert('a');
          alert($event.target.value)
          // var currentElement = $event.target;
          // console.log(currentElement.value);                  
          // $scope.formData.obj.ngay_tren_hoa_don = currentElement.value;            

        }
        $scope.selectBankMethod = function (data, $event) {
          // var currentElement = $event.target;
          // console.log(currentElement.value);                  
          console.log($scope.bankMethod);
          $scope.formData.obj.phuong_thuc_nhan_qua = $scope.bankMethod;

        }
        $scope.selectPostMethod = function (data, $event) {
          // var currentElement = $event.target;
          // console.log(currentElement.value);         
          console.log($scope.postMethod);
          $scope.formData.obj.phuong_thuc_nhan_qua = $scope.postMethod;

        }
        // $scope.initDate = function () {
        //   // init datepicker
        //   var date;
        //   $('#receiptDate').datepicker({
        //     onSelect: function (t) {
        //       c.formValidatorInstance.validateSpecific($(this)), c.formValidatorInstance.validateRemaining();
        //       date = $(this).val();
        //       $('#receiptDate').val(date);
        //       alert(date);
        //     },
        //     dateFormat: 'dd/mm/yy',
        //     gotoCurrent: !1,
        //   });
        //   $scope.formData.obj.ngay_tren_hoa_don = date;
        // }
        $scope.selectCity = function () {
          if ($scope.formData.obj.thanh_pho) {
            const city = $rootScope.findObjectByKey($scope.cities, 'tpName', $scope.formData.obj.thanh_pho);
            if (city) {
              $scope.cityCode = city.tpNo;
              $scope.formData.obj.quan = '';
              $scope.formData.obj.phuong = '';
            }
          }
        }
        $scope.selectDistrict = function () {
          if ($scope.formData.obj.quan) {
            const district = $rootScope.findObjectByKey($scope.districts, 'qhName', $scope.formData.obj.quan);
            if (district) {
              $scope.districtCode = district.qhNo;
              $scope.formData.obj.phuong = '';
            }
          }
        }
        $scope.selectFiles = function (files, type) {
          angular.forEach(files, function (e, i) {
            $scope.openCroppie(e, type);
          })
        }

        $scope.uploadFile = function (file) {
          console.log(file);
        }
        $scope.openCroppie = function (file, type) {
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
              rto: null,
              autoSave: false
            },
          });

          modalInstance.result.then(
            function (result) {
              // let media = angular.copy($scope.defaultMedia);
              // media.obj.title = result.title;
              $scope.formData.obj[type] = result.fullPath;
              // arr.push(media);
            },
            function () { }
          );
        };
        $scope.randomCode = function () {
          var max = 99999;
          var length = 5;
          let val = Math.floor(Math.random() * Math.floor(max)).toString();
          for (var i = 0; i < (5 - val.length); i++) {
            val = `0${val}`;
          }
          return val;
        }
        $scope.validate = async function (data) {
          validateForm();
          return $scope.form.$valid;
        }
        $scope.selectDate = function (src, des) {
          $scope.formData.obj[des] = `${src.getDate()}/${src.getMonth()}/${src.getFullYear()}`;
        }
      }]);
}(angular, jQuery));





















