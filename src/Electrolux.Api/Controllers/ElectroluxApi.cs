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
        
        [HttpGet("search")]
        public async Task<ActionResult<List<ElectroluxRegisterViewModel>>> Search()
        {
            var queries = JObject.Parse(Request.Query["query"]);
            string phone = queries.Value<string>("so_dien_thoai");
            string receipt = queries.Value<string>("hoa_don");

            if (string.IsNullOrEmpty(phone) || phone.Length != 5 || string.IsNullOrEmpty(receipt))
            {
                return BadRequest();
            }
            var getData = await Helper.FilterByKeywordAsync<ElectroluxRegisterViewModel>(Request, _lang);
            if (getData.IsSucceed)
            {
                var result = new List<ElectroluxRegisterViewModel>();
                foreach (var item in getData.Data.Items)
                {
                    var dt = item.Obj.Value<string>("so_dien_thoai");
                    var hd = item.Obj.Value<string>("hoa_don");
                    if (dt.IndexOf(phone) == dt.Length-5 && hd == receipt)
                    {
                        result.Add(item);
                    }
                }
                return Ok(result);
            }
            else
            {
                return BadRequest(getData.Errors);
            }
        }

        [Authorize]
        [HttpPost("save-values/{dataId}")]
        public async Task<ActionResult> SaveValue([FromRoute] string dataId, [FromBody]JObject obj)
        {
            var result = await SaveValues(dataId, obj);
            if (result)
            {
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }

        private async Task<bool> SaveValues(string dataId, JObject obj)
        {
            using (var context = new MixCmsContext())
            {
                foreach (var prop in obj.Properties())
                {
                    var val = context.MixAttributeSetValue.FirstOrDefault(m => m.DataId == dataId && m.AttributeFieldName == prop.Name);
                    if (val != null)
                    {
                        val.StringValue = obj.Value<string>(prop.Name);
                    }
                }
                _ = CacheService.RemoveCacheAsync($"Mix/Cms/Lib/ViewModels/MixAttributeSetDatas/_{dataId}_{_lang}");
                await context.SaveChangesAsync();
                return true;
            }
        }

        [Authorize]
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
                await SaveValues(data.Value<string>("id"), obj);
                return Ok();
            }
            else
            {
                return BadRequest();
            }
        }

        // GET: api/v1/rest/{culture}/attribute-set-data
        [HttpGet("init/{attributeSet}")]
        public async Task<ActionResult<ElectroluxRegisterViewModel>> Init(string attributeSet)
        {
            int.TryParse(attributeSet, out int attributeSetId);
            var getAttrSet = await Mix.Cms.Lib.ViewModels.MixAttributeSets.UpdateViewModel.Repository.GetSingleModelAsync(m => m.Name == attributeSet || m.Id == attributeSetId);
            if (getAttrSet.IsSucceed)
            {
                ElectroluxRegisterViewModel result = new ElectroluxRegisterViewModel()
                {
                    Specificulture = _lang,
                    AttributeSetId = getAttrSet.Data.Id,
                    AttributeSetName = getAttrSet.Data.Name,
                    Status = MixEnums.MixContentStatus.Published,
                    Fields = getAttrSet.Data.Fields
                };
                result.ExpandView();
                result.Obj["code"] = ElectroluxHelper.GenerateCodeInteger(5);
                return Ok(result);
            }
            else
            {
                return BadRequest(getAttrSet.Errors);
            }
        }

        // GET api/attribute-set-data
        [HttpGet("export")]
        public async Task<ActionResult> Export()
        {
            string attributeSetName = Request.Query["attributeSetName"].ToString();
            string exportPath = $"content/exports/module/{attributeSetName}";
            var getData = await Helper.FilterByKeywordAsync<FormPortalViewModel>(Request, _lang);

            var jData = new List<JObject>();
            if (getData.IsSucceed)
            {
                foreach (var item in getData.Data.Items)
                {
                    jData.Add(item.Obj);
                }
                var result = Mix.Cms.Lib.ViewModels.MixAttributeSetDatas.Helper.ExportAttributeToExcel(jData, string.Empty, exportPath, $"{attributeSetName}", null);
                return Ok(result.Data);
            }
            else
            {
                return BadRequest(getData.Errors);
            }
        }

        // POST api/attribute-set-data
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme, Roles = "SuperAdmin, Admin")]
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
