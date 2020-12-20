using Electrolux.Api.Domain;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Mix.Cms.Lib;
using Mix.Cms.Lib.Controllers;
using Mix.Cms.Lib.Models.Cms;
using Mix.Cms.Lib.ViewModels.MixAttributeSetDatas;
using Mix.Domain.Core.ViewModels;
using Mix.Services;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Electrolux.Api.Controllers
{
    [Route("api/v1/rest/{culture}/attribute-set-data/electrolux")]
    public class AttributeSetDataPortalController :
         BaseRestApiController<MixCmsContext, MixAttributeSetData, ElectroluxRegisterViewModel, ElectroluxRegisterViewModel, ElectroluxRegisterViewModel>
    {
        // GET: api/v1/rest/{culture}/attribute-set-data
        [HttpGet]
        public override async Task<ActionResult<PaginationModel<ElectroluxRegisterViewModel>>> Get()
        {
            var getData = await Helper.FilterByKeywordAsync<ElectroluxRegisterViewModel>(Request, _lang);
            if (getData.IsSucceed)
            {
                return Ok(getData.Data);
            }
            else
            {
                return BadRequest(getData.Errors);
            }
        }

        [HttpPost]
        public override Task<ActionResult<MixAttributeSetData>> Create([FromBody] ElectroluxRegisterViewModel data)
        {
            data.SetProperty("ip_address", Request.Headers["X-Forwarded-For"]);
            return base.Create(data);
        }

        [HttpGet("search")]
        public async Task<ActionResult<List<ElectroluxRegisterViewModel>>> Search()
        {
            var queries = JObject.Parse(Request.Query["query"]);
            string phone = queries.Value<string>("so_dien_thoai");
            string receipt = queries.Value<string>("hoa_don");

            if (string.IsNullOrEmpty(phone) || string.IsNullOrEmpty(receipt))
            {
                return BadRequest();
            }
            var getData = await Helper.FilterByKeywordAsync<ElectroluxRegisterViewModel>(Request, _lang);
            if (getData.IsSucceed)
            {
                //var result = new List<ElectroluxRegisterViewModel>();
                //foreach (var item in getData.Data.Items)
                //{
                //    var dt = item.Obj.Value<string>("so_dien_thoai");
                //    var hd = item.Obj.Value<string>("hoa_don");
                //    if (dt.IndexOf(phone) == dt.Length-5 && hd == receipt)srtxfdvx
                //    {
                //        result.Add(item);
                //    }
                //}
                return Ok(getData.Data.Items);
            }
            else
            {
                return BadRequest(getData.Errors);
            }
        }

        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [HttpPost("save-values/{dataId}")]
        public async Task<ActionResult> SaveValue([FromRoute] string dataId, [FromBody]JObject obj)
        {
            var result = await ElectroluxHelper.SaveValues(dataId, obj, _lang);
            if (result)
            {
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }

        
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [HttpPost("send-sms")]
        public async Task<ActionResult> SendSMS([FromBody] JObject data)
        {
            var result = await ElectroluxHelper.SendMessage(data.Value<string>("status"), data.Value<string>("so_dien_thoai"));
            if (!string.IsNullOrEmpty(result))
            {
                var obj = new JObject()
                {
                    new JProperty("sms_status", result)
                };
                await ElectroluxHelper.SaveValues(data.Value<string>("id"), obj, _lang);
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }
        
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [HttpGet("send-sms-by-status/{status}")]
        public async Task<ActionResult> SendSMS([FromRoute] string status)
        {
            var result = await ElectroluxHelper.SendMessageByStatus(_lang, status);
            if (result)
            {
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }

        // GET: api/v1/rest/{culture}/attribute-set-data
        [HttpGet("init/{attributeSet}")]
        public async Task<ActionResult<JObject>> Init(string attributeSet)
        {

            var cultures = FileRepository.Instance.GetFile("register.json", "data", true, "{}");
            return JObject.Parse(cultures.Content);
            //return new RepositoryResponse<JObject>()
            //{
            //    IsSucceed = true,
            //    Data = obj as JObject
            //};
            //var getAttrSet = await Mix.Cms.Lib.ViewModels.MixAttributeSets.UpdateViewModel.Repository.GetSingleModelAsync(m => m.Name == "register");
            //if (getAttrSet.IsSucceed)
            //{
            //    ElectroluxRegisterViewModel result = new ElectroluxRegisterViewModel()
            //    {
            //        Specificulture = _lang,
            //        AttributeSetId = getAttrSet.Data.Id,
            //        AttributeSetName = getAttrSet.Data.Name,
            //        Status = MixEnums.MixContentStatus.Published,
            //        Fields = getAttrSet.Data.Fields
            //    };
            //    result.ExpandView();
            //    result.Obj["code"] = ElectroluxHelper.GenerateCodeInteger(5);
            //    return Ok(result);
            //}
            //else
            //{
            //    return BadRequest(getAttrSet.Errors);
            //}
        }

        // GET api/attribute-set-data
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [HttpGet("export")]
        public async Task<ActionResult> Export()
        {
            string attributeSetName = Request.Query["attributeSetName"].ToString();
            string exportPath = $"content/exports/module/{attributeSetName}";
            var getData = await Helper.FilterByKeywordAsync<ElectroluxRegisterViewModel>(Request, _lang);

            var jData = new List<JObject>();
            if (getData.IsSucceed)
            {
                foreach (var item in getData.Data.Items)
                {
                    jData.Add(item.Obj);
                }
                var result = Helper.ExportAttributeToExcel(jData, string.Empty, exportPath, $"{attributeSetName}", null);
                return Ok(result.Data);
            }
            else
            {
                return BadRequest(getData.Errors);
            }
        }

        // POST api/attribute-set-data
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [HttpPost, HttpOptions]
        [Route("import-data/{attributeSetName}")]
        public async Task<ActionResult<RepositoryResponse<ImportViewModel>>> ImportData(string attributeSetName, [FromForm] IFormFile file)
        {
            var getAttributeSet = await Mix.Cms.Lib.ViewModels.MixAttributeSets.ReadViewModel.Repository.GetSingleModelAsync(
                    m => m.Name == attributeSetName);
            if (getAttributeSet.IsSucceed)
            {
                if (file != null)
                {
                    var result = await Helper.ImportData(_lang, getAttributeSet.Data, file);
                    return Ok(result);
                }
            }
            return new RepositoryResponse<ImportViewModel>() { Status = 501 };
        }

        // DELETE: api/v1/rest/en-us/attribute-set/portal/5
        [HttpDelete("{id}")]
        public override async Task<ActionResult<MixAttributeSetData>> Delete(string id)
        {
            var result = await DeleteAsync<DeleteViewModel>(id, true);
            if (result.IsSucceed)
            {
                return Ok(result.Data);
            }
            else
            {
                return BadRequest(result.Errors);
            }

        }
    }
}
