using Electrolux.Api.Domain;
using Electrolux.Api.Domain.ViewModels;
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
                var result = new ElectroluxPaginationModel<ElectroluxRegisterViewModel>(getData.Data);
                var fieldQueries = !string.IsNullOrEmpty(Request.Query["query"]) ? JObject.Parse(Request.Query["query"]) : new JObject();
                result.TotalGift = await ElectroluxHelper.SumGift(_lang, fieldQueries.Value<string>("status"));
                return Ok(result);
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
        
        [Authorize(AuthenticationSchemes = JwtBearerDefaults.AuthenticationScheme)]
        [HttpGet("sum-gift/{status}")]
        public async Task<ActionResult> SumGift([FromRoute] string? status = null)
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
            Dictionary<string, Type> headers = new Dictionary<string, Type> {
                { "stt", typeof(int)},
                { "id", typeof(string)},
                { "ho_va_ten", typeof(string)},
                { "so_dien_thoai", typeof(string)},
                { "cmnd", typeof(string)},
                { "hinh_cmnd", typeof(string)},
                { "hinh_cmnd_1", typeof(string)},
                { "thu_dien_tu", typeof(string)},
                { "so_hoa_don", typeof(string)},
                { "ngay_tren_hoa_don", typeof(DateTime)},
                { "ma_san_pham", typeof(string)},
                { "pnc", typeof(string)},
                { "sn", typeof(string)},
                { "gia_tri_giai_thuong", typeof(int)},
                { "hinh_hoa_don", typeof(string)},
                { "hinh_tem", typeof(string)},
                { "phuong_thuc_nhan_qua", typeof(string)},
                { "chu_tai_khoan", typeof(string)},
                { "so_tai_khoan", typeof(string)},
                { "ngan_hang", typeof(string)},
                { "chi_nhanh_ngan_hang", typeof(string)},
                { "dia_chi", typeof(string)},
                { "phuong", typeof(string)},
                { "quan", typeof(string)},
                { "thanh_pho", typeof(string)},
                { "hinh_uy_quyen", typeof(string)},
                { "code", typeof(string)},
                { "sms_status", typeof(string)},
                { "ip_address", typeof(string)},
                { "status", typeof(string)},
                { "admin", typeof(string)},
                { "admin_notes", typeof(string)},
                { "ngay_tao", typeof(string)},
                { "log", typeof(string)},
            };

            var getData = await Helper.FilterByKeywordAsync<ElectroluxRegisterViewModel>(Request, _lang);

            var jData = new List<JObject>();
            if (getData.IsSucceed)
            {
                var i = 0;
                foreach (var item in getData.Data.Items)
                {
                    i++;
                    item.Obj["stt"] = i;
                    //item.Obj["hinh_cmnd"] = $"=HYPERLINK(\"{item.Obj.Value<string>("hinh_cmnd")}\",\"Link\")";
                    //item.Obj["hinh_cmnd_1"] = $"=HYPERLINK(\"{item.Obj.Value<string>("hinh_cmnd_1")}\",\"Link\")";
                    //item.Obj["hinh_hoa_don"] = $"=HYPERLINK(\"{item.Obj.Value<string>("hinh_hoa_don")}\",\"Link\")";
                    //item.Obj["hinh_tem"] = $"=HYPERLINK(\"{item.Obj.Value<string>("hinh_tem")}\",\"Link\")";
                    //item.Obj["hinh_uy_quyen"] = $"=HYPERLINK(\"{item.Obj.Value<string>("hinh_uy_quyen")}\",\"Link\")";
                    if (DateTime.TryParse(item.Obj.Value<string>("ngay_tren_hoa_don"), out DateTime d))
                    {
                        item.Obj["ngay_tren_hoa_don"] = d.ToLocalTime();
                    }
                    else
                    {
                        item.Obj["ngay_tren_hoa_don"] = DateTime.Now;
                    }
                    item.Obj["ngay_tao"] = item.CreatedDateTime.ToLocalTime();
                    jData.Add(item.Obj);
                }
                var result = Helper.ExportAttributeToExcel(jData, string.Empty, exportPath, $"{attributeSetName}", headers: headers);
                if (result.IsSucceed)
                {
                    return Ok(result.Data);
                }
                else
                {
                    return BadRequest(result.Errors);
                }
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
