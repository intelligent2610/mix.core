"use strict";
app.factory("RestAttributeSetDataElectroluxService", [
  "BaseRestService",
  "CommonService",
  function (baseService, commonService) {
    var serviceFactory = angular.copy(baseService);
    serviceFactory.init("attribute-set-data/electrolux");

    var _saveAddictionalData = async function (objData) {
      var url = this.prefixUrl + "/save-addictional-data";
      var req = {
        method: "POST",
        url: url,
        data: JSON.stringify(objData),
      };
      return await commonService.getRestApiResult(req);
    };

    var _getAddictionalData = async function (data) {
      var url = this.prefixUrl + "/addictional-data";
      var queries = serviceFactory.parseQuery(data);
      if (queries) {
        url += "?";
        url = url.concat(queries);
      }
      var req = {
        method: "GET",
        url: url,
      };
      return await commonService.getRestApiResult(req);
    };

    var _initData = async function (attrSetName) {
      var url = this.prefixUrl + "/init/" + attrSetName;
      var req = {
        method: "GET",
        url: url,
      };
      return await commonService.getRestApiResult(req);
    };

    var _export = async function (objData) {
      var data = serviceFactory.parseQuery(objData);
      var url = this.prefixUrl;

      if (data) {
        url += "/export?";
        url = url.concat(data);
      }
      var req = {
        method: "GET",
        url: url,
      };
      return await commonService.getRestApiResult(req);
    };

    serviceFactory.initData = _initData;
    serviceFactory.getAddictionalData = _getAddictionalData;
    serviceFactory.saveAddictionalData = _saveAddictionalData;
    serviceFactory.export = _export;
    return serviceFactory;
  },
]);
